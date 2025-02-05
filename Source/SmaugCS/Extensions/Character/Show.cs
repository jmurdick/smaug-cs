﻿using System;
using System.Linq;
using Library.Common;
using Library.Common.Extensions;
using SmaugCS.Common;
using SmaugCS.Constants;
using SmaugCS.Constants.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Instances;
using SmaugCS.Extensions.Player;

namespace SmaugCS.Extensions.Character;

public static class Show
{
  public static void ShowConditionTo(this CharacterInstance ch, CharacterInstance victim)
  {
    int percent = -1;
    if (victim.MaximumHealth > 0)
      percent = (int)(100.0f * (victim.CurrentHealth / (double)victim.MaximumHealth));

    ch.SendTo(
      string.Format(GetConditionPhrase(percent, victim == ch),
          victim != ch ? Macros.PERS(victim, ch) : "You")
        .CapitalizeFirst() + Environment.NewLine);
  }

  private static string GetConditionPhrase(int percent, bool isSelf)
  {
    HealthConditionTypes healthCond = HealthConditionTypes.PerfectHealth;
    foreach (HealthConditionTypes cond in EnumerationFunctions.GetAllEnumValues<HealthConditionTypes>()
               .Where(cond => percent >= cond.GetValue()))
    {
      healthCond = cond;
    }

    DescriptorAttribute attrib = healthCond.GetAttribute<DescriptorAttribute>();
    return isSelf ? attrib.Messages.First() : attrib.Messages.ToList()[1];
  }

  public static void ShowToCharacter(this CharacterInstance victim, PlayerInstance ch)
  {
    string buffer = string.Empty;

    ch.SetColor(ATTypes.AT_PERSON);
    if (!victim.IsNpc())
    {
      if (victim.Switched == null)
        ch.SendTo("&P[(Link Dead)]");
      else if (!victim.IsAffected(AffectedByTypes.Possess))
        buffer += "(Switched) ";
    }

    if (victim.IsNpc()
        && victim.IsAffected(AffectedByTypes.Possess)
        && ch.IsImmortal() && ch.Switched != null)
    {
      buffer += "(" + victim.Switched.Name + ")";
    }

    if (!victim.IsNpc() && victim.Act.IsSet((int)PlayerFlags.AwayFromKeyboard))
      buffer += PlayerFlags.AwayFromKeyboard.GetAttribute<DescriptorAttribute>().Messages.ToList()[0];

    if ((!victim.IsNpc() && victim.Act.IsSet((int)PlayerFlags.WizardInvisibility))
        || (victim.IsNpc() && victim.Act.IsSet((int)ActFlags.MobInvisibility)))
    {
      if (!victim.IsNpc())
        buffer += $"(Invis {((PlayerInstance)victim).PlayerData.WizardInvisible}) ";
      else
        buffer += $"(MobInvis {victim.MobInvisible}) ";
    }

    if (!victim.IsNpc())
    {
      PlayerInstance vict = (PlayerInstance)victim;
      if (vict.IsImmortal() && vict.Level > LevelConstants.GetLevel(ImmortalTypes.Avatar))
        ch.SendTo("&P(&WImmortal&P) ");
      // TODO fix
      //if (vict.PlayerData.Clan != null
      //    && vict.PlayerData.Flags.IsSet(PCFlags.Deadly)
      //    && !string.IsNullOrEmpty(vict.PlayerData.Clan.Badge)
      //    && (vict.PlayerData.Clan.ClanType != ClanTypes.Order
      //    || vict.PlayerData.Clan.ClanType != ClanTypes.Guild))
      //    ch.PrintfColor("%s ", vict.PlayerData.Clan.Badge);
      else if (vict.CanPKill() && vict.Level < LevelConstants.ImmortalLevel)
        ch.SendTo("&P(&wUnclanned&P) ");
    }

    ch.SetColor(ATTypes.AT_PERSON);

    buffer += GenerateBufferForAffectedBy(victim, ch);

    ch.SetColor(ATTypes.AT_PERSON);
    if ((victim.CurrentPosition == victim.CurrentDefensivePosition && !string.IsNullOrEmpty(victim.LongDescription))
        || (victim.CurrentMorph?.Morph != null && victim.CurrentMorph.Morph.Position == (int)victim.CurrentPosition))
    {
      if (victim.CurrentMorph != null)
      {
        if (!ch.IsImmortal())
        {
          if (victim.CurrentMorph.Morph != null)
            buffer += victim.CurrentMorph.Morph.LongDescription;
          else
            buffer += victim.LongDescription;
        }
        else
        {
          buffer += Macros.PERS(victim, ch);
          if (!victim.IsNpc() && !ch.Act.IsSet((int)PlayerFlags.Brief))
            buffer += ((PlayerInstance)victim).PlayerData.Title;
          buffer += ".\r\n";
        }
      }
      else
        buffer += victim.LongDescription;

      ch.SendTo(buffer);
      ch.ShowVisibleAffectsOn(victim);
      return;
    }

    if (victim.CurrentMorph?.Morph != null && !ch.IsImmortal())
      buffer += Macros.MORPHERS(victim, ch);
    else
      buffer += Macros.PERS(victim, ch);

    if (!victim.IsNpc() && !ch.Act.IsSet((int)PlayerFlags.Brief))
      buffer += ((PlayerInstance)victim).PlayerData.Title;

    TimerData timer = ch.GetTimer(TimerTypes.DoFunction);
    if (timer != null)
    {
      object[] attributes = timer.Action.Value.Method.GetCustomAttributes(typeof(DescriptorAttribute), false);
      DescriptorAttribute attrib =
        (DescriptorAttribute)attributes.FirstOrDefault(x => x is DescriptorAttribute);
      buffer += attrib == null ? " is looking rather lost." : attrib.Messages.First();
    }
    else
    {
      buffer += GenerateBufferDescriptorFromVictimPosition(victim, ch);
    }

    buffer += "\r\n";
    buffer = buffer.CapitalizeFirst();
    ch.SendTo(buffer);
    ch.ShowVisibleAffectsOn(victim);
  }

  private static string GenerateBufferForAffectedBy(CharacterInstance victim, PlayerInstance ch)
  {
    if (victim.IsAffected(AffectedByTypes.Invisible))
      return AffectedByTypes.Invisible.GetAttribute<DescriptorAttribute>().Messages.First();
    if (victim.IsAffected(AffectedByTypes.Hide))
      return AffectedByTypes.Hide.GetAttribute<DescriptorAttribute>().Messages.First();
    if (victim.IsAffected(AffectedByTypes.PassDoor))
      return AffectedByTypes.PassDoor.GetAttribute<DescriptorAttribute>().Messages.First();
    if (victim.IsAffected(AffectedByTypes.FaerieFire))
      return AffectedByTypes.FaerieFire.GetAttribute<DescriptorAttribute>().Messages.First();
    if ((ch.IsAffected(AffectedByTypes.DetectEvil) && victim.IsEvil())
        || ch.CurrentClass == ClassTypes.Paladin)
      return ClassTypes.Paladin.GetAttribute<DescriptorAttribute>().Messages.First();
    if (victim.IsNeutral() && ch.CurrentClass == ClassTypes.Paladin)
      return ClassTypes.Paladin.GetAttribute<DescriptorAttribute>().Messages.ToList()[1];
    if (victim.IsGood() && ch.CurrentClass == ClassTypes.Paladin)
      return ClassTypes.Paladin.GetAttribute<DescriptorAttribute>().Messages.ToList()[2];

    if (victim.IsAffected(AffectedByTypes.Berserk))
      return AffectedByTypes.Berserk.GetAttribute<DescriptorAttribute>().Messages.First();
    if (!victim.IsNpc() && victim.Act.IsSet((int)PlayerFlags.Attacker))
      return PlayerFlags.Attacker.GetAttribute<DescriptorAttribute>().Messages.First();
    if (!victim.IsNpc() && victim.Act.IsSet((int)PlayerFlags.Killer))
      return PlayerFlags.Killer.GetAttribute<DescriptorAttribute>().Messages.First();
    if (!victim.IsNpc() && victim.Act.IsSet((int)PlayerFlags.Thief))
      return PlayerFlags.Thief.GetAttribute<DescriptorAttribute>().Messages.First();
    if (!victim.IsNpc() && victim.Act.IsSet((int)PlayerFlags.Litterbug))
      return PlayerFlags.Litterbug.GetAttribute<DescriptorAttribute>().Messages.First();
    if (victim.IsNpc() && ch.IsImmortal() && victim.Act.IsSet((int)ActFlags.Prototype))
      return ActFlags.Prototype.GetAttribute<DescriptorAttribute>().Messages.First();
    if (victim.IsNpc() && ch.CurrentMount != null
                       && ch.CurrentMount == victim && ch.CurrentRoom == ch.CurrentMount.CurrentRoom)
      return "(Mount) ";
    if (victim.Switched != null &&
        ((PlayerInstance)victim.Switched).Descriptor.ConnectionStatus == ConnectionTypes.Editing)
      return ConnectionTypes.Editing.GetAttribute<DescriptorAttribute>().Messages.First();
    return victim.CurrentMorph != null ? "(Morphed) " : string.Empty;
  }

  private static string GenerateBufferDescriptorFromVictimPosition(CharacterInstance victim, CharacterInstance ch)
  {
    PositionTypes pos = victim.CurrentPosition;
    DescriptorAttribute attrib = pos.GetAttribute<DescriptorAttribute>();

    return pos switch
    {
      PositionTypes.Sleeping => GetSleepingDescriptor(ch, victim, attrib),
      PositionTypes.Sitting => GetSittingDescriptor(ch, victim, attrib),
      PositionTypes.Standing => GetStandingDescriptor(ch, victim, attrib),
      PositionTypes.Mounted => GetMountedDescriptor(ch, victim, attrib),
      PositionTypes.Fighting or PositionTypes.Evasive or PositionTypes.Defensive or PositionTypes.Berserk
        or PositionTypes.Aggressive => GetFightingDescriptor(ch, victim, attrib),
      _ => attrib.Messages.First()
    };
  }

  private static string GetFightingDescriptor(CharacterInstance ch, CharacterInstance victim,
    DescriptorAttribute attrib)
  {
    if (victim.CurrentFighting != null)
      return attrib.Messages.First();

    if (victim.GetMyTarget() == ch)
      return attrib.Messages.ToList()[2];

    return victim.CurrentRoom == victim.CurrentFighting.Who.CurrentRoom
      ? string.Format(attrib.Messages.ToList()[2], Macros.PERS(victim.CurrentFighting.Who, ch))
      : attrib.Messages.ToList()[3];
  }

  private static string GetMountedDescriptor(CharacterInstance ch, CharacterInstance victim,
    DescriptorAttribute attrib)
  {
    if (victim.CurrentMount == null)
      return attrib.Messages.First();

    if (victim.CurrentMount == ch)
      return attrib.Messages.ToList()[1];

    return victim.CurrentRoom == victim.CurrentMount.CurrentRoom
      ? string.Format(attrib.Messages.ToList()[2], Macros.PERS(victim.CurrentMount, ch))
      : attrib.Messages.ToList()[3];
  }

  private static string GetStandingDescriptor(CharacterInstance ch, CharacterInstance victim,
    DescriptorAttribute attrib)
  {
    if (victim.IsImmortal())
      return attrib.Messages.First();

    if (victim.CurrentRoom.SectorType is SectorTypes.Underwater or SectorTypes.OceanFloor
        && !victim.IsAffected(AffectedByTypes.AquaBreath)
        && !victim.IsNpc())
      return attrib.Messages.ToList()[1];

    if (victim.CurrentRoom.SectorType is SectorTypes.Underwater or SectorTypes.OceanFloor)
      return attrib.Messages.ToList()[2];

    if (victim.IsAffected(AffectedByTypes.Floating)
        || victim.IsAffected(AffectedByTypes.Flying))
      return attrib.Messages.ToList()[3];

    return attrib.Messages.ToList()[4];
  }

  private static string GetSittingDescriptor(CharacterInstance ch, CharacterInstance victim,
    DescriptorAttribute attrib)
  {
    return ch.CurrentPosition switch
    {
      PositionTypes.Sitting => attrib.Messages.First(),
      PositionTypes.Resting => attrib.Messages.ToList()[1],
      _ => attrib.Messages.ToList()[2]
    };
  }

  private static string GetSleepingDescriptor(CharacterInstance ch, CharacterInstance victim,
    DescriptorAttribute attrib)
  {
    return ch.CurrentPosition is PositionTypes.Sitting or PositionTypes.Resting 
      ? attrib.Messages.First() : attrib.Messages.ToList()[1];
  }

  public static void ShowRaceOf(this CharacterInstance ch, CharacterInstance victim)
  {
    if (!victim.IsNpc() && victim != ch)
      ch.Printf("%s is %d'%d\" and weighs %d pounds.\r\n",
        Macros.PERS(victim, ch), victim.Height / 12, victim.Height % 12, victim.Weight);
    else if (!victim.IsNpc() && victim == ch)
      ch.Printf("You are %d'%d\" and weight %d pounds.\r\n", victim.Height / 12, victim.Height % 12,
        victim.Weight);
  }
}
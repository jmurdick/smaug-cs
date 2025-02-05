﻿using Library.Common.Extensions;
using SmaugCS.Common;
using SmaugCS.Constants;
using SmaugCS.Constants.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Exceptions;
using SmaugCS.Data.Instances;
using SmaugCS.Repository;
using SmaugCS.Weather;
using SmaugCS.Weather.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SmaugCS.Extensions;
using SmaugCS.Extensions.Character;
using SmaugCS.Extensions.Objects;
using EnumerationExtensions = Library.Common.Extensions.EnumerationExtensions;

namespace SmaugCS;

public static class act_info
{
  public static void look_sky(CharacterInstance ch)
  {
    WeatherCell cell = Program.WeatherManager.GetWeather(ch.CurrentRoom.Area);

    ch.SendToPager("You gaze up towards the heavens and see:\r\n");

    if (WeatherCell.GetCloudCover(cell.CloudCover) == CloudCoverTypes.Moderately)
    {
      ch.SendTo("There are too many clouds in the sky so you cannot see anything else.");
      return;
    }

    int sunpos = Program.MAP_WIDTH * (24 - Program.GameManager.GameTime.Hour) / 24;
    int moonpos = (sunpos + Program.GameManager.GameTime.Day * Program.MAP_WIDTH / Program.NUM_DAYS) %
                  Program.MAP_WIDTH;
    int moonphase = ((Program.MAP_WIDTH + moonpos - sunpos) % Program.MAP_WIDTH + Program.MAP_WIDTH / 16) * 8 /
                    Program.MAP_WIDTH;
    if (moonphase > 4)
      moonphase -= 8;
    int starpos = (sunpos + Program.MAP_WIDTH * Program.GameManager.GameTime.Month / Program.NUM_MONTHS) %
                  Program.MAP_WIDTH;

    StringBuilder sb = new();

    for (int line = 0; line < Program.MAP_HEIGHT; line++)
    {
      if (Program.GameManager.GameTime.Hour >= 6 && Program.GameManager.GameTime.Hour <= 18
                                                 && (line < 3 || line >= 6))
        continue;

      sb.Append(" ");

      for (int i = 0; i <= Program.MAP_WIDTH; i++)
      {
        if (Program.GameManager.GameTime.Hour >= 6 && Program.GameManager.GameTime.Hour <= 18
                                                   && moonpos >= Program.MAP_WIDTH / 4 - 2
                                                   && moonpos <= 3 * Program.MAP_WIDTH / 4 + 2
                                                   && i >= moonpos - 2 && i <= moonpos + 2
                                                   && ((sunpos == moonpos && Program.GameManager.GameTime.Hour == 12) ||
                                                       moonphase != 0)
                                                   && Program.WeatherManager.Weather.MoonMap.ToList()[line - 3]
                                                     .ToCharArray()[i + 2 - moonpos] == '@')
        {
          if ((moonphase < 0 && i - 2 - moonpos >= moonphase)
              || (moonphase > 0 && i + 2 - moonpos <= moonphase))
            sb.Append("&W@");
          else
            sb.Append(" ");
        }
        else if (line >= 3 && line < 6
                           && moonpos >= Program.MAP_WIDTH / 4 - 2 && moonpos <= 3 * Program.MAP_WIDTH / 4 + 2
                           && i >= moonpos - 2 && i <= moonpos + 2
                           && Program.WeatherManager.Weather.MoonMap.ToList()[line - 3].ToCharArray()
                             [i + 2 - moonpos] == '@')
        {
          if ((moonphase < 0 && i - 2 - moonpos >= moonphase)
              || (moonphase > 0 && i + 2 - moonpos <= moonphase))
            sb.Append("&W@");
          else
            sb.Append(" ");
        }
        else
        {
          if (Program.GameManager.GameTime.Hour >= 6 && Program.GameManager.GameTime.Hour <= 18)
          {
            if (i >= sunpos - 2 && i <= sunpos + 2)
              sb.AppendFormat("&Y{0}",
                Program.WeatherManager.Weather.SunMap.ToList()[line - 3].ToCharArray()[
                  i + 2 - sunpos]);
            else
              sb.Append(" ");
          }
          else
          {
            char c =
              Program.WeatherManager.Weather.StarMap.ToList()[line].ToCharArray()[
                (Program.MAP_WIDTH + 1 - starpos) % Program.MAP_WIDTH];
            sb.Append(LookupConstants.StarCharacterMap.ContainsKey(c)
              ? LookupConstants.StarCharacterMap[c]
              : " ");
          }
        }
      }

      sb.Append(Environment.NewLine);
      ch.SendToPager(sb.ToString());
    }
  }


  public static string hallucinated_object(int ms, bool fShort)
  {
    if (ms == int.MaxValue) throw new ArgumentOutOfRangeException();

    int temp = ms + 10;
    if (temp == int.MaxValue) throw new ArgumentOutOfRangeException();

    int sms = (temp / 5).GetNumberThatIsBetween(1, 20);

    return fShort
      ? Program.LookupManager.GetLookup("HallucinatedShortNames",
        SmaugRandom.Between(
          6 - (sms / 2).GetNumberThatIsBetween(1, 5), sms) - 1)
      : Program.LookupManager.GetLookup("HallucinatedLongNames",
        SmaugRandom.Between(
          6 - (sms / 2).GetNumberThatIsBetween(1, 5), sms) - 1);
  }

  public static void show_list_to_char(List<ObjectInstance> list, PlayerInstance ch, bool fShort, bool fShowNothing)
  {
    if (ch.Descriptor == null)
      return;

    if (list == null)
    {
      if (fShowNothing)
      {
        if (ch.Act.IsSet((int)PlayerFlags.Combine))
          ch.SendTo("     ");
        ch.SetColor(ATTypes.AT_OBJECT);
        ch.SendTo("Nothing.");
      }

      return;
    }

    int count = list.Count;

    int ms = (ch.MentalState > 0 ? ch.MentalState : 1) *
             (ch.PlayerData.GetConditionValue(ConditionTypes.Drunk) > 0
               ? ch.PlayerData.GetConditionValue(ConditionTypes.Drunk) / 12
               : 1);

    int offcount;
    if (Math.Abs(ms) > 40)
    {
      offcount = (count * ms / 100).GetNumberThatIsBetween(-count, count * 2);
      if (offcount < 0)
        offcount += SmaugRandom.Between(0, Math.Abs(offcount));
      else if (offcount > 0)
        offcount -= SmaugRandom.Between(0, offcount);
    }
    else
      offcount = 0;

    if (count + offcount <= 0)
    {
      if (fShowNothing)
      {
        if (ch.Act.IsSet((int)PlayerFlags.Combine))
          ch.SendTo("     ");
        ch.SetColor(ATTypes.AT_OBJECT);
        ch.SendTo("Nothing.");
      }

      return;
    }

    int tmp = offcount > 0 ? offcount : 0;
    int cnt = 0;

    int size = count + (offcount > 0 ? offcount : 0);
    string[] prgpstrShow = new string[size];
    int[] prgnShow = new int[size];
    int[] pitShow = new int[size];
    int nShow = 0;

    foreach (ObjectInstance obj in list)
    {
      if (offcount < 0 && ++cnt > count + offcount)
        break;

      if (tmp > 0 && SmaugRandom.Bits(1) == 0)
      {
        prgpstrShow[nShow] = hallucinated_object(ms, fShort);
        prgnShow[nShow] = 1;
        pitShow[nShow] = SmaugRandom.Between((int)ItemTypes.Light, (int)ItemTypes.Book);
        nShow++;
        --tmp;
      }

      if (obj.WearLocation == WearLocations.None
          && ch.CanSee(obj)
          && (obj.ItemType != ItemTypes.Trap
              || ch.IsAffected(AffectedByTypes.DetectInvisibility)))
      {
        string pstrShow = obj.GetFormattedDescription(ch, fShort, Program.LookupManager);
        bool fCombine = false;

        if (ch.Act.IsSet((int)PlayerFlags.Combine))
        {
          for (int i = nShow - 1; i >= 0; i--)
          {
            if (prgpstrShow[i] == pstrShow)
            {
              prgnShow[i] += obj.Count;
              fCombine = true;
              break;
            }
          }
        }

        pitShow[nShow] = (int)obj.ItemType;

        if (!fCombine)
        {
          prgpstrShow[nShow] = pstrShow;
          prgnShow[nShow] = obj.Count;
          nShow++;
        }
      }
    }

    if (tmp > 0)
    {
      for (int i = 0; i < tmp; i++)
      {
        prgpstrShow[nShow] = hallucinated_object(ms, fShort);
        prgnShow[nShow] = 1;
        pitShow[nShow] = SmaugRandom.Between((int)ItemTypes.Light, (int)ItemTypes.Book);
        nShow++;
      }
    }

    for (int i = 0; i < nShow; i++)
    {
      SetCharacterColorByItemType(ch, pitShow, i);

      if (fShowNothing)
        ch.SendTo("     ");
      ch.SendTo(prgpstrShow[i]);

      if (prgnShow[i] != 1)
        ch.Printf(" (%d)", prgnShow[i]);

      ch.SendTo("\r\n");
    }

    if (fShowNothing && nShow == 0)
    {
      if (ch.Act.IsSet((int)PlayerFlags.Combine))
        ch.SendTo("     ");
      ch.SetColor(ATTypes.AT_OBJECT);
      ch.SendTo("Nothing.");
    }
  }

  private static void SetCharacterColorByItemType(CharacterInstance ch, IList<int> pitShow, int i)
  {
    ItemTypes itemType = EnumerationExtensions.GetEnum<ItemTypes>(pitShow[i]);
    CharacterColorAttribute attrib = itemType.GetAttribute<CharacterColorAttribute>();
    ch.SetColor(attrib?.ATType ?? ATTypes.AT_OBJECT);
  }

  public static void show_char_to_char_1(CharacterInstance victim, PlayerInstance ch)
  {
    if (victim.CanSee(ch) && !ch.IsNpc()
                          && !ch.Act.IsSet((int)PlayerFlags.WizardInvisibility))
    {
      comm.act(ATTypes.AT_ACTION, "$n looks at you.", ch, null, victim, ToTypes.Victim);
      comm.act(ATTypes.AT_ACTION, victim != ch ? "$n looks at $N." : "$n looks at $mself.", ch, null, victim,
        ToTypes.NotVictim);
    }

    if (!string.IsNullOrEmpty(victim.Description))
    {
      ch.SendTo(victim.CurrentMorph?.Morph != null
        ? victim.CurrentMorph.Morph.Description
        : victim.Description);
    }
    else
    {
      if (victim.CurrentMorph?.Morph != null)
        ch.SendTo(victim.CurrentMorph.Morph.Description);
      else if (victim.IsNpc())
        comm.act(ATTypes.AT_PLAIN, "You see nothing special about $M.", ch, null, victim, ToTypes.Character);
      else if (ch != victim)
        comm.act(ATTypes.AT_PLAIN, "$E isn't much to look at...", ch, null, victim, ToTypes.Character);
      else
        comm.act(ATTypes.AT_PLAIN, "You're not much to look at...", ch, null, null, ToTypes.Character);
    }

    ch.ShowRaceOf(victim);
    ch.ShowConditionTo(victim);

    bool found = false;
    for (int i = 0; i < GameConstants.MaximumWearLocations; i++)
    {
      WearLocations wearLoc = EnumerationExtensions.GetEnum<WearLocations>(i);
      ObjectInstance obj = victim.GetEquippedItem(wearLoc);
      if (obj != null && ch.CanSee(obj))
      {
        if (!found)
        {
          ch.SendTo("\r\n");
          if (victim != ch)
            comm.act(ATTypes.AT_PLAIN, "$n is using:", ch, null, victim, ToTypes.Character);
          else
            comm.act(ATTypes.AT_PLAIN, "You are using:", ch, null, null, ToTypes.Character);
          found = true;
        }

        if (!victim.IsNpc())
        {
          RaceData race = Program.RepositoryManager.GetRace(victim.CurrentRace);
          ch.SendTo(race.WhereNames.ToList()[i]);
        }
        else
          ch.SendTo(Program.LookupManager.GetLookup("WhereNames", i));

        ch.SendTo(obj.GetFormattedDescription(ch, true, Program.LookupManager));
        ch.SendTo("\r\n");
      }
    }

    if (ch.IsNpc() || victim == ch)
      return;

    if (ch.IsImmortal())
    {
      if (victim.IsNpc())
        ch.Printf("\r\nMobile #%d '%s' ", ((MobileInstance)victim).MobIndex.Id, victim.Name);
      else
        ch.Printf("\r\n%s ", victim.Name);

      ch.Printf("is a level %d %s %s.\r\n", victim.Level,
        Program.RepositoryManager.GetRace(victim.CurrentRace).Name,
        Program.RepositoryManager.GetClass(victim.CurrentClass).Name);
    }

    SkillData skill = Program.RepositoryManager.GetEntity<SkillData>("peek");
    if (skill == null)
      throw new ObjectNotFoundException("Skill 'peek' not found");

    if (SmaugRandom.D100() < Macros.LEARNED(ch, (int)skill.Id))
    {
      ch.Printf("\r\nYou peek at %s inventory:\r\n", victim.Gender.PossessivePronoun());
      show_list_to_char(victim.Carrying.ToList(), ch, true, true);
      skill.LearnFromSuccess(ch);
    }
    else if (ch.PlayerData.GetSkillMastery(skill.Id) > skill.GetMasteryLevel(ch))
      skill.LearnFromFailure(ch);
  }

  public static void show_char_to_char(IEnumerable<CharacterInstance> list, PlayerInstance ch)
  {
    foreach (CharacterInstance rch in list.Where(x => x != ch))
    {
      if (ch.CanSee(rch))
        rch.ShowToCharacter(ch);
      else if (ch.CurrentRoom.IsDark() && ch.IsAffected(AffectedByTypes.Infrared))
      {
        ch.SetColor(ATTypes.AT_BLOOD);
        ch.SendTo("The red form of a living creature is here.");
      }
    }
  }

  private static readonly Dictionary<string, int> StringToDoorDirection = new()
  {
    { "n;north", 0 },
    { "e;east", 1 },
    { "s;south", 2 },
    { "w;west", 3 },
    { "u;up", 4 },
    { "d;down", 5 },
    { "ne;northeast", 6 },
    { "nw;northwest", 7 },
    { "se;southeast", 8 },
    { "sw;southwest", 9 }
  };

  /// <summary>
  /// Returns classical DIKU door direction based on text
  /// </summary>
  /// <param name="arg"></param>
  /// <returns></returns>
  public static int get_door(string arg)
  {
    foreach (string args in StringToDoorDirection.Keys)
    {
      string[] words = args.Split(';');
      if (words.Contains(arg.ToLower()))
        return StringToDoorDirection[args];
    }

    return -1;
  }

  public static void print_compass(CharacterInstance ch)
  {
    List<int> exitInfo = new() { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    List<string> exitColors = new() { "&w", "&Y", "&C", "&b", "&w", "&R" };

    foreach (ExitData exit in ch.CurrentRoom.Exits)
    {
      if (exit.Flags.IsSet((int)ExitFlags.Hidden)
          || (exit.Flags.IsSet((int)ExitFlags.Secret)
              && exit.Flags.IsSet((int)ExitFlags.Closed)))
        continue;

      if (exit.Flags.IsSet((int)ExitFlags.Window))
        exitInfo[(int)exit.Direction] = 2;
      else if (exit.Flags.IsSet((int)ExitFlags.Secret))
        exitInfo[(int)exit.Direction] = 3;
      else if (exit.Flags.IsSet((int)ExitFlags.Closed))
        exitInfo[(int)exit.Direction] = 4;
      else if (exit.Flags.IsSet((int)ExitFlags.Locked))
        exitInfo[(int)exit.Direction] = 5;
      else
        exitInfo[(int)exit.Direction] = 1;
    }

    ch.SetColor(ATTypes.AT_RMNAME);
    ch.PrintfColor("\r\n%-50s         %s%s    %s%s    %s%s\r\n",
      ch.CurrentRoom.Name, exitColors[exitInfo[(int)DirectionTypes.Northwest]],
      exitInfo[(int)DirectionTypes.Northwest] > 0 ? "NW" : "- ",
      exitColors[exitInfo[(int)DirectionTypes.North]],
      exitInfo[(int)DirectionTypes.North] > 0 ? "N" : "-",
      exitColors[exitInfo[(int)DirectionTypes.Northeast]],
      exitInfo[(int)DirectionTypes.Northeast] > 0 ? "NE" : " -");

    if (ch.IsImmortal() && ch.Act.IsSet((int)PlayerFlags.RoomVNum))
      ch.PrintfColor("&w-<---- &YVnum: %6d &w----------------------------->-        ", ch.CurrentRoom.Id);
    else
      ch.SendTo("&w-<----------------------------------------------->-        ");

    ch.PrintfColor("%s%s&w<-%s%s&w-&W(*)&w-%s%s&w->%s%s\r\n",
      exitColors[exitInfo[(int)DirectionTypes.West]],
      exitInfo[(int)DirectionTypes.West] > 0 ? "W" : "-",
      exitColors[exitInfo[(int)DirectionTypes.Up]],
      exitInfo[(int)DirectionTypes.Up] > 0 ? "U" : "-",
      exitColors[exitInfo[(int)DirectionTypes.Down]],
      exitInfo[(int)DirectionTypes.Down] > 0 ? "D" : "-",
      exitColors[exitInfo[(int)DirectionTypes.East]],
      exitInfo[(int)DirectionTypes.East] > 0 ? "E" : "-");
    ch.PrintfColor("                                                           %s%s    %s%s    %s%s\r\n\r\n",
      exitColors[exitInfo[(int)DirectionTypes.Southwest]],
      exitInfo[(int)DirectionTypes.Southwest] > 0 ? "SW" : "- ",
      exitColors[exitInfo[(int)DirectionTypes.South]],
      exitInfo[(int)DirectionTypes.South] > 0 ? "S" : "-",
      exitColors[exitInfo[(int)DirectionTypes.Southeast]],
      exitInfo[(int)DirectionTypes.Southeast] > 0 ? "SE" : " -");
  }

  public static string roomdesc(CharacterInstance ch)
  {
    string buffer = string.Empty;

    if (!ch.Act.IsSet((int)PlayerFlags.Brief))
      if (!string.IsNullOrEmpty(ch.CurrentRoom.Description))
        buffer += ch.CurrentRoom.Description;

    if (string.IsNullOrEmpty(buffer))
      buffer += "(Not Set)";

    return buffer;
  }

  public static HelpData get_help(CharacterInstance ch, string argument)
  {
    string arg = string.Empty;

    if (string.IsNullOrEmpty(argument))
      arg = "summary";

    int lev = 0;
    if (arg[0].IsDigit() && !arg.IsNumber())
    {
      // TODO first part is a number
      // TODO strip it and update arg with the remainder
    }
    else
      lev = -2;


    string argall = string.Empty;
    // TODO

    return db.HELPS
      .Where(help => help.Level <= ch.Trust)
      .Where(help => lev == -2 || help.Level == lev)
      .FirstOrDefault(help => argall.IsAnyEqual(help.Keyword));
  }

  // TODO Rewrite this whogr stuff as its clunky and uses linked lists which we have no need of
  /*
  public static whogr_s find_whogr(DescriptorData d, List<whogr_s> list)
  {
      // TODO
      return null;
  }

  public static void indent_whogr(CharacterInstance looker, List<whogr_s> list, int ilev)
  {
      foreach (whogr_s whogr in list)
      {
          if (whogr.follower != null)
          {
              int nlev = ilev;
              CharacterInstance wch = whogr.d.Original ?? whogr.d.Character;

              if (handler.can_see(looker, wch) && !Macros.IS_IMMORTAL(wch))
                  nlev += 3;
              indent_whogr(looker, )
          }
      }
  }

  public static void create_whogr(CharacterInstance looker)
  {
      List<whogr_s> whogrList = new List<whogr_s>();
      whogr_s whogr, whogr_s, whogr_t;

      int dc = 0;
      int wc = 0;

      foreach (DescriptorData d in db.DESCRIPTORS
          .Where(d => d.ConnectionStatus == ConnectionTypes.Playing
              || d.ConnectionStatus == ConnectionTypes.Editing))
      {
          ++dc;
          CharacterInstance wch = d.Original ?? d.Character;
          if (wch.Leader == null || wch.Leader == wch || wch.Leader.Descriptor == null
              || Macros.IS_NPC(wch.Leader) || Macros.IS_IMMORTAL(wch)
              || Macros.IS_IMMORTAL(wch.Leader))
          {
              whogr = new whogr_s();
              whogrList.Add(whogr);
              whogr.d = d;
              whogr.indent = 0;
              ++wc;
          }
      }

      while (wc < dc)
      {
          foreach (DescriptorData d in db.DESCRIPTORS
              .Where(d => d.ConnectionStatus == ConnectionTypes.Playing
                  || d.ConnectionStatus == ConnectionTypes.Editing))
          {
              if (find_whogr(d, whogrList) != null)
                  continue;

              CharacterInstance wch = d.Original ?? d.Character;
              whogr_t = find_whogr(wch.Leader.Descriptor, whogrList);
              if (wch.Leader != null && wch.Leader != wch &&
                  wch.Leader.Descriptor != null && !Macros.IS_NPC(wch.Leader)
                  && !Macros.IS_IMMORTAL(wch) && !Macros.IS_IMMORTAL(wch.Leader)
                  && whogr_t != null)
              {
                  whogr = new whogr_s();
                  whogrList.Add(whogr);
                  whogr.d = d;
                  whogr.indent = 0;
                  ++wc;
              }
          }
      }

      indent_whogr(looker, whogrList, 0);
  }*/
}
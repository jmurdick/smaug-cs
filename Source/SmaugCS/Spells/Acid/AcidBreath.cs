﻿using System.Linq;
using SmaugCS.Common;
using SmaugCS.Constants.Enums;
using SmaugCS.Data.Instances;
using SmaugCS.Extensions;
using SmaugCS.Extensions.Character;
using SmaugCS.Extensions.Objects;

namespace SmaugCS.Spells.Acid;

public static class AcidBreath
{
  public static ReturnTypes spell_acid_breath(int sn, int level, CharacterInstance ch, object vo)
  {
    CharacterInstance victim = (CharacterInstance)vo;

    int chance;
    checked
    {
      chance = 2 * level;
    }

    if (ch.Chance(chance) && !victim.SavingThrows.CheckSaveVsBreath(level, victim))
    {
      foreach (ObjectInstance obj in victim.Carrying.Where(obj => SmaugRandom.Bits(2) == 0))
      {
        switch (obj.ItemType)
        {
          case ItemTypes.Armor:
            CheckDamageArmor(obj, victim);
            break;
          case ItemTypes.Container:
            CheckDamageContainer(obj, victim);
            break;
        }
      }
    }

    int hpChange = 10.GetHighestOfTwoNumbers(ch.CurrentHealth);
    int damage = SmaugRandom.Between(hpChange / 16 + 1, hpChange / 8);

    if (victim.SavingThrows.CheckSaveVsBreath(level, victim))
      damage /= 2;
    return ch.CauseDamageTo(victim, damage, sn);
  }

  private static void CheckDamageContainer(ObjectInstance obj, CharacterInstance victim)
  {
    obj.Split();
    comm.act(ATTypes.AT_DAMAGE, "$p fumes and dissolves!", victim, obj, null, ToTypes.Character);
    comm.act(ATTypes.AT_OBJECT, "The contents of $p held by $N spill onto the ground.", victim, obj, victim,
      ToTypes.Room);
    comm.act(ATTypes.AT_OBJECT, "The contents of $p spill out onto the ground!", victim, obj, null, ToTypes.Character);
    obj.Empty(null, victim.CurrentRoom);
    obj.Extract();
  }

  private static void CheckDamageArmor(ObjectInstance obj, CharacterInstance victim)
  {
    if (obj.Value.ToList()[0] <= 0) return;

    obj.Split();
    comm.act(ATTypes.AT_DAMAGE, "$p is pitted and etched!", victim, obj, null, ToTypes.Character);

    WearLocations wearLoc = obj.WearLocation;
    if (wearLoc != WearLocations.None)
      victim.ArmorClass += obj.ApplyArmorClass;
    obj.Value.ToList()[0] -= 1;
    obj.Cost = 0;
    if (wearLoc != WearLocations.None)
      victim.ArmorClass -= obj.ApplyArmorClass;
  }
}
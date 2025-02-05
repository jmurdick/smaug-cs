﻿using SmaugCS.Common;
using SmaugCS.Data;
using SmaugCS.Data.Instances;
using SmaugCS.Repository;
using System;
using System.Collections.Generic;
using SmaugCS.SpecFuns.Breaths;
using SmaugCS.SpecFuns.Casting;
using SmaugCS.SpecFuns.Professions;

namespace SmaugCS.SpecFuns;

public sealed class SpecFunHandler(IRepositoryManager dbManager) : ISpecFunHandler
{
  private static readonly Dictionary<string, Func<MobileInstance, IManager, bool>> SpecialFuncLookupTable =
    new()
    {
      { "spec_breath_any", BreathAny.Execute },
      { "spec_breath_acid", BreathAcid.Execute },
      { "spec_breath_fire", BreathFire.Execute },
      { "spec_breath_frost", BreathFrost.Execute },
      { "spec_breath_gas", BreathGas.Execute },
      { "spec_breath_lightning", BreathLightning.Execute },
      { "spec_cast_adept", CastAdept.Execute },
      { "spec_cast_cleric", CastCleric.Execute },
      { "spec_cast_mage", CastMage.Execute },
      { "spec_cast_undead", CastUndead.Execute },
      { "spec_executioner", Executioner.Execute },
      { "spec_fido", Fido.Execute },
      { "spec_guard", Guard.Execute },
      { "spec_janitor", Janitor.Execute },
      { "spec_mayor", Mayor.Execute },
      { "spec_poison", Poison.Execute },
      { "spec_thief", Thief.Execute },
      { "spec_wanderer", Wanderer.Execute }
    };

  public static Func<MobileInstance, IManager, bool> GetSpecFunReference(string name)
  {
    return SpecialFuncLookupTable.ContainsKey(name.ToLower())
      ? SpecialFuncLookupTable[name.ToLower()]
      : null;
  }

  public bool IsValidSpecFun(string name)
  {
    return dbManager.GetEntity<SpecialFunction>(name) != null &&
           SpecialFuncLookupTable.ContainsKey(name.ToLower());
  }

  public SpecialFunction GetSpecFun(string name)
  {
    return IsValidSpecFun(name)
      ? dbManager.GetEntity<SpecialFunction>(name)
      : null;
  }

  public SkillData PickSpell(Dictionary<int, SpecFunSpell> lookupTable, int characterLevel)
  {
    int minLevel = 0;
    string spellName = string.Empty;

    while (minLevel < characterLevel)
    {
      lookupTable.TryGetValue(SmaugRandom.Bits(4), out SpecFunSpell value);

      minLevel = value?.Level ?? lookupTable[-1].Level;
      spellName = value != null ? value.Spell : lookupTable[-1].Spell;
    }

    return dbManager.GetEntity<SkillData>(spellName);
  }
}
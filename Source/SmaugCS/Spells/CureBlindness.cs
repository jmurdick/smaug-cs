﻿using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Instances;
using SmaugCS.Repository;
using System.Diagnostics.CodeAnalysis;
using SmaugCS.Extensions.Character;
using SmaugCS.Helpers;

namespace SmaugCS.Spells;

public static class CureBlindness
{
  [SuppressMessage("Microsoft.Usage", "CA1801:ReviewUnusedParameters", MessageId = "level")]
  public static ReturnTypes spell_cure_blindness(int sn, int level, CharacterInstance ch, object vo)
  {
    CharacterInstance victim = (CharacterInstance)vo;
    SkillData skill = Program.RepositoryManager.GetEntity<SkillData>(sn);

    ch.SetColor(ATTypes.AT_MAGIC);

    if (CheckFunctions.CheckIfTrueCasting(victim.IsImmune(ResistanceTypes.Magic), skill, ch,
          CastingFunctionType.Immune, victim)) return ReturnTypes.SpellFailed;

    if (CheckFunctions.CheckIfTrue(ch, ch.IsAffected(AffectedByTypes.Blind),
          ch != victim
            ? "You work your cure, but it has no apparent effect."
            : "You don't seem to be blind.")) return ReturnTypes.SpellFailed;

    victim.StripAffects((int)AffectedByTypes.Blind);
    victim.SetColor(ATTypes.AT_MAGIC);
    victim.SendTo("Your vision returns!");
    if (ch != victim)
      ch.SendTo("You work your cure, restoring vision.");
    return ReturnTypes.None;
  }
}
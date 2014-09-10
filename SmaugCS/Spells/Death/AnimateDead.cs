﻿using System.Linq;
using SmaugCS.Common;
using SmaugCS.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Exceptions;
using SmaugCS.Data.Instances;
using SmaugCS.Data.Templates;
using SmaugCS.Extensions;
using SmaugCS.Helpers;
using SmaugCS.Managers;

namespace SmaugCS.Spells
{
    public static class AnimateDead
    {
        public static ReturnTypes spell_animate_dead(int sn, int level, CharacterInstance ch, object vo)
        {
            ObjectInstance corpse =
                ch.CurrentRoom.Contents.FirstOrDefault(x => x.ItemType == ItemTypes.NpcCorpse && x.Cost != -5);
            if (CheckFunctions.CheckIfNullObject(ch, corpse, "You cannot find a suitable corpse here"))
                return ReturnTypes.SpellFailed;

            SkillData skill = DatabaseManager.Instance.GetEntity<SkillData>(sn);

            MobTemplate template = DatabaseManager.Instance.MOBILETEMPLATES.Get(VnumConstants.MOB_VNUM_ANIMATED_CORPSE);
            if (template == null)
                throw new ObjectNotFoundException("Animated Corpse VNUM template was not found.");

            // TODO Get the template using the corpse cost?  huh?

            if (CheckFunctions.CheckIfEquivalent(ch, template,
                DatabaseManager.Instance.MOBILETEMPLATES.Get(VnumConstants.MOB_VNUM_DEITY),
                "You can't animate the corpse of a deity's Avatar.")) return ReturnTypes.SpellFailed;

            if (!ch.IsNpc())
            {
                if (ch.IsVampire())
                {
                    if (CheckFunctions.CheckIfTrue(ch,
                        !ch.IsImmortal() &&
                        (((PlayerInstance)ch).PlayerData.GetConditionValue(ConditionTypes.Bloodthirsty) - (template.Level / 3)) < 0,
                        "You don't have the power to reanimate this corpse.")) return ReturnTypes.SpellFailed;

                    ((PlayerInstance)ch).GainCondition(ConditionTypes.Bloodthirsty, template.Level / 3);
                }
                else if ((ch.CurrentMana - (template.Level/4)) < 0)
                {
                    color.send_to_char("You do not have enough mana to reanimate this corpse.", ch);
                    return ReturnTypes.SpellFailed;
                }
                else
                    ch.CurrentMana -= (template.Level*4);
            }

            if (ch.IsImmortal() || (ch.Chance(75) && template.Level - ch.Level < 10))
            {
                CharacterInstance mob = DatabaseManager.Instance.CHARACTERS.Create(template, 0,
                    string.Format("animated corpse {0}", template.PlayerName));

                ch.CurrentRoom.ToRoom(mob);
                mob.Level = (ch.Level/2).GetLowestOfTwoNumbers(template.Level);
                mob.CurrentRace = Realm.Library.Common.EnumerationExtensions.GetEnumByName<RaceTypes>(template.Race);

                mob.MaximumHealth = template.Level*8 +
                                    SmaugRandom.Between(template.Level*template.Level/4, template.Level*template.Level);
                mob.MaximumHealth = (mob.MaximumHealth/4).GetNumberThatIsBetween(
                    (mob.MaximumHealth*corpse.Value[3])/100, ch.Level*SmaugRandom.D20(10));
                mob.MaximumHealth = mob.MaximumHealth.GetHighestOfTwoNumbers(1);
                mob.CurrentHealth = mob.MaximumHealth;
                mob.DamageRoll = new DiceData {SizeOf = ch.Level/8};
                mob.HitRoll = new DiceData {SizeOf = ch.Level/6};
                mob.CurrentAlignment = ch.CurrentAlignment;

                comm.act(ATTypes.AT_MAGIC, "$n makes $T rise from the grave!", ch, null, template.ShortDescription, ToTypes.Room);
                comm.act(ATTypes.AT_MAGIC, "You make $T rise from the grave!", ch, null, template.ShortDescription, ToTypes.Character);

                mob.ShortDescription = string.Format("The animated corpse of {0}", template.ShortDescription);
                mob.LongDescription =
                    string.Format("An animated corpse of {0} struggles with the horror of its undeath.",
                        template.ShortDescription);

                mob.AddFollower(ch);

                AffectData af = new AffectData
                {
                    Type = AffectedByTypes.Charm,
                    Duration = (SmaugRandom.Fuzzy((level + 1)/4) + 1)*
                               GameConstants.GetSystemValue<int>("AffectDurationConversionValue")
                };
                mob.AddAffect(af);

                if (corpse.Contents.Any())
                {
                    foreach (ObjectInstance obj in corpse.Contents)
                    {
                        obj.FromObject(obj);
                        corpse.InRoom.ToRoom(obj);
                    }
                }

                corpse.Split();
                corpse.Extract();
                return ReturnTypes.None;
            }

           ch.FailedCast(skill);
            return ReturnTypes.SpellFailed;
        }
    }
}

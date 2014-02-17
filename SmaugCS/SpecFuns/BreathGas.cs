﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Instances;
using SmaugCS.Extensions;
using SmaugCS.Managers;

namespace SmaugCS.SpecFuns
{
    public static class BreathGas
    {
        public static bool DoSpecBreathGas(CharacterInstance ch)
        {
            if (!ch.IsInCombatPosition())
                return false;

            SkillData skill = DatabaseManager.Instance.GetSkill("gas breath");
            if (skill == null || skill.SpellFunction == null)
                return false;

            skill.SpellFunction.Value.DynamicInvoke(new object[] { skill.ID, ch.Level, ch, null });
            return true;
        }
    }
}

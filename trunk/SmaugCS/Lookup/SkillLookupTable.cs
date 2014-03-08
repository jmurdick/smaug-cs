﻿using System.Collections.Generic;
using System.Linq;
using SmaugCS.Data;
using Realm.Library.Common.Extensions;

namespace SmaugCS.Lookup
{
    /// <summary>
    /// 
    /// </summary>
    public class SkillLookupTable : LookupBase<SkillData, DoFunction>
    {
        /// <summary>
        /// 
        /// </summary>
        public SkillLookupTable()
            : base(new DoFunction {Value = (ch, arg) => color.send_to_char("Huh?\r\n", ch)})
        {
        }

        public override void UpdateFunctionReferences(IEnumerable<SkillData> values)
        {
            foreach (SkillData skill in values.Where(x => !x.SkillFunctionName.IsNullOrEmpty()))
            {
                if (skill.SkillFunction == null)
                    skill.SkillFunction = new DoFunction();

                skill.SkillFunction = GetFunction(skill.SkillFunctionName);
            }
        }
    }
}

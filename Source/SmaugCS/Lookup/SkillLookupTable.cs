﻿using Realm.Library.Common.Extensions;
using SmaugCS.Data;
using SmaugCS.Extensions.Character;
using System.Collections.Generic;
using System.Linq;

namespace SmaugCS.Lookup
{
    public class SkillLookupTable : LookupBase<SkillData, DoFunction>
    {
        public SkillLookupTable()
            : base(new DoFunction { Value = (ch, arg) => ch.SendTo("Huh?") })
        {
            // TODO Add skills here
        }

        public override void UpdateFunctionReferences(IEnumerable<SkillData> values)
        {
            foreach (var skill in values.Where(x => !x.SkillFunctionName.IsNullOrEmpty()))
            {
                if (skill.SkillFunction == null)
                    skill.SkillFunction = new DoFunction();

                skill.SkillFunction = GetFunction(skill.SkillFunctionName);
            }
        }
    }
}

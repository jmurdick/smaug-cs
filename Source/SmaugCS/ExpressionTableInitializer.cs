﻿using System.Text.RegularExpressions;
using NCalc;
using Realm.Library.NCalcExt;
using SmaugCS.Data.Instances;
using SmaugCS.Extensions.Character;
using SmaugCS.Extensions.Player;
using SmaugCS.Managers;

namespace SmaugCS
{
    public static class ExpressionTableInitializer
    {
        public static ExpressionTable GetExpressionTable()
        {
            var table = new ExpressionTable();
            table.Add(new CustomExpression
            {
                Name = "Level",
                RegexPattern = @"^?\b\w*[l|L]\w*\b$?",
                ExpressionFunction = LevelFunction,
                ReplacementFunction = ReplaceLevelCall
            });
            table.Add(new CustomExpression
            {
                Name = "Health",
                RegexPattern = @"^?\b\w*[h|H]\w*\b$?",
                ExpressionFunction = HealthFunction,
                ReplacementFunction = ReplaceHealthCall
            });
            table.Add(new CustomExpression
            {
                Name = "Mana",
                RegexPattern = @"^?\b\w*[m|M]\w*\b$?",
                ExpressionFunction = ManaFunction,
                ReplacementFunction = ReplaceManaCall
            });
            table.Add(new CustomExpression
            {
                Name = "Movement",
                RegexPattern = @"^?\b\w*[v|V]\w*\b$?",
                ExpressionFunction = MovementFunction,
                ReplacementFunction = ReplaceMovementCall
            });
            table.Add(new CustomExpression
            {
                Name = "Strength",
                RegexPattern = @"^?\b\w*[s|S]\w*\b$?",
                ExpressionFunction = StrengthFunction,
                ReplacementFunction = ReplaceStrengthCall
            });
            table.Add(new CustomExpression
            {
                Name = "Intelligence",
                RegexPattern = @"^?\b\w*[i|I]\w*\b$?",
                ExpressionFunction = IntelligenceFunction,
                ReplacementFunction = ReplaceIntelligenceCall
            });
            table.Add(new CustomExpression
            {
                Name = "Wisdom",
                RegexPattern = @"^?\b\w*[w|W]\w*\b$?",
                ExpressionFunction = WisdomFunction,
                ReplacementFunction = ReplaceWisdomCall
            });
            table.Add(new CustomExpression
            {
                Name = "Dexterity",
                RegexPattern = @"^?\b\w*[x|X]\w*\b$?",
                ExpressionFunction = DexterityFunction,
                ReplacementFunction = ReplaceDexterityCall
            });
            table.Add(new CustomExpression
            {
                Name = "Constitution",
                RegexPattern = @"^?\b\w*[c|C]\w*\b$?",
                ExpressionFunction = ConstitutionFunction,
                ReplacementFunction = ReplaceConstitutionCall
            });
            table.Add(new CustomExpression
            {
                Name = "Charisma",
                RegexPattern = @"^?\b\w*[a|A]\w*\b$?",
                ExpressionFunction = CharismaFunction,
                ReplacementFunction = ReplaceCharismaCall
            });
            table.Add(new CustomExpression
            {
                Name = "Luck",
                RegexPattern = @"^?\b\w*[u|U]\w*\b$?",
                ExpressionFunction = LuckFunction,
                ReplacementFunction = ReplaceLuckCall
            });
            table.Add(new CustomExpression
            {
                Name = "Age",
                RegexPattern = @"^?\b\w*[y|Y]\w*\b$?",
                ExpressionFunction = AgeFunction,
                ReplacementFunction = ReplaceAgeCall
            });

            return table;
        }

        #region Custom Functions
        private static int LevelFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.Level;
        }
        private static string ReplaceLevelCall(Match regexMatch)
        {
            return "Level()";
        }
        private static int HealthFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.CurrentHealth;
        }
        private static string ReplaceHealthCall(Match regexMatch)
        {
            return "Health()";
        }
        private static int ManaFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.CurrentMana;
        }
        private static string ReplaceManaCall(Match regexMatch)
        {
            return "Mana()";
        }
        private static int MovementFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.CurrentMovement;
        }
        private static string ReplaceMovementCall(Match regexMatch)
        {
            return "Movement()";
        }
        private static int StrengthFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentStrength();
        }
        private static string ReplaceStrengthCall(Match regexMatch)
        {
            return "Strength()";
        }
        private static int IntelligenceFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentIntelligence();
        }
        private static string ReplaceIntelligenceCall(Match regexMatch)
        {
            return "Intelligence()";
        }
        private static int WisdomFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentWisdom();
        }
        private static string ReplaceWisdomCall(Match regexMatch)
        {
            return "Wisdom()";
        }
        private static int DexterityFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentDexterity();
        }
        private static string ReplaceDexterityCall(Match regexMatch)
        {
            return "Dexterity()";
        }
        private static int ConstitutionFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentConstitution();
        }
        private static string ReplaceConstitutionCall(Match regexMatch)
        {
            return "Constitution()";
        }
        private static int CharismaFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentCharisma();
        }
        private static string ReplaceCharismaCall(Match regexMatch)
        {
            return "Charisma()";
        }
        private static int LuckFunction(FunctionArgs args)
        {
            return GameManager.CurrentCharacter.GetCurrentLuck();
        }
        private static string ReplaceLuckCall(Match regexMatch)
        {
            return "Luck()";
        }
        private static int AgeFunction(FunctionArgs args)
        {
            var instance = GameManager.CurrentCharacter as PlayerInstance;
            return instance?.CalculateAge() ?? 0;
        }
        private static string ReplaceAgeCall(Match regexMatch)
        {
            return "Age()";
        }
        #endregion
    }
}

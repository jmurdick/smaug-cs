﻿using System;
using System.Linq;
using SmaugCS.Common;
using SmaugCS.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Extensions;
using SmaugCS.Logging;
using SmaugCS.Managers;

namespace SmaugCS
{
    public static class update
    {
        public static void gain_condition(CharacterInstance ch, ConditionTypes condition, int value)
        {
            if (value == 0 || ch.IsNpc() || ch.Level >= LevelConstants.ImmortalLevel
                || ch.IsNotAuthorized())
                return;

            int conditionValue = ch.PlayerData.GetConditionValue(condition);
            ch.PlayerData.SetConditionValue(ConditionTypes.Bloodthirsty,
                                            condition == ConditionTypes.Bloodthirsty
                                                ? (conditionValue + value).GetNumberThatIsBetween(0, 10 + ch.Level)
                                                : (conditionValue + value).GetNumberThatIsBetween(0, 48));

            switch (condition)
            {
                case ConditionTypes.Full:
                    ConditionFull(ch, conditionValue);
                    break;
                case ConditionTypes.Thirsty:
                    ConditionThirsty(ch, conditionValue);
                    break;
                case ConditionTypes.Bloodthirsty:
                    ConditionBloodthirsty(ch, conditionValue);
                    break;
                case ConditionTypes.Drunk:
                    ConditionDrunk(ch, conditionValue);
                    break;
                default:
                    LogManager.Instance.Bug("Invalid condition type {0}", condition);
                    break;
            }
        }

        private static ReturnTypes ConditionFull(CharacterInstance ch, int conditionValue)
        {
            ReturnTypes retcode = ReturnTypes.None;

            if (ch.Level < LevelConstants.AvatarLevel && ch.CurrentClass != ClassTypes.Vampire)
            {
                color.set_char_color(ATTypes.AT_HUNGRY, ch);
                DescriptorAttribute attrib = ConditionTypes.Full.GetAttribute<DescriptorAttribute>();

                color.send_to_char(attrib.Messages[conditionValue * 2], ch);
                if (conditionValue < 2)
                {
                    comm.act(ATTypes.AT_HUNGRY, attrib.Messages[(conditionValue * 2) + 1], ch, null, null, ToTypes.Room);
                    if (conditionValue == 0)
                    {
                        if (!ch.IsPKill() || SmaugRandom.Bits(1) == 0)
                            ch.WorsenMentalState(1);
                        retcode = ch.CauseDamageTo(ch, 2, (int)SkillNumberTypes.Undefined);
                    }
                    else
                    {
                        if (SmaugRandom.Bits(1) == 0)
                            ch.WorsenMentalState(1);
                    }
                }
            }

            return retcode;
        }
        private static ReturnTypes ConditionThirsty(CharacterInstance ch, int conditionValue)
        {
            ReturnTypes retcode = ReturnTypes.None;

            if (ch.Level < LevelConstants.AvatarLevel && ch.CurrentClass != ClassTypes.Vampire)
            {
                color.set_char_color(ATTypes.AT_THIRSTY, ch);
                DescriptorAttribute attrib = ConditionTypes.Thirsty.GetAttribute<DescriptorAttribute>();

                color.send_to_char(attrib.Messages[conditionValue * 2], ch);
                if (conditionValue < 2)
                {
                    comm.act(ATTypes.AT_THIRSTY, attrib.Messages[(conditionValue * 2) + 1], ch, null, null, ToTypes.Room);
                    if (conditionValue == 0)
                    {
                        ch.WorsenMentalState(ch.IsPKill() ? 1 : 2);
                        retcode = ch.CauseDamageTo(ch, 2, (int)SkillNumberTypes.Undefined);
                    }
                    else
                        ch.WorsenMentalState(1);
                }
            }

            return retcode;
        }
        private static ReturnTypes ConditionBloodthirsty(CharacterInstance ch, int conditionValue)
        {
            ReturnTypes retcode = ReturnTypes.None;

            if (ch.Level < LevelConstants.AvatarLevel)
            {
                color.set_char_color(ATTypes.AT_BLOOD, ch);
                DescriptorAttribute attrib = ConditionTypes.Bloodthirsty.GetAttribute<DescriptorAttribute>();

                color.send_to_char(attrib.Messages[conditionValue * 2], ch);
                if (conditionValue < 2)
                {
                    comm.act(ATTypes.AT_HUNGRY, attrib.Messages[(conditionValue * 2) + 1], ch, null, null, ToTypes.Room);
                    if (conditionValue == 0)
                    {
                        ch.WorsenMentalState(2);
                        retcode = ch.CauseDamageTo(ch, ch.MaximumHealth / 20, (int)SkillNumberTypes.Undefined);
                    }
                    else
                        ch.WorsenMentalState(1);
                }
            }

            return retcode;
        }
        private static int ConditionDrunk(CharacterInstance ch, int conditionValue)
        {
            if (conditionValue == 0 || conditionValue == 1)
            {
                color.set_char_color(ATTypes.AT_SOBER, ch);

                DescriptorAttribute attrib = ConditionTypes.Drunk.GetAttribute<DescriptorAttribute>();
                color.send_to_char(attrib.Messages[conditionValue], ch);
            }

            return (int)ReturnTypes.None;
        }


        public static void mobile_update()
        {
            // TODO
        }

        public static void char_calendar_update()
        {
            // TODO
        }

        public static void char_update()
        {
            // TODO
        }

        public static void obj_update()
        {
            // TODO
        }

        public static void char_check()
        {
            // TODO
        }

        public static void aggr_update()
        {
            // TODO
        }

        public static void drunk_randoms(CharacterInstance ch)
        {
            // TODO
        }

        public static void hallucinations(CharacterInstance ch)
        {
            // TODO
        }

        public static void tele_update()
        {
            // TODO
        }

        public static void auth_update()
        {
            // TODO
        }

        public static void update_handler()
        {
            // TODO
        }

        public static void remove_portal(ObjectInstance portal)
        {
            if (portal == null)
            {
                // TODO Exeption, log it
                return;
            }

            RoomTemplate fromRoom = portal.InRoom;
            if (fromRoom == null)
            {
                // TODO Exception log it
                return;
            }

            ExitData exit = fromRoom.Exits.FirstOrDefault(xit => xit.Flags.IsSet(ExitFlags.Portal));
            if (exit == null)
            {
                // TODO Exception, log it
                return;
            }

            if (exit.Direction != DirectionTypes.Portal)
            {
                // TODO Exception, log it
            }

            if (exit.GetDestination(DatabaseManager.Instance) == null)
            {
                // TODO Exception, log it
            }

            handler.extract_exit(fromRoom, exit);
        }

        public static void reboot_check(DateTime reset)
        {
            // TODO
        }

        public static void auction_update()
        {
            // TODO
        }

        public static void subtract_times(DateTime etime, DateTime sttime)
        {
            // TODO
        }

        public static void time_update()
        {
            // TODO
        }

        public static void hint_update()
        {
            // TODO
        }
    }
}

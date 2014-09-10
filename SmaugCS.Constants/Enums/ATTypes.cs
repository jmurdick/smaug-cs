﻿using System;

namespace SmaugCS.Constants.Enums
{
    [Flags]
    public enum ATTypes
    {
        None = 0,
        AT_BLOOD,
        AT_DGREEN,
        AT_ORANGE,
        AT_DBLUE,
        AT_PURPLE = 5,
        AT_CYAN = 6,
        AT_GREY = 7,
        AT_DGREY = 8,
        AT_RED = 9,
        AT_GREEN = 10,
        AT_YELLOW = 11,
        AT_BLUE = 12,
        AT_PINK = 13,
        AT_LBLUE = 14,
        AT_WHITE = 15,
        AT_BLINK = 16,

        // These should be 17 - 31 normaly 
        AT_BLACK_BLINK = None + AT_BLINK,
        AT_BLOOD_BLINK = AT_BLOOD + AT_BLINK,
        AT_DGREEN_BLINK = AT_DGREEN + AT_BLINK,
        AT_ORANGE_BLINK = AT_ORANGE + AT_BLINK,
        AT_DBLUE_BLINK = AT_DBLUE + AT_BLINK,
        AT_PURPLE_BLINK = AT_PURPLE + AT_BLINK,
        AT_CYAN_BLINK = AT_CYAN + AT_BLINK,
        AT_GREY_BLINK = AT_GREY + AT_BLINK,
        AT_DGREY_BLINK = AT_DGREY + AT_BLINK,
        AT_RED_BLINK = AT_RED + AT_BLINK,
        AT_GREEN_BLINK = AT_GREEN + AT_BLINK,
        AT_YELLOW_BLINK = AT_YELLOW + AT_BLINK,
        AT_BLUE_BLINK = AT_BLUE + AT_BLINK,
        AT_PINK_BLINK = AT_PINK + AT_BLINK,
        AT_LBLUE_BLINK = AT_LBLUE + AT_BLINK,
        AT_WHITE_BLINK = AT_WHITE + AT_BLINK,

        AT_PLAIN = 32,
        AT_ACTION = 33,
        AT_SAY = 34,
        AT_GOSSIP = 35,
        AT_YELL = 36,
        AT_TELL = 37,
        AT_HIT = 38,
        AT_HITME = 39,
        AT_IMMORT = 40,
        AT_HURT = 41,
        AT_FALLING = 42,
        AT_DANGER = 43,
        AT_MAGIC = 44,
        AT_CONSIDER = 45,
        AT_REPORT = 46,
        AT_POISON = 47,
        AT_SOCIAL = 48,
        AT_DYING = 49,
        AT_DEAD = 50,
        AT_SKILL = 51,
        AT_CARNAGE = 52,
        AT_DAMAGE = 53,
        AT_FLEE = 54,
        AT_RMNAME = 55,
        AT_RMDESC = 56,
        AT_OBJECT = 57,
        AT_PERSON = 58,
        AT_LIST = 59,
        AT_BYE = 60,
        AT_GOLD = 61,
        AT_GTELL = 62,
        AT_NOTE = 63,
        AT_HUNGRY = 64,
        AT_THIRSTY = 65,
        AT_FIRE = 66,
        AT_SOBER = 67,
        AT_WEAROFF = 68,
        AT_EXITS = 69,
        AT_SCORE = 70,
        AT_RESET = 71,
        AT_LOG = 72,
        AT_DIEMSG = 73,
        AT_WARTALK = 74,
        AT_ARENA = 75,
        AT_MUSE = 76,
        AT_THINK = 77,
        AT_AFLAGS = 78,
        AT_WHO = 79,
        AT_RACETALK = 80,
        AT_IGNORE = 81,
        AT_WHISPER = 82,
        AT_DIVIDER = 83,
        AT_MORPH = 84,
        AT_SHOUT = 85,
        AT_RFLAGS = 86,
        AT_STYPE = 87,
        AT_ANAME = 88,
        AT_AUCTION = 89,
        AT_SCORE2 = 90,
        AT_SCORE3 = 91,
        AT_SCORE4 = 92,
        AT_WHO2 = 93,
        AT_WHO3 = 94,
        AT_WHO4 = 95,
        AT_INTERMUD = 96,
        AT_HELP = 97,
        AT_WHO5 = 98,
        AT_SCORE5 = 99,
        AT_WHO6 = 100,
        AT_WHO7 = 101,
        AT_PRAC = 102,
        AT_PRAC2 = 103,
        AT_PRAC3 = 104,
        AT_PRAC4 = 105,
        AT_MXPPROMPT = 106,
        AT_GUILDTALK = 107,
        AT_BOARD = 108,
        AT_BOARD2 = 109,
        AT_BOARD3 = 110,

        // Should ALWAYS be one more than the last numerical value in the list 
        MAX_COLORS = 111
    };
}

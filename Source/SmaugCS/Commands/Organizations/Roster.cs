﻿using System;
using SmaugCS.Common;
using SmaugCS.Data.Instances;
using SmaugCS.Extensions.Character;

namespace SmaugCS.Commands.Organizations;

public static class Roster
{
  public static void do_roster(CharacterInstance ch, string argument)
  {
    if (ch.IsNpc())
    {
      ch.SendTo("NPCs can't use this command.\r\n");
      return;
    }

    if (string.IsNullOrWhiteSpace(argument))
    {
      ch.SendTo("Usage: roster <clanname>\r\n");
      ch.SendTo("Usage: roster <clanname> remove <name>\r\n");
      return;
    }

    Tuple<string, string> tuple = argument.FirstArgument();
    argument = tuple.Item2;
    string arg = tuple.Item1;

    // TODO fix
    //var clan = Program.RepositoryManager.GetEntity<ClanData>(arg);
    //if (clan == null)
    //{
    //    ch.Printf("No such guild or clan known as %s.\r\n", arg);
    //    return;
    //}

    //if (string.IsNullOrWhiteSpace(argument))
    //{
    //    ch.Printf("Membership roster for the %s %s\r\n\r\n",
    //        clan.ClanType == ClanTypes.Order ? "Guild" : "Clan");
    //    ch.Printf("%-15.15s  %-15.15s %-6.6s %-6.6s %-6.6s %s\r\n",
    //        "Name", "Class", "Level", "Kills", "Deaths", "Joined on");
    //    ch.SendTo("-------------------------------------------------------------------------------------\r\n");

    //    var total = 0;
    //    foreach (var member in clan.Members)
    //    {
    //        ch.Printf("%-15.15s  %-15.15s %-6d %-6d %-6d %s",
    //                        member.Name, Program.LookupManager.GetLookup("NPCClasses", member.Class).CapitalizeFirst(),
    //                        member.Level, member.Kills, member.Deaths, member.Joined.ToShortTimeString());
    //        total++;
    //    }

    //    ch.Printf("\r\nThere are %d member%s in %s\r\n", total, total == 1 ? "" : "s", clan.Name);
    //}

    tuple = argument.FirstArgument();
    argument = tuple.Item2;
    string arg2 = tuple.Item1;

    // TODO Fix
    //if (arg2.EqualsIgnoreCase("remove"))
    //{
    //    if (string.IsNullOrWhiteSpace(argument))
    //    {
    //        ch.SendTo("Remove who from the roster?");
    //        return;
    //    }

    //    clan.RemoveFromRoster(argument);
    //    //clan.Save();
    //    ch.Printf("%s has been removed from the roster for %s.\r\n", argument, clan.Name);
    //}

    do_roster(ch, "");
  }
}
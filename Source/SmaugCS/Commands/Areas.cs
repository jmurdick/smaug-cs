﻿using Library.Common.Extensions;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Instances;
using System.Collections.Generic;
using System.Linq;
using SmaugCS.Extensions.Character;

namespace SmaugCS.Commands;

public static class Areas
{
  public static void do_areas(CharacterInstance ch, string argument)
  {
    string firstArg = argument.FirstWord();
    string secondArg = argument.SecondWord();

    List<AreaData> areas;
    if (firstArg.EqualsIgnoreCase("help") || firstArg == "?")
    {
      ch.SendTo("Syntax:  area            ->      lists areas in alphanumeric order");
      ch.SendTo("         area <a>        ->      lists areas with soft max less than parameter a");
      ch.SendTo("         area <a> <b>    ->      lists areas with soft max bewteen numbers a and b");
      ch.SendTo("         area old        ->      list areas in order loaded");
      return;
    }

    if (firstArg.IsNumber() && secondArg.IsNullOrEmpty())
    {
      long lowerBound = long.Parse(firstArg);
      areas = Program.RepositoryManager.AREAS.Values.Where(x => x.HighSoftRange >= lowerBound).ToList();
    }
    else if (firstArg.IsNumber() && !secondArg.IsNullOrEmpty() && secondArg.IsNumber())
    {
      int lowerBound = int.Parse(firstArg);
      int upperBound = int.Parse(secondArg);
      if (lowerBound > upperBound)
      {
        (lowerBound, upperBound) = (upperBound, lowerBound);
      }

      areas = Program.RepositoryManager.AREAS.Values
        .Where(x => x.HighSoftRange >= lowerBound && x.LowSoftRange <= upperBound).ToList();
    }
    else if (firstArg.EqualsIgnoreCase("old"))
    {
      areas = Program.RepositoryManager.AREAS.Values.ToList();
    }
    else
    {
      areas = Program.RepositoryManager.AREAS.Values.OrderBy(x => x.Name).ToList();
    }

    string header1 = "   Author    |             Area                     | Recommended |  Enforced\n\r";
    string header2 = "-------------+--------------------------------------+-------------+----------\n\r";
    string footer1 = "-----------------------------------------------------------------------------";
    ch.SetColor(ATTypes.AT_PLAIN);
    ch.SendToPager(header1);
    ch.SendToPager(header2);
    foreach (AreaData area in areas)
    {
      ch.SendToPager($"{area.Author.PadOrTrimToCharacters(12)} | {area.Author.PadOrTrimToCharacters(36)} | " +
                     $"{area.LowSoftRange.ToString().PadOrTrimToCharacters(4)} - {area.HighSoftRange.ToString().PadOrTrimToCharacters(4)} | " +
                     $"{area.LowHardRange.ToString().PadOrTrimToCharacters(3)} - {area.HighHardRange.ToString().PadOrTrimToCharacters(3)} \n\r");
    }

    ch.SendTo(footer1);
  }
}
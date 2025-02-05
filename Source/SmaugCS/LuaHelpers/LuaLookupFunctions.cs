﻿using System.Collections.Generic;
using Library.Lua;
using SmaugCS.Data;
using SmaugCS.Data.Exceptions;
using SmaugCS.Data.Interfaces;
using SmaugCS.Logging;

namespace SmaugCS.LuaHelpers;

public static class LuaLookupFunctions
{
  private static ILookupManager _lookupManager;
  private static ILogManager _logManager;

  public static void InitializeReferences(ILookupManager lookupManager, ILogManager logManager)
  {
    _lookupManager = lookupManager;
    _logManager = logManager;
  }

  [LuaFunction("LAddLookup", "Adds a new lookup entry", "Lookup table", "Lookup entry")]
  public static void LuaAddLookup(string lookupTable, string lookupEntry)
  {
    if (_lookupManager.HasLookup(lookupTable, lookupEntry))
    {
      _logManager.Boot(new DuplicateEntryException("Lookup [{0}] \"{1}\" already exists", lookupTable, lookupEntry));
      return;
    }

    _lookupManager.AddLookup(lookupTable, lookupEntry);
    _logManager.Boot("Lookup [{0}] \"{1}\" added", lookupTable, lookupEntry);
  }

  private static readonly Dictionary<string, int> DirectionLookupTable = new()
  {
    { "north", 0 }, { "n", 0 }, { "east", 1 }, { "e", 1 }, { "south", 2 }, { "s", 2 }, { "west", 3 }, { "w", 3 },
    { "up", 4 }, { "u", 4 }, { "down", 5 }, { "d", 5 }, { "northeast", 6 }, { "ne", 6 }, { "northwest", 7 },
    { "nw", 7 }, { "southeast", 8 }, { "se", 8 }, { "southwest", 9 }, { "sw", 9 }, { "somewhere", 10 }
  };

  [LuaFunction("LGetDirectionNumber", "Looks up a direction number", "Direction")]
  public static int LuaLookupDirection(string direction)
  {
    return DirectionLookupTable.ContainsKey(direction.ToLower()) ? DirectionLookupTable[direction.ToLower()] : 10;
  }

  [LuaFunction("LAddStatModLookup", "Adds Stat Mods", "Category", "Name", "Value")]
  public static int LAddStatModLookup(string category, string name, object value)
  {
    if (!_lookupManager.StatModLookup.ContainsKey(category))
      _lookupManager.StatModLookup[category] = [];

    List<StatModLookup> lookups = _lookupManager.StatModLookup[category];

    StatModLookup lookup = new();
    lookup.AddLookup(name, value);
    lookups.Add(lookup);
    return 1;
  }
}
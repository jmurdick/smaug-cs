﻿using Library.Common.Extensions;
using Library.Common.Objects;
using SmaugCS.Common;
using SmaugCS.Constants.Enums;
using SmaugCS.Data.Instances;
using System.Collections.Generic;

namespace SmaugCS.Data;

public class DeityData(long id, string name) : Entity(id, name)
{
  public string Filename { get; set; }
  public string Description { get; set; }
  public int Alignment { get; set; }
  public int Worshippers { get; set; }
  public int SupplicateCorpseCost { get; set; }
  public int SupplicateDeityObjectCost { get; set; }
  public int SupplicateAvatarCost { get; set; }
  public int SupplicateRecallCost { get; set; }
  public int SpellAid { get; set; }
  public int Race { get; set; }
  public int Race2 { get; set; }
  public int Class { get; set; }
  public int Gender { get; set; }
  public RaceTypes NPCRace { get; set; }
  public RaceTypes NPCFoe { get; set; }
  public int Suscept { get; set; }
  public int Element { get; set; }
  public ExtendedBitvector Affected { get; set; }
  public int SusceptNum { get; set; }
  public int ElementNum { get; set; }
  public int AffectedNum { get; set; }
  public int ObjStat { get; set; }

  private readonly Dictionary<DeityFieldTypes, int> _values = new();

  public void SetRaceType(string field, string value)
  {
    RaceTypes type = Library.Common.Extensions.EnumerationExtensions.GetEnumByName<RaceTypes>(value);

    if (field.EqualsIgnoreCase("npcfoe"))
      NPCFoe = type;
    if (field.EqualsIgnoreCase("npcrace"))
      NPCRace = type;
  }

  public void AddFieldValue(string field, int value)
  {
    DeityFieldTypes fieldType =
      Library.Common.Extensions.EnumerationExtensions.GetEnumByName<DeityFieldTypes>(field);
    _values[fieldType] = value;
  }

  public int GetFieldValue(DeityFieldTypes field)
  {
    return _values.GetValueOrDefault(field, 0);
  }

  public int FuzzifyFavor(DeityFieldTypes field, int mod)
  {
    int fieldvalue = GetFieldValue(field);
    return SmaugRandom.Fuzzy(fieldvalue / mod);
  }

  public void UpdateCharacterBits(PlayerInstance ch)
  {
    //if (ch.PlayerData.Favor > AffectedNum)
    //    ch.AffectedBy.SetBits(AffectedBy);
    if (ch.PlayerData.Favor > ElementNum)
      ch.Resistance.SetBit(Element);
    if (ch.PlayerData.Favor < SusceptNum)
      ch.Susceptibility.SetBit(Suscept);
  }
}
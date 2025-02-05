﻿using SmaugCS.Constants.Enums;
using System.Collections.Generic;
using System.Xml.Serialization;

namespace SmaugCS.Data.Shops;

[XmlRoot("Shop")]
public abstract class ShopData
{
  private readonly List<ItemTypes> _itemTypes = [];

  public int Keeper { get; set; }
  public IEnumerable<ItemTypes> ItemTypes => _itemTypes;
  public int OpenHour { get; set; }
  public int CloseHour { get; set; }
  public ShopTypes ShopType { get; set; }

  public void AddItemType(string type)
  {
    ItemTypes itemType = Library.Common.Extensions.EnumerationExtensions.GetEnumIgnoreCase<ItemTypes>(type);
    if (!_itemTypes.Contains(itemType))
      _itemTypes.Add(itemType);
  }

  public void AddItemType(ItemTypes type)
  {
    if (!_itemTypes.Contains(type))
      _itemTypes.Add(type);
  }
}
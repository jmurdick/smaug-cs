﻿using SmaugCS.Common;
using SmaugCS.Data.Instances;

namespace SmaugCS.MudProgs.MobileProgs;

public static class CommandProg
{
  public static bool Execute(object[] args)
  {
    CharacterInstance actor = args.GetValue<CharacterInstance>(0);
    string txt = args.GetValue<string>(1);

    return false;
  }
}
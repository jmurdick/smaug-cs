﻿using Library.Common.Logging;
using Library.Lua;
using SmaugCS.Data.Interfaces;
using System;

namespace SmaugCS.Lua;

public sealed class LuaManager : ILuaManager
{
  private static ILogWrapper _logWrapper;

  public LuaVirtualMachine LUA { get; private set; }
  public LuaInterfaceProxy Proxy { get; private set; }

  public LuaManager(ILogWrapper logWrapper)
  {
    _logWrapper = logWrapper;
  }

  public void InitializeLuaProxy(LuaInterfaceProxy proxy)
  {
    Proxy = proxy ?? new LuaInterfaceProxy();
    LuaFunctionRepository luaFuncRepo = LuaHelper.Register(typeof(LuaManager), null);
    Proxy.RegisterFunctions(luaFuncRepo);
  }

  public void InitVirtualMachine()
  {
    LUA = new LuaVirtualMachine(1, null, new LuaFunctionRepository(), Proxy);
  }

  public void DoLuaScript(string file)
  {
    try
    {
      Proxy.DoFile(file);
    }
    catch (Exception ex)
    {
      _logWrapper.Error(ex.ToString(), ex);
    }
  }
}
﻿using Library.Common;
using Library.Common.Extensions;
using Library.Common.Logging;
using Library.Common.Objects;
using System;
using System.Collections.Concurrent;
using System.Linq;

namespace Library.Lua;

/// <inheritdoc />
///  <summary>
///  </summary>
public sealed class LuaVirtualMachineContext : Entity
{
  private readonly ConcurrentQueue<LuaVirtualMachine> _virtualMachines = new();
  private readonly LuaFunctionRepository _repository;
  private readonly ILogWrapper _log;

  /// <inheritdoc />
  /// <summary>
  /// Constructor
  /// </summary>
  public LuaVirtualMachineContext(ILogWrapper log, int numberVirtualMachines, LuaFunctionRepository repository)
    : base(1, "LuaVirtualMachineContext")
  {
    Validation.IsNotNull(log, "log");
    Validation.Validate<ArgumentOutOfRangeException>(numberVirtualMachines > 0);
    Validation.IsNotNull(repository, "repository");

    _log = log;
    _repository = repository;
    LuaInterfaceProxy proxy = new();
    Enumerable.Range(0, numberVirtualMachines)
      .ToList()
      .ForEach(i => _virtualMachines.Enqueue(new LuaVirtualMachine(i + 1, log, repository, proxy)));
  }

  /// <summary>
  /// Gets the number of virtual machines on the queue
  /// </summary>
  public int VirtualMachineCount => _virtualMachines.Count;

  /// <summary>
  /// Gets the next virtual machine on the queue and then re-enqueues the chosen vm.
  /// </summary>
  /// <returns></returns>
  public LuaVirtualMachine NextVirtualMachine
  {
    get
    {
      _virtualMachines.TryDequeue(out LuaVirtualMachine vm);
      if (vm != null)
        _virtualMachines.Enqueue(vm);

      return vm;
    }
  }

  /// <summary>
  /// Registers all lua functions found within the given object
  /// </summary>
  /// <param name="value">Object to scan for LuaFunctionAttribute</param>
  public void RegisterLuaFunctions(object value)
  {
    if (value == null) return;
    RegisterLuaFunctions(value.GetType());
  }

  /// <summary>
  /// Registers all lua functions found within the given object type
  /// </summary>
  /// <param name="type">The type of the object to scan for LuaFunctionAttribute</param>
  private void RegisterLuaFunctions(Type type)
  {
    if (type == null) return;
    try
    {
      LuaHelper.Register(type, _repository);

      _virtualMachines.ToList().ForEach(x => x.RegisterFunctions());
    }
    catch (ArgumentException ex)
    {
      ex.Handle<LuaException>(ExceptionHandlingOptions.RecordAndThrow, _log);
    }
  }

  /// <inheritdoc />
  ///  <summary>
  ///  </summary>
  ///  <param name="disposing"></param>
  protected override void Dispose(bool disposing)
  {
    if (disposing)
    {
      while (!_virtualMachines.IsEmpty)
      {
        _virtualMachines.TryDequeue(out LuaVirtualMachine vm);
        vm?.Dispose();
      }
    }

    base.Dispose(disposing);
  }
}
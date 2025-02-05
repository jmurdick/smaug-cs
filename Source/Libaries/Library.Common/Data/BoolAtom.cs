﻿using Library.Common.Logging;

namespace Library.Common.Data;

/// <summary>
/// Class that defines a boolean Atom
/// </summary>
public class BoolAtom : Atom
{
  /// <summary>
  /// Constructor
  /// </summary>
  /// <param name="value"></param>
  public BoolAtom(bool value)
    : base(AtomType.Boolean)
  {
    Value = value;
  }

  /// <summary>
  /// Gets the value of the atom
  /// </summary>
  public bool Value { get; }

  /// <summary>
  /// Dumps the contents of the Atom with the given prefix
  /// </summary>
  /// <param name="log"></param>
  /// <param name="prefix"></param>
  public override void Dump(ILogWrapper log, string prefix)
  {
    Validation.IsNotNull(log, "log");

    log.Info("{0}:{1}(BoolAtom)", prefix, Value);
  }
}
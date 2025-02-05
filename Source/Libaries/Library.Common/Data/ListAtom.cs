﻿using Library.Common.Objects;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Library.Common.Logging;

namespace Library.Common.Data;

/// <summary>
/// Class that defines a list atom
/// </summary>
public class ListAtom : Atom, IEnumerable<Atom>
{
  private readonly List<Atom> _list;

  /// <summary>
  /// Constructor
  /// </summary>
  public ListAtom()
    : base(AtomType.List)
  {
    _list = [];
  }

  /// <summary>
  /// Deconstructor
  /// </summary>
  ~ListAtom()
  {
    if (_list.IsNotNull())
      _list.Clear();
  }

  /// <summary>
  /// Gets an enumerator
  /// </summary>
  /// <returns></returns>
  IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();

  /// <summary>
  /// Gets an enumerator
  /// </summary>
  /// <returns></returns>
  public IEnumerator<Atom> GetEnumerator() => _list.GetEnumerator();

  /// <summary>
  /// 
  /// </summary>
  /// <returns></returns>
  public IEnumerable<Atom> GetList() => new List<Atom>(_list);

  /// <summary>
  /// Gets the number of objects in the list
  /// </summary>
  public int Count => _list.Count;

  #region Get Functions

  /// <summary>
  /// Gets an Atom at the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public Atom Get(int i)
  {
    return _list.ElementAt(i);
  }

  /// <summary>
  /// Gets a string value from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public string GetString(int i)
  {
    Atom atom = Get(i);
    return atom is StringAtom ? ((StringAtom)atom).Value : string.Empty;
  }

  /// <summary>
  /// Gets an integer value from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public int GetInt(int i)
  {
    Atom atom = Get(i);
    return (atom as IntAtom)?.Value ?? 0;
  }

  /// <summary>
  /// Gets an object value from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public object GetObject(int i)
  {
    Atom atom = Get(i);
    return (atom as ObjectAtom)?.Value;
  }

  /// <summary>
  /// Gets a list atom from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public ListAtom GetList(int i)
  {
    Atom atom = Get(i);
    return atom as ListAtom;
  }

  /// <summary>
  /// Gets a dictionary atom from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public DictionaryAtom GetDictionary(int i)
  {
    Atom atom = Get(i);
    return atom as DictionaryAtom;
  }

  /// <summary>
  /// Gets a boolean value from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public bool GetBool(int i)
  {
    Atom atom = Get(i);
    return atom is BoolAtom && (atom as BoolAtom).Value;
  }

  /// <summary>
  /// Gets a double value from the given index
  /// </summary>
  /// <param name="i"></param>
  /// <returns></returns>
  public double GetReal(int i)
  {
    Atom atom = Get(i);
    return (atom as RealAtom)?.Value ?? 0.0f;
  }

  #endregion Get Functions

  #region Set Functions

  /// <summary>
  /// Adds an atom to the list
  /// </summary>
  /// <param name="atom"></param>
  public void Add(Atom atom)
  {
    _list.Add(atom);
  }

  /// <summary>
  /// Adds a string to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(string value)
  {
    Add(new StringAtom(value));
  }

  /// <summary>
  /// Adds a boolean to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(bool value)
  {
    Add(new BoolAtom(value));
  }

  /// <summary>
  /// Adds a long to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(long value)
  {
    Add(new IntAtom(value));
  }

  /// <summary>
  /// Adds an integer to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(int value)
  {
    Add(new IntAtom(value));
  }

  /// <summary>
  /// Adds a double to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(double value)
  {
    Add(new RealAtom(value));
  }

  /// <summary>
  /// Adds a float to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(float value)
  {
    Add(new RealAtom(value));
  }

  /// <summary>
  /// Adds an object to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(object value)
  {
    Add(new ObjectAtom(value));
  }

  /// <summary>
  /// Adds a list atom to the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(ListAtom value)
  {
    Add((Atom)value);
  }

  /// <summary>
  /// Adds a dictionary atom the list
  /// </summary>
  /// <param name="value"></param>
  public void Add(DictionaryAtom value)
  {
    Add((Atom)value);
  }

  #endregion Set Functions

  /// <summary>
  /// Clears objects from the list
  /// </summary>
  public void Clear()
  {
    _list.Clear();
  }

  /// <summary>
  /// Dumps the contents of the Atom with the given prefix
  /// </summary>
  /// <param name="log"></param>
  /// <param name="prefix"></param>
  public override void Dump(ILogWrapper log, string prefix)
  {
    Validation.IsNotNull(log, "log");

    log.Info("{0}(ListAtom)", prefix);
    Enumerable.Range(1, Count).ToList().ForEach(i =>
    {
      Atom atom = Get(i - 1);
      atom.Dump(log, $"{prefix}.{i - 1}");
    });
  }
}
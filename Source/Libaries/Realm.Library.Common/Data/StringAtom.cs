﻿using Realm.Library.Common.Logging;

namespace Realm.Library.Common.Data
{
    /// <summary>
    /// Class that defines a string Atom
    /// </summary>
    public class StringAtom : Atom
    {
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="value"></param>
        public StringAtom(string value)
            : base(AtomType.String)
        {
            Value = value;
        }

        /// <summary>
        /// Gets the value of the atom
        /// </summary>
        public string Value { get; }

        /// <summary>
        /// Dumps the contents of the Atom with the given prefix
        /// </summary>
        /// <param name="log"></param>
        /// <param name="prefix"></param>
        public override void Dump(ILogWrapper log, string prefix)
        {
            Validation.IsNotNull(log, "log");

            log.Info("{0}:{1}(StringAtom)", prefix, Value);
        }

        /// <summary>
        /// Overload of Equals to compare two objects
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public override bool Equals(object obj)
        {
            var stringAtom = obj as StringAtom;
            return stringAtom != null && Value.Equals(stringAtom.Value);
        }

        /// <summary>
        /// Overload of GetHashCode to provide a different hash code
        /// </summary>
        /// <returns></returns>
        public override int GetHashCode()
        {
            return Value.GetHashCode();
        }
    }
}
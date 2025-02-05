﻿using Realm.Library.Common.Logging;

namespace Realm.Library.Common.Data
{
    /// <summary>
    /// Class that defines a real Atom
    /// </summary>
    public class RealAtom : Atom
    {
        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="value"></param>
        public RealAtom(double value)
            : base(AtomType.Real)
        {
            Value = value;
        }

        /// <summary>
        /// Overloaded constructor
        /// </summary>
        /// <param name="value"></param>
        public RealAtom(float value)
            : base(AtomType.Real)
        {
            Value = value;
        }

        /// <summary>
        /// Gets the value of the atom
        /// </summary>
        public double Value { get; }

        /// <summary>
        /// Dumps the contents of the Atom with the given prefix
        /// </summary>
        /// <param name="log"></param>
        /// <param name="prefix"></param>
        public override void Dump(ILogWrapper log, string prefix)
        {
            Validation.IsNotNull(log, "log");

            log.Info("{0}:{1}(RealAtom)", prefix, Value);
        }
    }
}
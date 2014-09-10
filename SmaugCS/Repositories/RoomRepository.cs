﻿using System;
using Realm.Library.Common;
using Realm.Library.Patterns.Repository;
using SmaugCS.Common;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Exceptions;
using SmaugCS.Data.Templates;

namespace SmaugCS.Repositories
{
    public class RoomRepository : Repository<long, RoomTemplate>, ITemplateRepository<RoomTemplate>
    {
        private RoomTemplate LastRoom { get; set; }

        public RoomTemplate Create(long id, long cloneId, string name)
        {
            throw new NotImplementedException();
        }

        public RoomTemplate Create(long id, string name)
        {
            Validation.Validate(id >= 1);
            Validation.Validate(() =>
                {
                    if (Contains(id))
                        throw new DuplicateIndexException("Invalid ID {0}, Index already exists", id);
                });

            RoomTemplate newRoom = new RoomTemplate(id, name.IsNullOrEmpty() ? "Floating in a Void" : name);
            newRoom.Flags.SetBit(RoomFlags.Prototype);

            Add(id, newRoom);
            return newRoom;
        }
    }
}

﻿using System;
using SmaugCS.Constants.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;

namespace SmaugCS.Loaders.Loaders
{
    public class DeityListLoader : BaseLoader
    {
        public DeityListLoader(ILuaManager luaManager) : base(luaManager)
        {
        }

        public override string Filename
        {
            get
            {
                return SystemConstants.GetSystemDirectory(SystemDirectoryTypes.Deity) +
                       SystemConstants.GetSystemFile(SystemFileTypes.Deities);
            }
        }

        public override void Save()
        {
            throw new NotImplementedException();
        }

        protected override string AppSettingName
        {
            get { return "Deities"; }
        }

        protected override SystemDirectoryTypes SystemDirectory
        {
            get { return SystemDirectoryTypes.Deity; }
        }
    }
}

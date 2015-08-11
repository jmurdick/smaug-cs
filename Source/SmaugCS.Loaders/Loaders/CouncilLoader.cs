﻿using System;
using SmaugCS.Constants.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;

namespace SmaugCS.Loaders.Loaders
{
    public class CouncilLoader : BaseLoader
    {
        public CouncilLoader(ILuaManager luaManager) : base(luaManager)
        {
        }

        public override string Filename
        {
            get
            {
                return SystemConstants.GetSystemDirectory(SystemDirectoryTypes.Council) +
                       SystemConstants.GetSystemFile(SystemFileTypes.Councils);
            }
        }

        public override void Save()
        {
            throw new NotImplementedException();
        }

        protected override string AppSettingName
        {
            get { return "Councils"; }
        }

        protected override SystemDirectoryTypes SystemDirectory
        {
            get { return SystemDirectoryTypes.Council; }
        }
    }
}

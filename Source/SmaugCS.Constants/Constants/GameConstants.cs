﻿using System;
using System.Configuration;
using System.Linq;
using Realm.Library.Common;
using SmaugCS.Config;

namespace SmaugCS.Constants.Constants
{
    public static class GameConstants
    {
        #region Configuration Functions
        public static string GetAppSetting(string name)
        {
            return ConfigurationManager.AppSettings[name];
        }

        private static ConstantConfigurationSection _configSection;

        private static ConstantElement GetConfigConstant(string elementName)
        {
            if (_configSection == null)
                _configSection =
                    ConfigurationManagerFunctions.GetSection<ConstantConfigurationSection>("ConstantSection");
            return
                _configSection.Constants.Cast<ConstantElement>()
                    .FirstOrDefault(element => element.Name.EqualsIgnoreCase(elementName));
        }

        public static T GetConstant<T>(string name)
        {
            var element = GetConfigConstant(name);
            return element != null ? (T)Convert.ChangeType(element.Value, typeof(T)) : default(T);
        }

        private static SystemDataConfigurationSection _dataSection;

        public static T GetSystemValue<T>(string name)
        {
            if (_dataSection == null)
                _dataSection =
                    ConfigurationManagerFunctions.GetSection<SystemDataConfigurationSection>("SystemDataSection");
            var element =
                _dataSection.SystemValues.Cast<SystemValueElement>().FirstOrDefault(e => e.Name.EqualsIgnoreCase(name));
            return element != null ? (T)Convert.ChangeType(element.Value, typeof(T)) : default(T);
        }

        private static VnumConfigurationSection _vnumSection;

        public static int GetVnum(string name)
        {
            if (_vnumSection == null)
                _vnumSection = ConfigurationManagerFunctions.GetSection<VnumConfigurationSection>("VnumSection");
            var element =
                (_vnumSection.RoomVnums.Cast<VnumElement>().FirstOrDefault(e => e.Name.EqualsIgnoreCase(name)) ??
                 _vnumSection.MobileVnums.Cast<VnumElement>().FirstOrDefault(e => e.Name.EqualsIgnoreCase(name))) ??
                _vnumSection.ObjectVnums.Cast<VnumElement>().FirstOrDefault(e => e.Name.EqualsIgnoreCase(name));
            return element != null ? Convert.ToInt32(element.Value) : -1;
        }

        public static string DataPath => $"{GetConstant<string>("AppPath")}\\{"data"}\\";

        public static string LogPath => $"{GetConstant<string>("AppPath")}\\{"logs"}\\";

        #endregion


        public static int MaximumExperienceWorth => GetConstant<int>("MaximumExperienceValue");
        public static int MinimumExperienceWorth => GetConstant<int>("MinimumExperienceValue");

        public static int MaximumWearLayers => GetConstant<int>("MaximumLayers");

        public static int MaximumWearLocations => GetConstant<int>("MaximumWearLocations");
    }
}

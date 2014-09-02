﻿using System;
using Moq;
using NUnit.Framework;
using SmaugCS.Common;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Extensions;
using SmaugCS.Logging;

namespace SmaugCS.Tests.Extensions
{
    [TestFixture]
    public class MudProgExtensionTests
    {
        private static Mock<ILogManager> _mockedLogManager;
        private static Mock<ILuaManager> _mockedLuaManager;

        [SetUp]
        public void OnSetup()
        {
            _mockedLogManager = new Mock<ILogManager>();
            _mockedLuaManager = new Mock<ILuaManager>();
        }

        [Test]
        public void Execute_IsCharmed_Test()
        {
            var actor = new CharacterInstance(1, "TestChar");
            actor.AffectedBy = actor.AffectedBy.SetBit(AffectedByTypes.Charm);

            var mprog = new MudProgData {Type = MudProgTypes.Act};

            Assert.That(mprog.Execute(actor, _mockedLuaManager.Object, _mockedLogManager.Object), Is.False);
        }

        [Test]
        public void Execute_IsFileProg_Test()
        {
            var actor = new CharacterInstance(1, "TestChar");

            var mprog = new MudProgData {Type = MudProgTypes.Act, IsFileProg = true};

            Assert.Throws<NotImplementedException>(
                () => mprog.Execute(actor, _mockedLuaManager.Object, _mockedLogManager.Object),
                "Unit test expected a NotImplementedException to be thrown!");
        }

        [Test]
        public void Execute_CatchesAndLogsException_Test()
        {
            bool callback = false;

            var actor = new CharacterInstance(1, "TestChar");

            var mprog = new MudProgData {Type = MudProgTypes.Act};

            _mockedLuaManager.Setup(x => x.DoLuaScript(It.IsAny<string>())).Throws(new Exception("Test Exception"));

            _mockedLogManager.Setup(x => x.Error(It.IsAny<Exception>())).Callback(() => { callback = true; });

            Assert.That(mprog.Execute(actor, _mockedLuaManager.Object, _mockedLogManager.Object), Is.False);
            Assert.That(callback, Is.True);
        }

        [Test]
        public void Execute_Successful_Test()
        {
            var actor = new CharacterInstance(1, "TestChar");

            var mprog = new MudProgData {Type = MudProgTypes.Act};

            Assert.That(mprog.Execute(actor, _mockedLuaManager.Object, _mockedLogManager.Object), Is.True);
        }
    }
}

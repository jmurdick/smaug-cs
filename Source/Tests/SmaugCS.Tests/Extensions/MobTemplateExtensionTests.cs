﻿using FluentAssertions;
using SmaugCS.Common.Enumerations;
using SmaugCS.Constants.Enums;
using SmaugCS.Data.Extensions;
using SmaugCS.Data.Templates;
using Xunit;

namespace SmaugCS.Tests.Extensions;

public class MobTemplateExtensionTests
{
  [Fact]
  public void GetRaceTest()
  {
    MobileTemplate template = new(1, "Test") { Race = "valatur" };

    template.GetRace().Should().Be((int)RaceTypes.Valatur);
  }

  [Fact]
  public void GetPositionTest()
  {
    MobileTemplate template = new(1, "Test") { Position = "sitting" };

    template.GetPosition().Should().Be(PositionTypes.Sitting);
  }

  [Fact]
  public void GetDefensivePositionTest()
  {
    MobileTemplate template = new(1, "Test") { DefensivePosition = "sitting" };

    template.GetDefensivePosition().Should().Be(PositionTypes.Sitting);
  }

  [Fact]
  public void GetGenderTest()
  {
    MobileTemplate template = new(1, "Test") { Statistics = { [StatisticTypes.Gender] = "neuter" } };

    template.GetGender().Should().Be(GenderTypes.Neuter);
  }

  [Fact]
  public void GetResistanceTest()
  {
    MobileTemplate template = new(1, "Test") { Resistance = "fire blunt" };

    int result = template.GetResistance();

    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Fire).Should().BeTrue();
    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Blunt).Should().BeTrue();
    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Cold).Should().BeFalse();
  }

  [Fact]
  public void GetImmunityTest()
  {
    MobileTemplate template = new(1, "Test") { Immunity = "fire blunt" };

    int result = template.GetImmunity();

    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Fire).Should().BeTrue();
    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Blunt).Should().BeTrue();
    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Cold).Should().BeFalse();
  }

  [Fact]
  public void GetSusceptibilityTest()
  {
    MobileTemplate template = new(1, "Test") { Susceptibility = "fire blunt" };

    int result = template.GetSusceptibility();

    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Fire).Should().BeTrue();
    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Blunt).Should().BeTrue();
    Common.NumberExtensions.IsSet(result, (int)ResistanceTypes.Cold).Should().BeFalse();
  }
}
﻿using System;
using FluentAssertions;
using Library.Common.Objects;
using Xunit;

namespace Library.Common.Tests.Extensions;

public class TestCell : Cell
{
  public TestCell(long id, string name)
  {
    Id = id;
    Name = name;
  }
}

public class CellExtensionsTest
{
  private static TestCell GetTestCell()
  {
    return new TestCell(1, "test");
  }

  [Theory]
  [InlineData("test", true)]
  [InlineData("tester", false)]
  [InlineData("1", true)]
  [InlineData("2", false)]
  [InlineData("te", true)]
  public void CompareNameTest(string value, bool expected)
  {
    TestCell cell = GetTestCell();
    cell.CompareName(value).Should().Be(expected);
  }

  [Fact]
  public void CompareNameNameNullEmptyTest()
  {
    TestCell value = new(1, "");

    Action act = () => value.CompareName(string.Empty);
    act.Should().Throw<ArgumentNullException>();
  }
}
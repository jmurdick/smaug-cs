﻿using System;
using System.Collections.Generic;
using FluentAssertions;
using Library.Common.Objects;
using Xunit;

namespace Library.Common.Tests.Extensions;

public class ObjectExtensionTest
{
  [Fact]
  public void CastAsTest()
  {
    const string value = "1";

    value.CastAs<int>().Should().Be(1);
  }

  [Theory]
  [InlineData("1", 1)]
  [InlineData("one", 5)]
  public void TryCastAsTest(string value, int expected)
  {
    value.TryCastAs(expected).Should().Be(expected);
  }

  [Fact]
  public void ToNullableTest()
  {
    const int intValue = 5;
    int? nullableValue = 5;

    int? actual = intValue.ToNullable<int>();

    actual.Should().NotBeNull();
    actual.Should().Be(nullableValue);
    actual.GetValueOrDefault(1).Should().Be(intValue);
  }

  [Fact]
  public void OrElseTest()
  {
    object obj = new();
    object result = obj.OrElse(null);

    result.Should().NotBeNull();
    result.Should().Be(obj);
  }

  [Fact]
  public void IsNullOrDbNull_IsNull_Test()
  {
    ObjectExtensions.IsNullOrDBNull<object>(null).Should().BeTrue();
  }

  [Fact]
  public void IsNullOrDbNull_IsDbNull_Test()
  {
    ObjectExtensions.IsNullOrDBNull<object>(DBNull.Value).Should().BeTrue();
  }

  [Fact]
  public void IsEmptyTest()
  {
    List<int> list = [];

    list.IsEmpty().Should().BeTrue();
  }
}
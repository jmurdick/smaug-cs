﻿using FluentAssertions;
using Library.Common.Extensions;
using Xunit;

namespace Library.Common.Tests.Extensions;

public class DelimiterTypeExtensionTest
{
  [Theory]
  [InlineData(DelimiterType.Backslash, "/")]
  [InlineData(DelimiterType.Colon, ":")]
  [InlineData(DelimiterType.Comma, ",")]
  [InlineData(DelimiterType.Equals, "=")]
  [InlineData(DelimiterType.Period, ".")]
  [InlineData(DelimiterType.Punctuation, ",:.=")]
  [InlineData(DelimiterType.Whitespace, "\t\n\r ")]
  public void ValueOfTest(DelimiterType type, string expected)
  {
    type.ValueOf().Should().Be(expected);
  }
}
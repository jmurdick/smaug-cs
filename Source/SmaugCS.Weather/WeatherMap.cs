﻿using SmaugCS.Common;
using SmaugCS.Common.Enumerations;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Weather.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using EnumerationExtensions = Library.Common.Extensions.EnumerationExtensions;
using HemisphereTypes = SmaugCS.Common.Enumerations.HemisphereTypes;

namespace SmaugCS.Weather;

public class WeatherMap
{
  private readonly WeatherCell[][] _map;
  private readonly WeatherCell[][] _delta;

  public IEnumerable<string> StarMap { get; private set; }
  public IEnumerable<string> SunMap { get; private set; }
  public IEnumerable<string> MoonMap { get; private set; }

  public int Width { get; }
  public int Height { get; }

  //public static string WeatherFile => SystemConstants.GetSystemFile(SystemFileTypes.Weather);

  #region Function Maps

  private static readonly Dictionary<ClimateTypes, Action<TimeInfoData, WeatherCell, WeatherCell>> EnforceFuncs =
    new()
    {
        { ClimateTypes.Rainforest, EnforceRainforest },
        { ClimateTypes.Savanna, EnforceSavanna },
        { ClimateTypes.Desert, EnforceDesert },
        { ClimateTypes.Steppe, EnforceSteppe },
        { ClimateTypes.Chapparal, EnforceChapparal },
        { ClimateTypes.Grasslands, EnforceGrasslands },
        { ClimateTypes.Deciduous, EnforceDeciduous },
        { ClimateTypes.Taiga, EnforceTaiga },
        { ClimateTypes.Tundra, EnforceTundra },
        { ClimateTypes.Alpine, EnforceAlpine },
        { ClimateTypes.Arctic, EnforceArctic }
      };

  private static readonly Dictionary<PrecipitationTypes, Action<WeatherCell, WeatherCell>> PrecipFuncs = new()
  {
      { PrecipitationTypes.Torrential, TorrentialWeatherMessage },
      { PrecipitationTypes.CatsAndDogs, CatsAndDogsWeatherMessage },
      { PrecipitationTypes.Pouring, PouringWeatherMessage },
      { PrecipitationTypes.Heavily, HeavilyWeatherMessage },
      { PrecipitationTypes.Downpour, DownpourWeatherMessage },
      { PrecipitationTypes.Steadily, SteadilyWeatherMessage },
      { PrecipitationTypes.Raining, RainingWeatherMessage },
      { PrecipitationTypes.Lightly, LightlyWeatherMessage },
      { PrecipitationTypes.Drizzling, DrizzlingWeatherMessage },
      { PrecipitationTypes.Misting, MistingWeatherMessage },
      { PrecipitationTypes.None, NoPrecipWeatherMessage }
    };

  #endregion

  private readonly TimeInfoData _gameTime;

  public WeatherMap(TimeInfoData gameTime, int width, int height)
  {
    _gameTime = gameTime;
    Width = width;
    Height = height;

    _map = new WeatherCell[width][];
    for (int i = 0; i < width; i++)
      _map[i] = new WeatherCell[height];

    _delta = new WeatherCell[width][];
    for (int i = 0; i < width; i++)
      _delta[i] = new WeatherCell[height];

    StarMap = new List<string>();
    SunMap = new List<string>();
    MoonMap = new List<string>();
  }

  public WeatherMap(TimeInfoData gameTime, int width, int height, IEnumerable<WeatherCell> cells)
    : this(gameTime, width, height)
  {
    foreach (WeatherCell cell in cells)
    {
      _map[cell.XCoord][cell.YCoord] = cell;
    }
  }

  public void LoadMap(SystemFileTypes fileType, IEnumerable<string> map)
  {
    // TODO
    //var path = SystemConstants.GetSystemFile(fileType);

    //using (var proxy = new TextReaderProxy(new StreamReader(path)))
    //{
    //    IEnumerable<string> lines = proxy.ReadIntoList();
    //    if (!lines.Any())
    //        throw new InvalidDataException($"Missing data for {fileType}");

    //    map.ToList().AddRange(lines);
    //}
  }

  public WeatherCell GetCellFromMap(int x, int y)
  {
    if (x < 0 || y < 0 || x >= _map.GetLength(0) || y >= _map.GetLength(1))
      return null;

    return _map[x][y];
  }

  public WeatherCell GetCellFromDelta(int x, int y)
  {
    if (x < 0 || y < 0 || x >= _delta.GetLength(0) || y >= _delta.GetLength(1))
      return null;

    return _delta[x][y];
  }

  public void Initialize()
  {
    for (int y = 0; y < Height; y++)
    {
      for (int x = 0; x < Width; x++)
      {
        WeatherCell cell = new(0)
        {
          Hemisphere =
            EnumerationExtensions.GetEnum<HemisphereTypes>(SmaugRandom.Between(0, 1))
        };

        cell.ChangeTemperature(SmaugRandom.Between(-30, 100));
        cell.ChangePressure(SmaugRandom.Between(0, 100));
        cell.ChangeCloudCover(SmaugRandom.Between(0, 100));
        cell.ChangeHumidity(SmaugRandom.Between(0, 100));
        cell.ChangePrecip(SmaugRandom.Between(0, 100));
        cell.ChangeWindSpeedX(SmaugRandom.Between(-100, 100));
        cell.ChangeWindSpeedY(SmaugRandom.Between(-100, 100));
        cell.ChangeEnergy(SmaugRandom.Between(0, 100));

        _map[x][y] = cell;
      }
    }
  }

  public void EnforceClimateConditions()
  {
    for (int y = 0; y < Height; y++)
    {
      for (int x = 0; x < Width; x++)
      {
        WeatherCell cell = GetCellFromMap(x, y);
        WeatherCell delta = GetCellFromDelta(x, y);

        if (!EnforceFuncs.TryGetValue(cell.Climate, out Action<TimeInfoData, WeatherCell, WeatherCell> func))
          continue;

        func.Invoke(_gameTime, cell, delta);
      }
    }
  }

  #region Enforce Climate Functions

  private static void EnforceRainforest(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
    if (cell.Temperature < 80)
      delta.ChangeTemperature(3);
    else if (cell.Temperature < 50)
      delta.ChangeHumidity(2);
  }

  private static void EnforceSavanna(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
    if (gameTime.Season == SeasonTypes.Winter
        && cell.Hemisphere == HemisphereTypes.North
        && cell.Humidity > 0)
      delta.ChangeHumidity(-5);
    else if (cell.Temperature < 60)
      delta.ChangePrecip(2);
    else switch (gameTime.Season)
    {
      case SeasonTypes.Summer 
             when cell.Hemisphere == HemisphereTypes.North
                  && cell.Humidity < 50:
        delta.ChangeHumidity(5);
        break;
      case SeasonTypes.Summer 
             when cell.Hemisphere == HemisphereTypes.South
                  && cell.Humidity > 0:
        delta.ChangeHumidity(-5);
        break;
      case SeasonTypes.Winter 
             when cell.Hemisphere == HemisphereTypes.South
                  && cell.Humidity < 50:
        delta.ChangeHumidity(5);
        break;
      case SeasonTypes.Spring:
        break;
      case SeasonTypes.Fall:
        break;
      default:
        throw new ArgumentOutOfRangeException();
    }
  }

  private static void EnforceDesert(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
    switch (gameTime.Sunlight)
    {
      case SunPositionTypes.Sunset or SunPositionTypes.Dark 
        when cell.Temperature > 30:
        delta.ChangeTemperature(-5);
        break;
      case SunPositionTypes.Sunrise or SunPositionTypes.Light 
             when cell.Temperature < 64:
        delta.ChangeTemperature(2);
        break;
      default:
      {
        if (cell.Humidity > 10)
          delta.ChangeHumidity(-2);
        else if (cell.Pressure < 50)
          delta.ChangePressure(2);
        break;
      }
    }
  }

  private static void EnforceSteppe(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceChapparal(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceGrasslands(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceDeciduous(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceTaiga(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceTundra(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceAlpine(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  private static void EnforceArctic(TimeInfoData gameTime, WeatherCell cell, WeatherCell delta)
  {
  }

  #endregion

  public void Save()
  {
    // TODO
    //using (var proxy = new TextWriterProxy(new StreamWriter(WeatherFile)))
    //{
    //    for (var y = 0; y < Height; y++)
    //    {
    //        for (var x = 0; x < Width; x++)
    //        {
    //            var cell = GetCellFromMap(x, y);

    //            proxy.Write("#CELL		  {0} {1}\n", x, y);
    //            proxy.Write("Climate      {0}\n", cell.Climate);
    //            proxy.Write("Hemisphere   {0}\n", cell.Hemisphere);
    //            proxy.Write("State        {0}\n",
    //                $"{cell.CloudCover} {cell.Energy} {cell.Humidity} {cell.Precipitation} {cell.Pressure} {cell.Temperature} {cell.WindSpeedX} {cell.WindSpeedY}");
    //            proxy.Write("End\n\n");
    //        }
    //    }
    //    proxy.Write("\n#END\n\n");
    //}
  }

  public void ApplyDeltaChanges()
  {
    for (int y = 0; y < Height; y++)
    {
      for (int x = 0; x < Width; x++)
      {
        WeatherCell cell = GetCellFromMap(x, y);
        WeatherCell delta = GetCellFromDelta(x, y);

        PrecipitationTypes precipType = WeatherCell.GetPrecipitation(cell.Precipitation);
        if (!PrecipFuncs.TryGetValue(precipType, out Action<WeatherCell, WeatherCell> func))
          continue;

        func.Invoke(cell, delta);

        cell.Temperature = (cell.Temperature + delta.Temperature).GetNumberThatIsBetween(-30, 100);
        cell.Pressure = (cell.Pressure + delta.Pressure).GetNumberThatIsBetween(0, 100);
        cell.CloudCover = (cell.CloudCover + delta.CloudCover).GetNumberThatIsBetween(0, 100);
        cell.Energy = (cell.Energy + delta.Energy).GetNumberThatIsBetween(0, 100);
        cell.Humidity = (cell.Humidity + delta.Humidity).GetNumberThatIsBetween(0, 100);
        cell.Precipitation = (cell.Precipitation + delta.Precipitation).GetNumberThatIsBetween(0, 100);
        cell.WindSpeedX = (cell.WindSpeedX + delta.WindSpeedX).GetNumberThatIsBetween(-100, 100);
        cell.WindSpeedY = (cell.WindSpeedY + delta.WindSpeedY).GetNumberThatIsBetween(-100, 100);
      }
    }
  }

  #region Weather Message Functions

  private static void TorrentialWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void CatsAndDogsWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void PouringWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void HeavilyWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void DownpourWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void SteadilyWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void RainingWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void LightlyWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void DrizzlingWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void MistingWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  private static void NoPrecipWeatherMessage(WeatherCell cell, WeatherCell delta)
  {
  }

  #endregion

  private void PickAndUpdateRandomCell()
  {
    int x = SmaugRandom.Between(0, Width);
    int y = SmaugRandom.Between(0, Height);

    WeatherCell cell = GetCellFromMap(x, y);

    int rand = SmaugRandom.Between(-10, 10);

    switch (SmaugRandom.D8())
    {
      case 1:
        cell.ChangeCloudCover(rand);
        break;
      case 2:
        cell.ChangeEnergy(rand);
        break;
      case 3:
        cell.ChangeHumidity(rand);
        break;
      case 4:
        cell.ChangePrecip(rand);
        break;
      case 5:
        cell.ChangePressure(rand);
        break;
      case 6:
        cell.ChangeTemperature(rand);
        break;
      case 7:
        cell.ChangeWindSpeedX(rand);
        break;
      case 8:
        cell.ChangeWindSpeedY(rand);
        break;
    }
  }

  public void CalculateCellToCellChanges(TimeInfoData gameTime)
  {
    PickAndUpdateRandomCell();

    for (int y = 0; y < Height; y++)
    {
      for (int x = 0; x < Width; x++)
      {
        WeatherCell cell = GetCellFromMap(x, y);
        WeatherCell delta = GetCellFromDelta(x, y);

        AdjustTemperatureForDayNight(gameTime, delta, cell);
        AdjustHumidityForPrecipitation(cell, delta);
        AdjustPrecipitationForHumidityAndPressure(cell);
        AdjustCloudCoverForHumitityAndPrecipitation(cell, delta);

        int totalPressure = cell.Pressure;
        int numPressureCells = -1;

        for (int dy = -1; dy <= 1; ++dy)
        {
          for (int dx = -1; dx <= 1; ++dx)
          {
            int nx = x + dx;
            int ny = y + dy;

            if (dx == 0 && dy == 0)
              continue;

            if (nx < 0 || nx >= Width || ny < 0 || ny >= Height)
              continue;

            WeatherCell neighborCell = GetCellFromMap(nx, ny);
            WeatherCell neighborDelta = GetCellFromDelta(nx, ny);

            totalPressure = AdjustWindSpeedsBasedOnPressure(cell, neighborCell, dx, delta, dy,
              totalPressure);
            ++numPressureCells;

            AdjustTemperatureAndHumidityWhenWindy(cell, neighborCell, dx, dy, neighborDelta, delta);
          }
        }

        ChangePressure(delta, totalPressure, numPressureCells, cell);
      }
    }
  }

  private static void ChangePressure(WeatherCell delta, int totalPressure, int numPressureCells, WeatherCell cell)
  {
    delta.Pressure = totalPressure / numPressureCells - cell.Pressure;

    if (cell.Precipitation >= 70)
      delta.ChangePressure(0 - cell.Pressure / 2);
    else if (cell.Pressure < 70 && cell.Precipitation > 30)
      delta.ChangePressure(SmaugRandom.Between(-5, 5));
    else
      delta.ChangePressure(cell.Pressure / 2);
  }

  private static int AdjustWindSpeedsBasedOnPressure(WeatherCell cell, WeatherCell neighborCell, int dx,
    WeatherCell delta,
    int dy, int totalPressure)
  {
    int pressureDelta = cell.Pressure - neighborCell.Pressure;
    int windSpeedDleta = pressureDelta / 4;

    if (dx != 0)
      delta.ChangeWindSpeedX(windSpeedDleta * dx);
    if (dy != 0)
      delta.ChangeWindSpeedY(windSpeedDleta * dy);

    totalPressure += neighborCell.Pressure;
    return totalPressure;
  }

  private static void AdjustTemperatureAndHumidityWhenWindy(WeatherCell cell, WeatherCell neighborCell, int dx, int dy,
    WeatherCell neighborDelta, WeatherCell delta)
  {
    int temperatureDelta = cell.Temperature + neighborCell.Temperature;
    temperatureDelta /= 16;

    int humidityDelta = cell.Humidity - neighborCell.Humidity;
    humidityDelta /= 16;

    if ((cell.WindSpeedX < 0 && dx < 0)
        || (cell.WindSpeedX > 0 && dx > 0)
        || (cell.WindSpeedY < 0 && dy < 0)
        || (cell.WindSpeedY > 0 && dy > 0))
    {
      neighborDelta.ChangeTemperature(temperatureDelta);
      neighborDelta.ChangeHumidity(humidityDelta);
      delta.ChangeTemperature(0 - temperatureDelta);
      delta.ChangeHumidity(0 - humidityDelta);
    }

    delta.ChangeEnergy(SmaugRandom.Between(-10, 10));
  }

  private static void AdjustCloudCoverForHumitityAndPrecipitation(WeatherCell cell, WeatherCell delta)
  {
    int humidityAndPrecip = cell.Humidity + cell.Precipitation;
    switch (humidityAndPrecip / 2)
    {
      case >= 60:
        delta.ChangeCloudCover(0 - cell.Humidity / 10);
        break;
      case < 60 and > 40:
        delta.ChangeCloudCover(SmaugRandom.Between(-2, 2));
        break;
      default:
        delta.ChangeCloudCover(cell.Humidity / 5);
        break;
    }
  }

  private static void AdjustPrecipitationForHumidityAndPressure(WeatherCell cell)
  {
    int humidityAndPressure = cell.Humidity + cell.Pressure;
    switch (humidityAndPressure / 2)
    {
      case >= 60:
        cell.ChangePrecip(cell.Humidity / 10);
        break;
      case < 60 and > 40:
        cell.ChangePrecip(SmaugRandom.Between(-2, 2));
        break;
      default:
        cell.ChangePrecip(0 - cell.Humidity / 5);
        break;
    }
  }

  private static void AdjustHumidityForPrecipitation(WeatherCell cell, WeatherCell delta)
  {
    if (cell.Precipitation > 40)
      delta.ChangeHumidity(0 - cell.Precipitation / 20);
    else
      delta.ChangeHumidity(SmaugRandom.Between(0, 3));
  }

  private static void AdjustTemperatureForDayNight(TimeInfoData gameTime, WeatherCell delta, WeatherCell cell)
  {
    if (gameTime.Sunlight is SunPositionTypes.Sunrise or SunPositionTypes.Light)
      delta.ChangeTemperature(SmaugRandom.Between(-1, 2) + (cell.CloudCover / 10 > 5 ? -1 : 1));
    else
      delta.ChangeTemperature(SmaugRandom.Between(-2, 0) + (cell.CloudCover / 10 > 5 ? 2 : -3));
  }

  public void ClearWeatherDeltas()
  {
    _delta.Initialize();
  }

  public void RandomizeCells(TimeInfoData gameTime)
  {
    for (int y = 0; y < Height; y++)
    {
      for (int x = 0; x < Width; x++)
      {
        WeatherCell cell = GetCellFromMap(x, y);

        WeatherRangeData rangeData = WeatherConstants.WeatherData.FirstOrDefault(d => d.Hemisphere == cell.Hemisphere
                                                                         && d.Season == gameTime.Season
                                                                         && d.Climate == cell.Climate);
        if (rangeData == null)
        {
          // TODO Error
          continue;
        }

        cell.ChangeTemperature(
          SmaugRandom.Between(rangeData.Temperature.ToList()[0], rangeData.Temperature.ToList()[1]));
        cell.ChangePressure(SmaugRandom.Between(rangeData.Pressure.ToList()[0], rangeData.Pressure.ToList()[1]));
        cell.ChangeCloudCover(SmaugRandom.Between(rangeData.CloudCover.ToList()[0], rangeData.CloudCover.ToList()[1]));
        cell.ChangeHumidity(SmaugRandom.Between(rangeData.Humidity.ToList()[0], rangeData.Humidity.ToList()[1]));
        cell.ChangePrecip(SmaugRandom.Between(rangeData.Precipitation.ToList()[0],
          rangeData.Precipitation.ToList()[1]));
        cell.ChangeEnergy(SmaugRandom.Between(rangeData.Energy.ToList()[0], rangeData.Energy.ToList()[1]));
        cell.ChangeWindSpeedX(SmaugRandom.Between(rangeData.WindSpeedX.ToList()[0], rangeData.WindSpeedX.ToList()[1]));
        cell.ChangeWindSpeedY(SmaugRandom.Between(rangeData.WindSpeedY.ToList()[0], rangeData.WindSpeedY.ToList()[1]));
      }
    }
  }

  public void Update(TimeInfoData gameTime, bool save = false)
  {
    ClearWeatherDeltas();
    CalculateCellToCellChanges(gameTime);
    EnforceClimateConditions();
    ApplyDeltaChanges();

    if (save)
      Save();
  }
}
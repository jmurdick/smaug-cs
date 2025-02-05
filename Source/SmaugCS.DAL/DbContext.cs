﻿using Microsoft.Extensions.Logging;
using MongoDB.Bson.Serialization;
using MongoDB.Bson;
using MongoDB.Driver.Linq;
using MongoDB.Driver;
using SmaugCS.DAL.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using SmaugCS.DAL.Exceptions;

namespace SmaugCS.DAL;

public partial class DbContext : Library.Common.Objects.Entity, IDbContext
{
  private readonly string _connectionString;
  private readonly ILogger _logger;
  private IMongoDatabase _database;

  public IMongoDatabase Database
  {
    get
    {
      if (_database != null)
      {
        return _database;
      }

      MongoClient client = new(_connectionString);
      _database = client.GetDatabase(MongoUrl.Create(_connectionString).DatabaseName);
      return _database;
    }
  }

  private IMongoCollection<Character> Characters => Database.GetCollection<Character>(CollectionNames.Characters);

  private IMongoCollection<News> News => Database.GetCollection<News>(CollectionNames.News);

  private IMongoCollection<Auction> Auctions => Database.GetCollection<Auction>(CollectionNames.Auctions);

  private IMongoCollection<Clan> Clans => Database.GetCollection<Clan>(CollectionNames.Clans);

  private IMongoCollection<Ban> Bans => Database.GetCollection<Ban>(CollectionNames.Bans);

  private IMongoCollection<Board> Boards => Database.GetCollection<Board>(CollectionNames.Boards);

  private IMongoCollection<Organization> Organizations => Database.GetCollection<Organization>(CollectionNames.Organizations);

  private IMongoCollection<Log> Logs => Database.GetCollection<Log>(CollectionNames.Logs);

  private IMongoCollection<WeatherCell> Weather => Database.GetCollection<WeatherCell>(CollectionNames.Weather);

  private IMongoCollection<GameState> GameStates => Database.GetCollection<GameState>(CollectionNames.GameStates);

  private IMongoCollection<Session> Sessions => Database.GetCollection<Session>(CollectionNames.Sessions);

  public DbContext(string connectionString, ILogger<DbContext> logger) : base(1, typeof(DbContext).FullName)
  {
    _connectionString = connectionString;
    _logger = logger;
    Registrations();
  }

  private IMongoCollection<T> GetMongoCollection<T>() where T : class, IEntity
  {
    Type type = typeof(T);
    if (type == typeof(Character)) return (IMongoCollection<T>)Characters;
    if (type == typeof(News)) return (IMongoCollection<T>)News;
    if (type == typeof(Auction)) return (IMongoCollection<T>)Auctions;
    if (type == typeof(Clan)) return (IMongoCollection<T>)Clans;
    if (type == typeof(Ban)) return (IMongoCollection<T>)Bans;
    if (type == typeof(Board)) return (IMongoCollection<T>)Boards;
    if (type == typeof(Organization)) return (IMongoCollection<T>)Organizations;
    if (type == typeof(Log)) return (IMongoCollection<T>)Logs;
    if (type == typeof(WeatherCell)) return (IMongoCollection<T>)Weather;
    if (type == typeof(GameState)) return (IMongoCollection<T>)GameStates;
    if (type == typeof(Session)) return (IMongoCollection<T>)Sessions;
    return null;
  }

  private static readonly List<Type> KnownClassTypes =
  [
    typeof(Auction), typeof(Ban), typeof(Board), typeof(Character), typeof(Clan), typeof(News), typeof(Note),
    typeof(Organization)
  ];

  private void Registrations()
  {
    KnownClassTypes.ForEach(t =>
    {
      if (BsonClassMap.IsClassMapRegistered(t)) return;

      BsonClassMap bsonClassMap = new(t);
      bsonClassMap.AutoMap();
      bsonClassMap.SetDiscriminator(t.FullName);
      BsonClassMap.RegisterClassMap(bsonClassMap);
    });

    ProcessSpecialMapping();
  }

  private static void ProcessSpecialMapping()
  {
    //// Auction
    //if (!BsonClassMap.IsClassMapRegistered(typeof(AuctionBid)))
    //{
    //    BsonClassMap.RegisterClassMap<AuctionBid>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Auction);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(AuctionItem)))
    //{
    //    BsonClassMap.RegisterClassMap<AuctionItem>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Auction);
    //    });
    //}


    //// Character
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterBank)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterBank>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterBankItem)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterBankItem>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Bank);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterChannel)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterChannel>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterEffect)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterEffect>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterFormula)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterFormula>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterItem)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterItem>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterMail)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterMail>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterMailItem)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterMailItem>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Letter);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterMemory)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterMemory>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterProfession)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterProfession>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterQuest)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterQuest>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterRitual)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterRitual>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
    //if (!BsonClassMap.IsClassMapRegistered(typeof(CharacterSkill)))
    //{
    //    BsonClassMap.RegisterClassMap<CharacterSkill>(cm =>
    //    {
    //        cm.AutoMap();
    //        cm.UnmapMember(m => m.Character);
    //    });
    //}
  }

  #region Health Check

  private static Tuple<string, string> _databaseInfo;

  public virtual Tuple<string, string> GetDatabaseInfo()
  {
    if (_databaseInfo != null) return _databaseInfo;

    MongoUrl url = MongoUrl.Create(_connectionString);
    _databaseInfo = new Tuple<string, string>(url.Server.Host, url.DatabaseName);
    return _databaseInfo;
  }

  public virtual async Task<string> CheckConnectionAsync()
  {
    try
    {
      BsonDocument result = await Database.RunCommandAsync((Command<BsonDocument>)"{ping:1}");
      return result == null ? "Could not connect" : "";
    }
    catch (Exception ex)
    {
      return ex.Message;
    }
  }

  #endregion

  #region Base Methods

  public virtual IMongoCollection<T> GetCollection<T>(string name)
  {
    return Database.GetCollection<T>(name);
  }

  public virtual T Get<T>(Guid id, string collectionName) where T : Entity
  {
    IMongoCollection<T> collection = Database.GetCollection<T>(collectionName);
    FilterDefinition<T> filter = Builders<T>.Filter.Where(x => x.Id == id);

    IFindFluent<T, T> results = collection.Find(filter);
    return results.FirstOrDefault();
  }

  public virtual T Get<T>(FilterDefinition<T> filter, string collectionName) where T : Entity
  {
    IMongoCollection<T> collection = Database.GetCollection<T>(collectionName);

    IFindFluent<T, T> results = collection.Find(filter);
    return results.FirstOrDefault();
  }

  public virtual IMongoQueryable<T> GetList<T>(string collectionName) where T : Entity
  {
    IMongoCollection<T> collection = Database.GetCollection<T>(collectionName);
    return collection.AsQueryable();
  }

  #endregion

  #region Additional CRUD Async Methods

  public virtual async Task<long> CountAsync<TEntity>() where TEntity : class, IEntity
  {
    try
    {
      IMongoCollection<TEntity> collection = GetMongoCollection<TEntity>();
      if (collection == null) return 0;

      return await collection.CountDocumentsAsync(_ => true);
    }
    catch (Exception ex)
    {
      _logger.LogError(ex.Message, ex);
      throw new DbException(ex.Message, ex);
    }
  }

  public virtual async Task<IEnumerable<TEntity>> GetAllAsync<TEntity>() where TEntity : class, IEntity
  {
    try
    {
      IMongoCollection<TEntity> collection = GetMongoCollection<TEntity>();
      if (collection == null) return new List<TEntity>();

      return await (await collection.FindAsync(_ => true)).ToListAsync();
    }
    catch (Exception ex)
    {
      _logger.LogError(ex.Message, ex);
      throw new DbException(ex.Message, ex);
    }
  }

  public virtual async Task<TEntity> GetAsync<TEntity>(long id) where TEntity : class, IEntity
  {
    try
    {
      IMongoCollection<TEntity> collection = GetMongoCollection<TEntity>();
      if (collection == null) return null;

      FilterDefinition<TEntity> filter = Builders<TEntity>.Filter.Where(x => x.Id == id);
      IAsyncCursor<TEntity> results = await collection.FindAsync(filter);
      return await results.FirstOrDefaultAsync();
    }
    catch (Exception ex)
    {
      _logger.LogError(ex.Message, ex);
      throw new DbException(ex.Message, ex);
    }
  }

  public virtual async Task<TEntity> AddOrUpdateAsync<TEntity>(TEntity entity) where TEntity : class, IEntity
  {
    try
    {
      IMongoCollection<TEntity> collection = GetMongoCollection<TEntity>();
      if (collection == null) return null;

      FilterDefinition<TEntity> filter = Builders<TEntity>.Filter.Where(x => x.Id == entity.Id);
      IAsyncCursor<TEntity> results = await collection.FindAsync(filter);

      if (!await results.AnyAsync())
      {
        await collection.InsertOneAsync(entity);
      }
      else
      {
        await collection.ReplaceOneAsync(filter, entity);
      }

      return entity;
    }
    catch (Exception ex)
    {
      _logger.LogError(ex.Message, ex);
      throw new DbException(ex.Message, ex);
    }
  }

  public virtual async Task DeleteAsync<TEntity>(TEntity entity) where TEntity : class, IEntity
  {
    try
    {
      IMongoCollection<TEntity> collection = GetMongoCollection<TEntity>();
      if (collection == null) return;

      FilterDefinition<TEntity> filter = Builders<TEntity>.Filter.Where(x => x.Id == entity.Id);
      DeleteResult results = await collection.DeleteOneAsync(filter);

      if (results.DeletedCount > 1)
      {
        throw new Exception($"Deleted {results.DeletedCount} records!");
      }
    }
    catch (Exception ex)
    {
      _logger.LogError(ex.Message, ex);
      throw new DbException(ex.Message, ex);
    }
  }

  #endregion

  #region Additional CRUD Sync Methods

  public virtual IEnumerable<TEntity> GetAll<TEntity>() where TEntity : class, IEntity
  {
    return Task.Run(async () => await GetAllAsync<TEntity>()).Result;
  }

  public virtual TEntity Get<TEntity>(long id) where TEntity : class, IEntity
  {
    return Task.Run(async () => await GetAsync<TEntity>(id)).Result;
  }

  public virtual TEntity AddOrUpdate<TEntity>(TEntity entity) where TEntity : class, IEntity
  {
    return Task.Run(async () => await AddOrUpdateAsync(entity)).Result;
  }

  public virtual long Count<TEntity>() where TEntity : class, IEntity
  {
    return Task.Run(async () => await CountAsync<TEntity>()).Result;
  }

  public virtual void Delete<TEntity>(TEntity entity) where TEntity : class, IEntity
  {
    Task.Run(async () => await DeleteAsync(entity));
  }

  #endregion
}
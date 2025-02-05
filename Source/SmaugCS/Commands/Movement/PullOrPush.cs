﻿using System;
using System.IO;
using System.Linq;
using Autofac;
using SmaugCS.Common;
using SmaugCS.Constants.Constants;
using SmaugCS.Constants.Enums;
using SmaugCS.Data;
using SmaugCS.Data.Instances;
using SmaugCS.Data.Templates;
using SmaugCS.Extensions;
using SmaugCS.Extensions.Character;
using SmaugCS.Extensions.Objects;
using SmaugCS.MudProgs;
using SmaugCS.Spells;

namespace SmaugCS.Commands.Movement;

public static class PullOrPush
{
  public static void pullorpush(CharacterInstance ch, ObjectInstance obj, bool pull)
  {
    bool isUp = obj.Values.Flags.IsSet(TriggerFlags.Up);
    if (CheckForValidObjectState(ch, obj, pull, isUp)) return;

    if (CheckAndFirePullProg(pull, obj, ch)) return;
    if (CheckAndFirePushProg(pull, obj, ch)) return;
    if (CheckAndFireOProgUseTrigger(pull, ch, obj)) return;

    if (!obj.Values.Flags.IsSet(TriggerFlags.AutoReturn))
    {
      obj.Values.Flags = pull
        ? obj.Values.Flags.RemoveBit(TriggerFlags.Up)
        : obj.Values.Flags.SetBit(TriggerFlags.Up);
    }

    if (CheckAndFireTeleportTrigger(ch, obj)) return;
    if (CheckAndFireRandom(ch, obj)) return;
    if (CheckAndFireDeathTrigger(ch, obj)) return;
    if (CheckAndFireObjectLoading(ch, obj)) return;
    if (CheckAndFireMobLoading(ch, obj)) return;
    if (CheckAndFireSpell(ch, obj)) return;
    if (CheckAndFireContainer(ch, obj)) return;
    if (CheckAndFireDoor(ch, obj)) return;
  }

  private static bool CheckAndFireDoor(CharacterInstance ch, ObjectInstance obj)
  {
    if (!obj.Values.Flags.IsSet(TriggerFlags.Door)) return false;
    RoomTemplate room = Program.RepositoryManager.ROOMS.Get(obj.Values.Val1) ?? obj.InRoom;
    if (room == null)
      throw new InvalidDataException(string.Format("Room {0} was null", obj.Values.Val1));

    Tuple<DirectionTypes, string> exitDir = GetExitDirectionAndText(obj);

    ExitData exit = room.GetExit(exitDir.Item1);
    if (exit == null)
    {
      CreateNewPassage(ch, obj, exitDir.Item1);
      return true;
    }

    if (obj.Values.Flags.IsSet(TriggerFlags.Unlock) && exit.Flags.IsSet(ExitFlags.Locked))
    {
      UnlockExit(ch, exit, exitDir.Item2);
      return true;
    }

    if (obj.Values.Flags.IsSet(TriggerFlags.Lock) && !exit.Flags.IsSet(ExitFlags.Locked))
    {
      LockExit(ch, exit, exitDir.Item2);
      return true;
    }

    if (obj.Values.Flags.IsSet(TriggerFlags.Open) && exit.Flags.IsSet(ExitFlags.Closed))
    {
      OpenExit(ch, obj, exit, exitDir.Item2);
      return true;
    }

    if (!obj.Values.Flags.IsSet(TriggerFlags.Close) || exit.Flags.IsSet(ExitFlags.Closed)) return false;
    CloseExit(ch, obj, exit, exitDir.Item2);
    return true;
  }

  private static Tuple<DirectionTypes, string> GetExitDirectionAndText(ObjectInstance obj)
  {
    if (obj.Values.Flags.IsSet(TriggerFlags.D_North))
      return new Tuple<DirectionTypes, string>(DirectionTypes.North, "to the north");

    if (obj.Values.Flags.IsSet(TriggerFlags.D_South))
      return new Tuple<DirectionTypes, string>(DirectionTypes.South, "to the south");

    if (obj.Values.Flags.IsSet(TriggerFlags.D_East))
      return new Tuple<DirectionTypes, string>(DirectionTypes.East, "to the east");

    if (obj.Values.Flags.IsSet(TriggerFlags.D_West))
      return new Tuple<DirectionTypes, string>(DirectionTypes.West, "to the west");

    if (obj.Values.Flags.IsSet(TriggerFlags.D_Up))
      return new Tuple<DirectionTypes, string>(DirectionTypes.Up, "from above");

    if (obj.Values.Flags.IsSet(TriggerFlags.D_Down))
      return new Tuple<DirectionTypes, string>(DirectionTypes.Down, "from below");

    throw new InvalidDataException($"Object {obj.Id} has invalid direction");
  }

  private static void CreateNewPassage(CharacterInstance ch, ObjectInstance obj, DirectionTypes exitDir)
  {
    if (!obj.Values.Flags.IsSet(TriggerFlags.Passage))
      throw new InvalidDataException($"Object {obj.Id} is not a passage");

    RoomTemplate sourceRoom = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[1]);
    if (sourceRoom == null)
      throw new InvalidDataException($"Source Room {obj.Value.ToList()[1]} was null");

    RoomTemplate destRoom = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[2]);
    if (destRoom == null)
      throw new InvalidDataException($"Destination Room {obj.Value.ToList()[2]} was null");

    ExitData exit = db.make_exit(sourceRoom, destRoom, (int)exitDir);
    exit.Key = -1;
    comm.act(ATTypes.AT_PLAIN, "A passage opens!", ch, null, null, ToTypes.Character);
    comm.act(ATTypes.AT_PLAIN, "A passage opens!", ch, null, null, ToTypes.Room);
  }

  private static void UnlockExit(CharacterInstance ch, ExitData exit, string txt)
  {
    exit.Flags = exit.Flags.RemoveBit(ExitFlags.Locked);
    comm.act(ATTypes.AT_PLAIN, "You hear a faint click $T.", ch, null, txt, ToTypes.Character);
    comm.act(ATTypes.AT_PLAIN, "You hear a faint click $T.", ch, null, txt, ToTypes.Room);
    exit.RemoveFlagFromSelfAndReverseExit(ExitFlags.Locked);
  }

  private static void LockExit(CharacterInstance ch, ExitData exit, string txt)
  {
    exit.Flags = exit.Flags.SetBit(ExitFlags.Locked);
    comm.act(ATTypes.AT_PLAIN, "You hear a faint click $T.", ch, null, txt, ToTypes.Character);
    comm.act(ATTypes.AT_PLAIN, "You hear a faint click $T.", ch, null, txt, ToTypes.Room);
    exit.SetFlagOnSelfAndReverseExit(ExitFlags.Locked);
  }

  private static void OpenExit(CharacterInstance ch, ObjectInstance obj, ExitData exit, string txt)
  {
    exit.Flags = exit.Flags.RemoveBit(ExitFlags.Closed);

    RoomTemplate room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[1]);
    if (room == null)
      throw new InvalidDataException($"Room {obj.Value.ToList()[1]} was null");

    foreach (CharacterInstance rch in room.Persons)
      comm.act(ATTypes.AT_ACTION, "The $d opens.", rch, null, exit.Keywords, ToTypes.Character);

    ExitData reverseExit = exit.GetReverse();
    if (reverseExit != null && reverseExit.Destination == exit.Destination)
    {
      reverseExit.Flags = reverseExit.Flags.RemoveBit(ExitFlags.Closed);

      RoomTemplate destRoom = exit.GetDestination(Program.RepositoryManager);
      foreach (CharacterInstance rch in destRoom.Persons)
        comm.act(ATTypes.AT_ACTION, "The $d opens.", rch, null, reverseExit.Keywords, ToTypes.Character);
    }

    // TODO Check room for traps
  }

  private static void CloseExit(CharacterInstance ch, ObjectInstance obj, ExitData exit, string txt)
  {
    exit.Flags = exit.Flags.SetBit(ExitFlags.Closed);

    RoomTemplate room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[1]);
    if (room == null)
      throw new InvalidDataException($"Room {obj.Value.ToList()[1]} was null");

    foreach (CharacterInstance rch in room.Persons)
      comm.act(ATTypes.AT_ACTION, "The $d closes.", rch, null, exit.Keywords, ToTypes.Character);

    ExitData reverseExit = exit.GetReverse();
    if (reverseExit != null && reverseExit.Destination == exit.Destination)
    {
      reverseExit.Flags = reverseExit.Flags.SetBit(ExitFlags.Closed);

      RoomTemplate destRoom = exit.GetDestination(Program.RepositoryManager);
      foreach (CharacterInstance rch in destRoom.Persons)
        comm.act(ATTypes.AT_ACTION, "The $d closes.", rch, null, reverseExit.Keywords, ToTypes.Character);
    }

    // TODO Check room for traps
  }

  private static bool CheckAndFireContainer(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Values.Flags.IsSet(TriggerFlags.Container))
    {
      RoomTemplate room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[1]) ?? obj.InRoom;
      if (room == null)
        throw new InvalidDataException($"Room {obj.Value.ToList()[1]} was null");

      ObjectInstance container =
        ch.CurrentRoom.Contents.FirstOrDefault(foundObj => foundObj.ObjectIndex.Id == obj.Value.ToList()[2]);

      if (container == null)
        throw new InvalidDataException($"Container {obj.Value.ToList()[2]} was null");

      if (container.ItemType != ItemTypes.Container)
        throw new InvalidDataException($"Container {container.Id} is not of type 'Container'");

      if (obj.Value.ToList()[3].IsSet(ContainerFlags.Closeable))
        container.Value.ToList()[1].ToggleBit(ContainerFlags.Closeable);
      if (obj.Value.ToList()[3].IsSet(ContainerFlags.PickProof))
        container.Value.ToList()[1].ToggleBit(ContainerFlags.PickProof);
      if (obj.Value.ToList()[3].IsSet(ContainerFlags.Closed))
        container.Value.ToList()[1].ToggleBit(ContainerFlags.Closed);
      if (obj.Value.ToList()[3].IsSet(ContainerFlags.Locked))
        container.Value.ToList()[1].ToggleBit(ContainerFlags.Locked);
      if (obj.Value.ToList()[3].IsSet(ContainerFlags.EatKey))
        container.Value.ToList()[1].ToggleBit(ContainerFlags.EatKey);

      return true;
    }

    return false;
  }

  private static bool CheckAndFireSpell(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Value.ToList()[0].IsSet(TriggerFlags.Cast))
    {
      if (obj.Value.ToList()[1] <= 0 || !Macros.IS_VALID_SN(obj.Value.ToList()[1]))
      {
        // TODO Exception, log it!
        return true;
      }

      int minLevel = obj.Value.ToList()[2] > 0 ? obj.Value.ToList()[2] : ch.Level;
      ch.ObjectCastSpell(obj.Value.ToList()[1], 1.GetNumberThatIsBetween(minLevel, LevelConstants.MaxLevel), ch);
      return true;
    }

    return false;
  }

  private static bool CheckAndFireMobLoading(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Value.ToList()[0].IsSet(TriggerFlags.MobileLoad))
    {
      MobileTemplate template = Program.RepositoryManager.MOBILETEMPLATES.Get(obj.Value.ToList()[1]);
      if (template == null)
      {
        // TODO Exception, log it!
        return true;
      }

      RoomTemplate room = ch.CurrentRoom;
      if (obj.Value.ToList()[2] > 0)
      {
        room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[2]);
        if (room == null)
        {
          // TODO Exception, log it!
          return true;
        }
      }

      CharacterInstance instance = Program.RepositoryManager.CHARACTERS.Create(template);
      if (instance == null)
      {
        // TODO Exception, log it!
        return true;
      }

      room.AddTo(instance);
      return true;
    }

    return false;
  }

  private static bool CheckForValidObjectState(CharacterInstance ch, ObjectInstance obj, bool pull, bool isUp)
  {
    if (obj.ItemType == ItemTypes.Switch
        || obj.ItemType == ItemTypes.Lever
        || obj.ItemType == ItemTypes.PullChain
        || obj.ItemType == ItemTypes.Button)
    {
      if ((!pull && isUp) || (pull && !isUp))
      {
        string state = string.Empty;
        if (obj.ItemType == ItemTypes.Button)
          state = isUp ? "in" : "out";
        else
          state = isUp ? "up" : "down";
        ch.Printf("It is already %s.", state);
        return true;
      }
    }
    else
    {
      ch.Printf("You can't %s that!", pull ? "pull" : "push");
      return true;
    }

    return true;
  }

  private static bool CheckAndFireObjectLoading(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Value.ToList()[0].IsSet((int)TriggerFlags.ObjectLoad))
    {
      ObjectTemplate template = Program.RepositoryManager.OBJECTTEMPLATES.Get(obj.Value.ToList()[1]);
      if (template == null)
      {
        // TODO Exception, log it!
        return true;
      }

      RoomTemplate room = null;
      if (obj.Value.ToList()[2] > 0)
      {
        room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[2]);
        if (room == null)
        {
          // TODO Exception, log it!
          return true;
        }
      }

      int level = 0.GetNumberThatIsBetween(obj.Value.ToList()[3], LevelConstants.MaxLevel);
      ObjectInstance instance = Program.RepositoryManager.OBJECTS.Create(template, level);
      if (instance == null)
      {
        // TODO Exception, log it!
        return true;
      }

      if (room != null)
        room.AddTo(instance);
      else
      {
        if (obj.WearFlags.IsSet(ItemWearFlags.Take))
          instance.AddTo(ch);
        else
          ch.CurrentRoom.AddTo(instance);
      }

      return true;
    }

    return false;
  }

  private static bool CheckAndFireDeathTrigger(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Value.ToList()[0].IsSet(TriggerFlags.Death))
    {
      comm.act(ATTypes.AT_DEAD, "$n falls prey to a terrible death!", ch, null, null, ToTypes.Room);
      comm.act(ATTypes.AT_DEAD, "Oopsie... you're dead!", ch, null, null, ToTypes.Character);

      // TODO Log a death trigger to Monitor channel?

      handler.set_cur_char(ch);
      ch.RawKill(ch);
      return true;
    }

    return false;
  }

  private static bool CheckAndFireRandom(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Value.ToList()[0].IsSet(TriggerFlags.Rand4) || obj.Value.ToList()[0].IsSet(TriggerFlags.Rand6))
    {
      RoomTemplate room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[1]);
      if (room == null)
      {
        // TODO Exception, log it!
        return true;
      }

      int maxd = obj.Value.ToList()[0].IsSet(TriggerFlags.Rand4) ? 3 : 5;

      db.randomize_exits(room, maxd);
      foreach (CharacterInstance rch in room.Persons)
      {
        rch.SendTo("You hear a loud rumbling sound.");
        rch.SendTo("Something seems different...");
      }

      return true;
    }

    return false;
  }

  private static bool CheckAndFireTeleportTrigger(CharacterInstance ch, ObjectInstance obj)
  {
    if (obj.Value.ToList()[0].IsSet(TriggerFlags.Teleport) || obj.Value.ToList()[0].IsSet(TriggerFlags.TeleportAll))
    {
      RoomTemplate room = Program.RepositoryManager.ROOMS.Get(obj.Value.ToList()[1]);
      if (room == null)
      {
        // TODO Exception, log it!
        return true;
      }

      int flags = 0;
      if (obj.Value.ToList()[0].IsSet(TriggerFlags.ShowRoomDescription))
        flags.SetBit(TeleportTriggerFlags.ShowDescription);
      if (obj.Value.ToList()[0].IsSet(TriggerFlags.TeleportAll))
        flags.SetBit(TeleportTriggerFlags.TransportAll);
      if (obj.Value.ToList()[0].IsSet(TriggerFlags.TeleportPlus))
        flags.SetBit(TeleportTriggerFlags.TransportAllPlus);

      act_move.teleport(ch, obj.Value.ToList()[1], flags);
      return true;
    }

    return false;
  }

  private static bool CheckAndFirePullProg(bool pull, ObjectInstance obj, CharacterInstance ch)
  {
    if (pull && obj.ObjectIndex.HasProg(MudProgTypes.Pull))
    {
      if (obj.Value.ToList()[0].IsSet(TriggerFlags.AutoReturn))
        obj.Value.ToList()[0].RemoveBit(TriggerFlags.Up);
      MudProgHandler.ExecuteObjectProg(Program.Container.Resolve<IMudProgHandler>(), MudProgTypes.Pull, ch, obj);
      return true;
    }

    return false;
  }

  private static bool CheckAndFirePushProg(bool push, ObjectInstance obj, CharacterInstance ch)
  {
    if (!push && obj.ObjectIndex.HasProg(MudProgTypes.Push))
    {
      if (obj.Value.ToList()[0].IsSet(TriggerFlags.AutoReturn))
        obj.Value.ToList()[0].SetBit(TriggerFlags.Up);
      MudProgHandler.ExecuteObjectProg(Program.Container.Resolve<IMudProgHandler>(), MudProgTypes.Push, ch, obj);
      return true;
    }

    return false;
  }

  private static bool CheckAndFireOProgUseTrigger(bool pull, CharacterInstance ch, ObjectInstance obj)
  {
    if (!MudProgHandler.ExecuteObjectProg(Program.Container.Resolve<IMudProgHandler>(), MudProgTypes.Use, ch, obj, null,
          null))
    {
      comm.act(ATTypes.AT_ACTION, $"$n {(pull ? "pulls" : "pushes")} $p.", ch, obj, null, ToTypes.Room);
      comm.act(ATTypes.AT_ACTION, $"You {(pull ? "pull" : "push")} $p.", ch, obj, null, ToTypes.Character);
      return true;
    }

    return false;
  }
}
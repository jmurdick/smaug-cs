﻿using SmaugCS.Communication;
using SmaugCS.Data.Instances;
using SmaugCS.Managers;

namespace SmaugCS.Commands.Social;

public static class Music
{
  public static void do_music(CharacterInstance ch, string argument)
  {
    ChatManager.SendToChat(ch, argument, ChannelTypes.Music, "music");
  }
}
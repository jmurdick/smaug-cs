﻿using SmaugCS.Communication;
using SmaugCS.Data.Instances;
using SmaugCS.Managers;

namespace SmaugCS.Commands.Social;

public static class AvTalk
{
  public static void do_avtalk(CharacterInstance ch, string argument)
  {
    ChatManager.SendToChat(ch, argument.Drunkify(ch), ChannelTypes.AvTalk, "avtalk");
  }
}
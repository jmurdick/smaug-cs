﻿using SmaugCS.Communication;
using SmaugCS.Data.Instances;
using SmaugCS.Managers;

namespace SmaugCS.Commands.Social;

public static class Answer
{
  public static void do_answer(CharacterInstance ch, string argument)
  {
    ChatManager.SendToChat(ch, argument, ChannelTypes.Ask, "answer");
  }
}
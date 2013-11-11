﻿
using SmaugCS.Constants.Enums;
using SmaugCS.Data.Instances;
using SmaugCS.Data.Organizations;
using SmaugCS.Extensions;
using SmaugCS.Managers;

namespace SmaugCS.Commands.Social
{
    public static class GuildTalk
    {
        public static void do_guildtalk(CharacterInstance ch, string argument)
        {
            if (ch.IsNotAuthorized())
            {
                color.send_to_char("Huh?\r\n", ch);
                return;
            }

            if (ch.IsNpc() ||
                ch.PlayerData.Clan == null ||
                ch.PlayerData.Clan.ClanType != ClanTypes.Guild)
            {
                color.send_to_char("Huh?\r\n", ch);
                return;
            }

            ChatManager.talk_channel(ch, argument, ChannelTypes.Guild, "guildtalk");
        }
    }
}

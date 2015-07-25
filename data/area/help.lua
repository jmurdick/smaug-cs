#HELPS

0 !~
Syntax: !

! repeats the last command you typed.
~

0 "REMOVE INVIS"~
Syntax: cast 'remove invis' <object>
 
This spell will make an invisible object in the character's inventory
visible.
This is an AGGRESSIVE spell when used on others. I.e, it will attack 
another player if you attempt to use it on them.
~

1 "SOUL PETRIFICATION" SOUL PETRIFICATION~
&YSyntax&W: cast 'soul petrification' self
 
This increases the users' fortitude making him/her a tougher opponent
in battle.
~

56 FOR~
Syntax:  for (argument) (command)
Syntax:  for (argument) (command) (target)

For allows an immortal to perform a command at or even on a large
number of targets.  The arguments include:  all, mobs, gods.

Example:  for gods gl, you will 'glance' in the room of every god
who is online (include link-dead)

You can also perform an action on the argument target.
Example:  for mobs poke #, you will perform the 'poke' social on
every mob in the game.

'For' does not override private flags.
~

51 BOARDS~
Syntax:  boards

This command displays statistics on all boards in the game.  Example:

imm.brd  Vnum: 1200 Read: 50 Post: 51 Rmv: 55 Max: 50 Posts: 1 Type: 0

The first column lists the board's filename (imm.brd)
Vnum   - object vnum to which the board is attached (object vnum must
		 be present to read the board, allowing a board to be placed in
		 one or many places by simply placing that object where needed)
Read   - minimum level required to read that board
Post   - minumum level required to post to that board
Remove - minumum level required to remove notes not addressed to 'All'
Max    - maximum number of posts the board is set to hold
Posts  - the current number of posts on the board
Type   - 0 = note board         1 = mail board


See Also:  BSTAT  BSET  MAKEBOARD
~

56 BSET~
Syntax:   bset (board filename) (command) (argument)
Example:  bset immortal.brd vnum 1200

BSET is used to set fields governing an individual board's operation.

Filename - filename to store the board's information (set first)
Vnum     - object vnum assigned to the board (see 'help boards')
Read     - the mininum level required to read the board
Post     - the minimum level required to post to the board
Remove   - the minumum level required to remove notes from the board
		   NOTE: notes addressed to 'all' can be removed by anyone
Maxpost  - maximum number of posts the board can hold
Filename - filename to store the board's information
Type     - 0 = note board         1 = mail board

Board groups:  (example:  bset druid.brd read_group guild of druids)
read_group    - group that may read that board, regardless of level
post_group    - group that may post to that board, regardless of level
extra_readers - char. who may read the board regardless of their level
extra_removers- char. who may remove notes from this board regardless
				  of their level or membership in a reader_group

See Also: BOARDS  MAKEBOARD  BSET
~

56 BSTAT~
Syntax:  bstat (board filename)

BSTAT is used to display the fields of an individual board.

(see 'help bset' for an explanation of each field)

See Also:  BSET  BOARDS  MAKEBOARD
~

56 MAKEBOARD~
Syntax:  makeboard (board filename)
Example: makeboard newboard.brd

Used to create a board file, which can then be defined using 'bset'.

See Also:  BSET  BSTAT  BOARDS
~

56 ''IMM AUTH' 'IMM AUTHORIZE'~
Associated help files: authorize
 
Authorize <player> name -- This is the command used to allow a player to
  continue in the Spectral Gate pre-auth area, but will make them choose
  a new name prior to entering the Academy.  Use this command if the name
  is questionable, modern, or rude.  If the name is acceptible, but in all
  caps, accept the name, but send them a tell requesting they not use all
  caps for their name in the future.
 
Authorize <player> yes -- This is used to accept a players name.  Once this
  command is used, the player requires no further Immortal commands to enter
  the Realms.
 
Authorize <player> no -- This command is exclusively used to deny players
  with extremely rude or profane names and banned sites.  Use this command
  sparingly.
 
Levels 51-54 have primary responsibility for character authorization.  All
Immortals should periodically type 'authorize' to assure their are not any
players waiting for authorization.  The new system allows the Immortals a
bit of time to decide if an name is appropriate before accepting or denying
it.  If you are in doubts to a names acceptibilty, but it is not profane or
extremely modern, you should probably accept it.
~

51 2COMMAND~
.&w^b
						 &z __====-_  _-====___
				&z_--^^^. &p#####&z     //    \\      &p#####&z.^^^--_
			   &z-.&p##########&z   //&g(   ) &z\\    &p##########&z.-_
			   &z-&p############ &z//&g |\^^/| &z\\    &p############&z-
			&z/&p###########&z   //  (&R^B@::@ &z^b) \\  &p##########&z\_
		  /&p#############&z   ((  &g \\// &z  ))      &p#############&z\
		  -&p###############&z  \\ &g (oo) &z //     &p###############&z-
		-&p#################&z   \\&g/&w VV&g  \&z//  &p################-
  &O|-/  1.&w Thou shalt not kill they fellow adventurer.  &O        \-|
  |-|  &w   (see help deadly for exceptions.)  &O                   |-|
  |-|  2.&w Thou shalt not stake. (See laws stake)  &O              |-|
  |-|  3.&w Thou shalt not steal from Darkhaven shopkeepers   &O    |-|
  |-|  4.&w Thou shalt not harass players or immortals       &O     |-|
  |-|  5.&w Thou shalt not cause spam or use profanity.       &O    |-|
  |-|  6.&w Thou shalt not multiplay over 5 chars ever, nor &O      |-|
  |-|  &w  multiplay at all during quests or while playing pkill&O  |-|
  |-|  7.&w Thou shall report any bugs to an immortal immediately.&O|-|
  |-|  8.&w Thou shalt not advertise other muds here.  &O           |-|
  |-|  9.&w Thou shalt not steal anothers kill.(help killsteall)&O  |-|
  |-| 10.&w Thou shalt respect immortals and their laws.      &O    |-|
  ) ( &r Violation of any commandment subjects you to death,  &O    ) (
   \ |      &rbanishment,torture, hell, demotion, or worse. &O      | /
	(%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%)
	  &z-&p###################&g  \\/       \//&p###################&z-
	  _#/|&p##########/\######&g(     /\    )&p######/ \##########|\#&z_
		  |/&p|#/\#/\#/\/\#/\##&g\   |  |  /&p##/\#/ \/\#/\#/\#|&z \|
		  `  |/  V  V  `   V\#&g\| |  | |/&z#/  V   '  V  V  \|  '&g
			 `   `  `      `&g / | |  | | \   '      '  '   '
						 &g   (  | |  | |  )
						  &g __\ | |  | | /__
					   &0   (vvv(VVV)(VVV)vvv)  &w^x
 
 
 
 
~

62 AASIGN~
~

53 AASSIGN~
Syntax: aassign <filename>.are  Example:  aassign edo.are
 
AASSIGN temporarily assigns all rooms, objects, and mobiles in the area
range to your pfile.  This allows you to use rlist, olist, mlist, and
reset list.  This also means that typing savearea, reset area, or 
instazone will affect this area.  
 
To save changes permenantly, type "aassign none" and foldarea.
 
&rWarning&w!! Do not have an area aassigned to yourself when getting personal
vnums assigned to you.  The personal vnums will overwrite the area file.
 
In order to assign a proto area to yourself, you must either have that
area bestowed to you by a Greater God or higher.
 
In order to assign a nonproto area to yourself, you must either have
that area bestowed to you by an Exalted+. Even if you have the area bestowed
only Lesser+ can aassign themselves nonproto areas.
~

1 'ABATTOIR ASYLUM'~
Recommended level range: 35 - 50

Once a monument to health and sanity, the Abbot Hill Asylum has been
corrupted over the years and now lies in a state of irrepairable decay.
Located on a large isle in the Blood Sea, the insane and dying were once
brought there to be healed and cared for. Unfortunately, it seems that the
priests in care of these decrepit souls were infected by the same lack of
sanity they were attempting to cure. What was once a place of peace and
salvation has become a haven of the damned, ruled by chaos unbridled.
~

1 'ACETUM PRIMUS'~
'Acetum Primus,' is the third and most powerful of the known acid
disciplines at the Mage's disposal.  This incantation pulls forth the
strongest caustic agents in the casting Mage's neighboring planes,
and propels them in a tight cyclone-like blast towards the Mage's
chosen victim.  The cross-dimensional disturbance, the physical
violence, and the bonescouring potency of the conjured compound all
work together to effect an estimable estrapade.
~

1 'ACID BLAST' 'BURNING HANDS' 'COLOUR SPRAY' FIREBALL 'LIGHTNING BOLT'

  'MAGIC MISSILE' 'SHOCKING GRASP'~
These are all attack spells and should not be used against another player
unless both you and the other player are listed under 'who deadly' and are
within the legal pkill level range.

1) Syntax:  cast fireball         <victim>
2) Syntax:  cast 'acid blast'     <victim>
4) Syntax:  cast 'colour spray'   <victim>
5) Syntax:  cast 'shocking grasp' <victim>
6) Syntax:  cast 'burning hands'  <victim>
7) Syntax:  cast 'magic missile'  <victim>
 
Each of these spells inflict variable damage on the victim.  The higher the
caster's level, the more damage inflicted.  The spells are listed by their
inherent power from strongest to weakest, though differences in strength
are in many cases minimal.
~

0 'ACID BREATH' 'FIRE BREATH' 'FROST BREATH' 'GAS BREATH' 'LIGHTNING BREATH'~
Syntax: cast 'acid breath'      <victim>
Syntax: cast 'fire breath'      <victim>
Syntax: cast 'frost breath'     <victim>
Syntax: cast 'gas breath'
Syntax: cast 'lightning breath' <victim>

These spells are for the use of dragons.  Acid, fire, frost, and lightning
damage one victim, whereas gas damages every PC in the room.  Fire and
frost can break objects, and acid can damage armor.

High level mages may learn and cast these spells as well.
 
Be aware that area attacks are aggressive to all mobs in the room,
including pets, mounts and charmed creatures.
Gas breath is an area attack, the other breath spells are not.
~

53 ACTFLAGS MOBFLAGS~
&GMOBFLAG       &W|&GDESCRIPTION&W
&Y--------------&W|&Y--------------------------------------------------------&W
sentinel       Mobile always stays at its post.
scavenger      Mobile picks up items of value.
aggressive     Mobile attacks players.
stayarea       Mobile does not leave its home area.
wimpy          Mobile flees when low in hits.
practice       Players can "practice" at this mobile.
immortal       Mobile is immortal (not implemented).
deadly         Mobile has a deadly poison (not implemented).
meta_aggr      Mobile is VERY aggressive (not implemented).
nowander       Mobile doesn't wander unless attacked.
mountable      Mobile can be mounted.
prototype      Mobile is under construction.
running        Mobile is running (moves twice as fast)
noassist       Mobile won't assist other mobs in a fight.
pacifist       Mobile cannot be attacked.
scholar        Mobile can teach languages.
secretive      Mobile will not echo acts. MOBs actions are invisible.
mobinvis       Mobile is invisible to both pc's and non pc's.
noattack       Mobile won't use any physical attacks.
autonomous     Mobile won't switch tanks if hit by someone with higher style.
pet            Mobile can be used in creating a petshop.
&Y--------------&W|&Y--------------------------------------------------------&W
~

-1 AD ADS ADVERTISING~
.
It is against the rules of this mud to advertise another mud either on
public channels (say, chat, ask, answer, shout, yell, music, quest, avatar,
newbiechat, any guild, order, clan or council channel, wartalk or racetalk),
through your title, description, or biography or via leaving a note on any
public, guild, order, clan or council board in the Realms.  If you are
asked to desist and do not do so immediately, your priveleges on this mud
may be restricted or terminated.
 
~

60 ADVANCE~
Syntax: advance <character> <level>

ADVANCE sets a character's level to the specified value.  It is the
only way to create new immortal characters within the game.  ADVANCE
may also be used to demote characters.
~

52 ADVANCEDEXITS~
SMAUG supports having more than one exit in the same direction, as well as
the special direction 'somewhere', represented by a '?'.
 
If you already have an exit leading north, and would like another one, use
a plus sign '+' in front of the direction:
  redit exit +n 3001          - Adds another exit north to room 3001
 
To modify an extra exit like this, or to remove it, you'll have to refer to
it by number:
  redit exit #2 3002          - Change the second exit to go to room 3002
  (to know what number an exit is, do an "rstat")
 
For someone to be able to use the second north exit, you have to set one of
the extra flags (see EXFLAGS) like CAN_CLIMB.  It's also usually a good idea
to set the HIDDEN flag for any special exit so that it looks nicer to those
with autoexits on.
 
The AUTO flag makes it possible to go in a direction by simply typing the
keyword for that exit:
  redit exit ? 3001           - Create a 'somewhere' exit to 3001
  redit exflags ? auto hidden - Set the proper flags
  redit exname ? swim         - Set the keyword "swim"
  ... here, if a player types 'swim' in the room they will move to room 3001
 
~

-1 ADVENTURE~
.
   In our efforts to give credit to everyone who deserves it, we almost
   forgot to give credit to one of the "grandfathers" of computer adventure
   games... David Platt, the author of the original "Adventure" (c)1979.

   Also credit to Ken Wellsch for porting the original Fortran-77 version
   to UNIX-C (over a period of about 3 years) (c)1984.
~

1 AFFECTED 'AFFECTED BY'~
Syntax:  affected       (abbrevation:  af)
Syntax:  affected by    (abbreviation: af by)
 
'Affected' is a spells-at-a-glance function, which displays only the spells
(and skill affects) your character is currently under.  Each affect will be
listed by name only for the sake of brevity (if you want to know what each
is doing, use help <spell/skill name> or 'score').
 
Characters level 20 or above and deadly characters will also see the number
of rounds remaining for each affect.  Affects with a remaining lifespan of
less than 25 rounds are displayed in white, and those in immediate danger
of wearing off will flash.
 
'Affected by' displays a character's affects separate from its spell/skill
affect list.  This is useful for ensuring that affects given from equipment
are actually functioning.  For example, if you are wearing a visor with
detect_invis but 'affected by' does not show you as having that affect, you
are not detecting invisibility.
 
'Affected by' also displays your current susceptibilities, resistances and
immunities if your character is level 20 or higher.
~

51 AFFECTEDBY AFFECTED_BY~
The following are affect flags that can be used when osetting an item
(with oset <item> affect affected <affect flag>).  These flags can also
be used when msetting a mobile (mset <mob name> affected <affect flag>).
They may additionally be used to mset players if your level allows it.
 
Blind          Invisible    Detect_evil  Detect_invis  Detect_magic
Detect_hidden  **Hold**     Sanctuary    Faerie_fire   Infrared
Curse          **Flaming**  Poison       Protect       Paralysis
Sneak          Hide         Sleep        Charm         Flying
Pass_door      Floating     Truesight    Detect_traps  Scrying
Fireshield     Shockshield  Iceshield    Aqua_breath   Possess
 
Note - Hold and Flaming are current not in use.
 
See also: OSET AFFECTTYPES
~

51 AFFECTTYPES APPLYTYPES~
none        strength    dexterity   intelligence  wisdom       constitution
sex         level       age         height        weight       mana     
hit         move        gold        experience    armor        hitroll
damroll     save_para   save_rod    save_poison   save_breath  save_spell
charisma    resistant   immune      susceptible   affected     luck
backstab    pick        track       steal         sneak        hide
detrap      dodge       peek        scan          gouge        search
mount       disarm      kick        parry         bash         stun
punch       climb       grip        scribe        brew
 
Additionally:
weaponspell <sn>    Will cast a spell on victim with every blow of a weapon
wearspell   <sn>    Will cast a spell on wearer when object is worn
removespell <sn>    Will cast a spell on wearer when object is removed
<skill> <modifier>  Will modifify a player's ability in a skill
 
See AFFECTEDBY
~

0 AFK~
Syntax:  afk (abbreviation for "away from keyboard")
 
The 'afk' command will place an [AFK] flag beside your name on the who 
list when activated, as well as informing those who send tells that you
you are afk.  It can be toggled on or off by typing afk, and will also
go off automatically when you enter any command.
 
~

1 AGGRESSIVE~
Syntax: style aggressive
 
This style of combat allows a fighter to strike more effectively, but
leaves many holes in his defenses as well. Fighters who know this tactic
can strike enemies for more damage, but their enemies' weapons will slip
through their defenses for slightly more damage as well.
 
See Also: style, evasive, defensive, standard, aggressive, berserk
~

0 AID~
Syntax: aid <character>

This skill allows you to bring a stunned person back into consciousness.
~

1 ALERTNESS~
Syntax:  c alertness <self>
 
Alertness renders the target resistant to the sleep spell.
~

52 ALIGNMENT ALIGN ZAPPING~
Your alignment can range from +1000 to -1000. When you are +1000 this
means that you are good aligned, when you are -1000 this means you are
evil aligned, and when you are 0 aligned this means you are neutral.
You can change your alignment by killing good or evil aligned mobs.
This will raise or lower your alignment.

The different alignments will allow you to wear different pieces of
equipment. If you are good aligned and try to wear a piece of equipment
which is antigood, you will be zapped, which means the piece of eq will
fall to the ground. The same occurs when you are evil and you try to
wear an antievil piece of eq, or if you are neutral and try to wear
an antineutral piece of eq. You can also be zapped during battle if you
are fighting a mob opposite of your align.

You can find out what your alignment is by typing SCORE.
~

58 ALLOW BAN~
ALLOW BAN WARN
Syntax:  allow  site/race/class    <address/race/class>
Syntax:  ban    site/race/class    <address/race/class>   <type>    <duration>
Syntax:  ban    show               <class/site/race>      <number>
Syntax:  warn   <site/class/race>  <number>
 
BAN site will ban a site from playing the game.
BAN race bans anyone with that race from playing the game.
BAN class bans anyone with that class from playing the game.
BAN site/race/class without any other arguemts will give you a list of
currently banned sites/races/classes.
Type can either be a level or one of the following keywords: all,newbie,mortal,
warn. If you set it to a level everyone equal to that level and below will not
be allowed on.  Warn, sends a warning to the Warn: channel that someone if
logging in from the site, with a certaing class or race.  If you add the
duration, the ban will expire in that many days. Sites can be banned with the *
wildcard as well.  Be carefull however as *.edu would ban everysite from .edu,
or *foo* would ban anysite that had the string foo in it.
BAN show, will print out the reason why that particular site/race or class was
banned and by who.  Number can be a class or race name, a site address or
you can use # followed by the ban number.
WARN will toggle the warn flag on a CURRENTLY banned site/class or race.
 
ALLOW site/race/class  <address/race/class>  removes a site, class or race from
the ban list.  This also can be allowed by using # syntax.
 
~

59 AMOT~
~

-1 AMOTD~
.&R     \-,_                                                  _,-/
   ,   \  `-,           &gThe SMAUG Avatar MOTD            &R,-`  /   ,
  _)\   |    `\           &gUPDATED: &w7/6/98             &R/'    |   /(_
 /,  \_,/  \   `\                                    /'   /  \,_/  .\
 `-,  ,\    |    \                                  /    |    /,  ,-'
 |G,/ / ,-, |     |   &gAs the Gods rip the Realms   &R|     | ,-, \ \_3|
 _\_,/_  \ \|-,   |   &gasunder, a slew of changes   &R|   ,-|/ / ,_\,_/_
(_  ,__`  |    `\ | &grain down on you - the victims.&R| /'    |   __,  _)
  `--._`-;'      \|                                |/      `;-`_.--`
	 __/ /        |     &gSome of these changes &R.....          \ \__
   ''&B,-,&R'                                                    `&B,-,&R``
	&B((|)) &R<&w*&R> &wNew ways to kick some arse have been added.    &B((|))
	 |||  &R<&w*&R> &wShort of practices? Suffer: &GHelp AvPrac         &B|||
	 |||  &R<&w*&R> &wPets are more pet-like again: &GHelp PetSave      &B|||
	 |||  &R<&w*&R> &wEvil this way comes: &GNephandi &whas spawned.      &B|||
	 |||  &R<&w*&R> &wRangers can now raise some cane: &GHelp Missile   &B|||
	 |||  &R<&w*&R> &wFlint has been added: &GHelp Fletch               &B|||
	//|\\ &R<&w*&R> &wIdirect is throwing a party! &GHelp Picnic       &B//|\\
   |||||||&R<&w*&R> &wMagic from afar! &GHelp Magic_Missile           &B|||||||
   |||||||&R<&w*&R> &wNew commands added, worship a Coder today!    &B|||||||
   |||||||&R<&w*&R> &wSee help: &Gfindnote, 'note date', 'who leader' &B|||||||

~

1 'ANIMATE DEAD~
Syntax: cast 'animate dead' <victim>
 
After a mobile has been killed, the magic user has the ability to animate
the corpse of the recently deceased mob.  The mob will be animated with full
hitpoints and will be under the caster's control for a short period of time.
The undead can only exist in the living realm for a short period of time before
returning to the underworld.
~

57 'ANIMATE DEAD'~
Syntax: cast 'animate dead' <vicim>
 
After a mobile has been killed, the magic user has the ability to animate
the corpse of the recently deceased mob.  The mob will be animated with
full hitpoints and will be under the caster's control for a short period
of time.  The undead can only exist in the living realm for short period of
time before returning to the underworld.
~

0 ANSI~
Syntax: ansi <on/off>

The ansi command will either enable or disable ansi colour.  Ansi colour
will work provided your terminal has a compatible mode.
~

1 ANSWERS1~
Comment:  the auc code needs to be modified to allow the auccing
  of poisoned weapons (current message says it's decaying)
Answer:   poisoned weapons are decaying
 
Comment:  ok ok peeps.. one more time:  me avatar.  me starving
  but cannot see it.  me recharge verrrrrrrry slowwwwwly
  [this person subsequently threatened to leave the mud and take
  people with him because we wouldn't fix such "bugs"]
Answer:   you could try typing 'score' to see your hunger and
  thirst.  Avatars used to see their thirst and hunger messages,
  but then nobody liked that and everyone wanted them removed.
  The idea of a config +/- hunger_and_thirst_messages seems
  ridiculous to me.  Not many people have a problem keeping
  track by using score, they just pay attention.
 
Comment:  this area bites, we need areas with mobs in them not
  pretty descs
Answer:  what "we need" varies.  I'd be an idiot to refuse any
  area that fit any of our needs, be they killing fields or
  social zones or transition areas or what-have-you.  Work on
  one has nothing to do with work on another.
 
Comment:  after 4 years youd think you could stop us crashing
  so <expletive> much
Answer:  after 4 years you'd think someone would know there are
  a number of things affecting any mud's stability, some of them
  being beyond our control.  It's not like we enjoy it when the
  system crashes, and don't take steps as quickly as we can to
  correct the problem.
 
Comment:  i find the description of the tourist as a small round
  japanese man offensive
Answer:  I am ashamed I have offended you.
 
Comment:  I'm getting worried that you guys don't get my ideas and that
  I do this for naught
Answer:  they're read, sometimes once a week, usually always once a
  month, and in extremely rare cases (like this one) once every two.
 
Question:  why are manyaggro mobs either good or neutral?
Answer:  the evil ones are more tucked away, but I agree that it's
  odd to have a good-aligned aggro mob unless it's defending its
  territory or something like that.
 
Comment:  who <playername> should let you see the player.
Answer:  try 'whois <playername>'
~

1 ANSWERS2~
Comment:  How about removing Ret for now, instead of this wisinvis
  stuff.
Answer:  because "wizinvis" is how it is now.  Besides, if you go
  visit it'll be happy to reveal itself when it finds you.

Comment:  Sup?
Answer:  yo

Comment:  It would be nice if the time of day could be included in
  prompts, for vampires who want to know when to mist. Thanks-[signed]
Answer:  the general time of day (which will indicate mistwalk times
  for vamps) can be included in prompts with the %T token.

Comment:  [18 requests for a social called abash.  0 offers of what
  the social might read like]
Answer:  I see lots of good social ideas given, but no one ever
  offers to just write it.  If you have a social idea, write it up
  and mudmail it or something and we'll see if it's acceptable.

Comment:  these new dam messages for spells SUCK. try asking
people who PLAY not sit and imm what they think!
Answer:  "sit and imm" ... I love it.

Comment:  have who sort by level, I can't scroll that far back and cant
  find low-level ppl
Answer:  the 'who' command supports level arguments:  'who 1 10' will
  display all characters between level 1 and 10, 'who 20' will display
  all characters from level 20 on up, etc.
 
Comment:  you should make a proffesional insulter that people pay to
  go insult the person they said to .... so you have a system where
  ppl won't curse eachother out.
Answer:  we had Darius who did professional-quality work, but he did
  it for free, and it never kept anyone from cursing anyway.
  Especially Darius.
 
Comment:  there should be a way to turn off linkdead recall, it sux
Answer:  config + or - norecall will fix you up

Comment:  sell poison for weapons OUTSIDE of the thieves guild for non
  guilded thieves
Answer:  it is, in a place that sold it ages before the guild of thieves
  ever got hold of it.

Comment:  Deities for guilds like orders and clans have
Answer:  never
~

1 ANTARCTICA~
Recommended level range: 10 - 30

The frozen wastes of Antarctica lie far to the south of Darkhaven,
separated from the main continent by a vast ocean. Hidden in this
land of ice is the town of Little Haven. Two great heroines of Light rule
over the gnomes of this town: the Shieldmaiden Brunhilde and the Snow
Queen. The gnomes have created deadly frost giants to aid in the 
protection of the town and have also enlisted the aid of a fearsome blue
dragon. It is a comforting thought that very little threat arises from
Antarctica, for the Realms are already dark enough...
~

0 'ANTIMAGIC SHELL' ANTIMAGIC SHELL~
This spell makes you more resistant to all types (including beneficial
types) of magic.
~

0 APPRAISE~
Syntax: appraise <item>
		appraise all

Appraise, when at a repairshop type mob, will tell you the condition of 
your equipment in question.  The mob will tell you if it needs repair or 
not, and if so, how much it will cost.
 
~

1 'AQUA BREATH' 'AQUA'~
Syntax: cast 'aqua breath' <character>
 
This spell allows you to breath in water areas and underwater.  Certain
water sectors will require the use of aqua breath to prevent damage from
drowning.  If you are in an area and your movement suddenly begins to
drop and/or you begin losing hps <hitpoints>, you should either cast
aqua breath immediately or leave the area.
 
~

1 ARACHNOS~
Recommended level range: 5 - 20

A large amount of Haon Dor's treetops is covered in a sticky film:
the webs of a thousand spiders. The realm of Arachnos, as it is called
by Darkhaven's adventurers, is a series of twisting, intricate webs
populated by arachnids and spiders. Some say that this fear-filled place
is named Arachnos after the name of its hideous ruler. The stories tell
of a dragon housed deep within the area, answering to the name of Yevaud.
~

1 ARCANES~
.
				* * * As One, We Are Strong * * *

That is our motto, and for it we fight.   The Ancient Order of Arcanes is
an elite group of practitioners of the Magicks with a long and honorable
history dating far back into the days of the old clans, when the Arcanes,
one of the earliest of the peaceful clans, stood apart from the fray and
strove to hold the beacon of light and knowledge proudly aloft in a
darkening world.  We have lived on in the heart of the Realms through
many centuries of peace and war.
 
Arcanes try to master the knowledge of the ever-changing world about them.
With knowledge comes power, and with power responsibility.  Our magicks
are strong, and rarely do we taste defeat.  But we use our strength and
power to help one another; and where we can do no good in the world abroad,
we at least strive to do no harm.  Members live by, and live up to, a
demanding Code of Conduct which requires teamwork and cooperation among
members, and honor and fair dealing in the outside world.  The Arcanes
reside in a castle created out of the fabric of magic itself, which stands
as a testimony to Arcanes' power and strength.
 
Order members' solidarity and coordination are unrivalled.  Almost every
day, and frequently more than once in a day, the Order conducts some
activity to which all members are invited -- whether simple exploring/
mobkilling, practicing pk, questing among ourselves, or participating as
a team in mudwide quests -- for mutual benefit and enjoyment.  To the
extent possible, these events are held at different times of the day, to
permit the widest possible participation.

Those who distinguish themselves in such activities are regularly rewarded
from the Order Treasury.  The Order also continually seeks to reward those
who seek out knowledge and put it to the use of the Order.
 
For information on applying to Arcanes, type 'Help Arcanes Inductions'
~

2 'ARCANES INDUCTIONS'~
&YTo be considered for admission, the applicant character:&W
-- must be of a manausing class, level 25+;  not currently a member of any
  guild or Order,  and at least 100 years old
-- must submit a "resume," mudsigned (posted and taken) including:
  (i) player's total time on the mud, (ii) prior guild/Order affiliations
  (iii) reasons for interest and how they think they can contribute,
  (iv) any outcast from or rejection by the Order of any character controlled
  by the same player, and (v) contacts' names and how they know them
-- must submit notes from 3 or more contacts, which must be (i) mortals and
  (ii) neither current Arcanes, Arcanes-Recruits or -Initiates, nor alts 
  thereof.  The contacts' notes must be mudsigned, and state how, and how long
  the contact knows the applicant, and ideally include information on the 
  contacts' alts and typical hours on to facilitate further contacts.  A
  A backup contact or two beyond the three minimum is also helpful.
 
Applicants with notes ready should contact a Scout, who will verify
that the applicant qualifies and decide whether or not to process the
application.   The Scout may decline or defer acceptance of an application,
in which case the applicant may contact another scout.  If any character 
owned by the same player was rejected or outcast for disciplinary reasons (not
inactivity), the applicant must first seek permission to apply from the
LeadScout or a Leader.  Such requests are ordinarily not considered
until at least 3 months have passed.

Alts of current Arcanes are simply inducted by any leader if they are of
the appropriate class and level (the age minimum does not apply).
Special procedures may apply to imm alts. Interested Immortals should
contact a leader or the Deity before submitting an application.
 
&CFor further information about the inductions process and the Order
generally, as well as a list of members, please stop by the Order
webpage, which is linked to the RoD webpage.
~

1 AREAS~
Syntax:  areas
Syntax:  areas old
Syntax:  areas <low range> <hi range>
 
The 'areas' command displays an alphabetically sorted list of all areas
within the game, together with the author and suggested level range of
each area.  
 
The 'areas old' command displays an unsorted list of all areas (the old
style), as well as the author and suggested level range of each area.
 
You can specify a level range to see a list of all areas with suggested
ranges which encompass the argument.  This can be a little awkward as
each area has a low and a high suggested range.  Suffice to say that if
an area's level range matches even one level of the range you request,
it will be displayed.
 
Special thanks to Fireblade for design and coding of this restyled function.
The Realms of Despair will provide a copy of areas built by individuals
to that individual and no one else. To receive a copy of an area for use
on other muds, you must contact that individual.
 
~

0 ARMOR~
Syntax: cast armor <character>

This spell decreases (improves) the armor class of the target character
by 20 points.
~

52 ARMORCLASS~
.
&gThere are two values used with armor class for object type Armor:
 
&GValue0: Variable amount based on level of item at repop.
Value1: Maximum repairable armor setting for the object.
 
&gSetting Value0 has no effect. It will re-adjust itself on repop based on
the repop level of the item. Setting Value1 below the expected repop value
for Value0 will result in an item that cannot be repaired until Value0 drops
below Value1's setting. The listing below gives you a rough approximation of 
the values returned for Value0 based on level:
 
&GLevel Invoked   Value0   Level Invoked   Value0   Level Invoked   Value0 
-------------   ------   -------------   ------   -------------   ------   
	  1           1-3         10           3-5         20           6-8
	 30           8-10        40          11-13        50          13-15
	 
&gThe amount that Value0 is set to determines the amount the player's A.C. will
be adjusted. Different wear locations have a different multiplying affect:
 
&G0 X Value0: Wield, Ears.
1 X Value0: Arms,  Finger, Neck, Feet, Hands, Shield, Waist, Wrist, Hold, Eyes.
2 X Value0: Head,  Legs,   About.
3 X Value0: Body.
 
&gSee also OSET, AFFECTTYPES, WEARFLAGS, OBJECTFLAGS, OBJECTTYPES, ITEMVALUES,
WEAPONTYPES, VARIABLES, and OMENU.
~

59 ASET~
Syntax:  aset <area filename> <field> <value>
 
Aset is used to set the following fields for an individual area:
author    - The name of the area's author
name      - The full "name" of an area... ie: {10 20} Somegod  Some Area
filename  - The filename (ie: somearea.are)
lo_room   - The lowest room vnum
hi_room   - The highest room vnum
lo_obj    - The lowest obj vnum
hi_obj    - The highest obj vnum
lo_mob    - The lowest mob vnum
hi_mob    - The highest mob vnum
low_economy - minumum amount of gold the area will start with at reboot
max_economy - maximum amount of gold the area _can_ start with at reboot
resetmsg  - Message displayed throughout the area at reset
resetfrq  - Number of minutes between area resets
flags     - Area-wide flags:  nopkill
 
The area must be folded to make these changes permanent.
 
See ASTAT, ECONOMY, FOLDAREA
~

59 ASTAT~
Syntax:  astat                      (area stats for the area you are in)
Syntax:  astat <filename of area>   (area stats for specified area)
 
Astat displays the vital stats of an area, including the following:
Name:            title of the area
Filename:        filename of the area
Prototype:       If the area is prototype or under construction, will be 'yes'
Max_players:     max # of players in the area as of last reboot
IllegalPks:      number of illegal pkills in the area since last reboot
Gold looted:     total amount of gold looted from the area since last reboot
Area Economy:    current pool of gold for the area (not including player gold)
Mdeaths:         number of players mobs killed in the area since last reboot
Mkills:          number of mobs killed in the area since last reboot
Pdeaths/Pkills:  number of players killed by players in area since reboot
Author:          name of the area's author
Number Players:  current number of players in the area
Area flags:      area-wide flags (such as nopkill)
Low/hi_room:     first/last room vnum of the area
Low/hi_obj       first/last object vnum of the area
Low/hi_mob       first/last mob vnum of the area
Soft range:      level range recommended for the area
Hard range:      level range enforced for area (outside range cannot enter)
Resetmsg:        current reset message for the area at repop
Reset frequency: frequency with which the area resets
 
See ASET
~

1 'ASTRAL WALK' 'FARSIGHT' 'PORTAL' 'HELICAL FLOW'~
Syntax:  cast 'astral walk'  <victim>  Syntax:  cast 'farsight'     <victim>
Syntax:  cast 'portal'       <victim>  Syntax:  cast 'helical flow' <victim>
 
These spells allow the very shape of space and time to be warped at the
caster's bidding:
 
'Astral walk' instantaneously moves the caster to the victim's location.
 
'Farsight' allows you to see the room in which the victim stands.
 
'Portal' forms a temporary tunnel through space to the victim.  A portal
will not succeed if a portal already exists in either the caster's or
the victim's location.  Type 'enter' or 'enter portal' to pass through.
 
'Helical Flow' morphs an Augurer into a coil of colour which instantly
travels to the victim's location.
 
These spells may fail if either the victim or the caster is in a location
which blocks their use, such as no-recall areas, no-summon areas, etc.
 
See also TRANSPORT
~

51 AT~
Syntax: at <location> <command>

AT executes the given command (which may have arguments) at the given
location.  The location may be specified as a vnum, as the name of
a mobile or player.

AT works by temporarily moving you to that location, executing the
command, and then moving you back (if the command didn't change your
location).
~

65 ATOBJ~
Syntax: atobj <object> <command>
 
ATOBJ executes the given command (which may have arguments) at the given
object.
 
ATOBJ works by temporarily moving you to that location, executing the
command, and then moving you back (if the command didn't change your
location).
~

2 ATTACKER ATTACKERFLAG ATTACKERFLAGS~
&PAttacker &Wflags are automatically given by the mud code to players
who engage in illegal attacks upon other players. These attacks can
initiated by using MURDER, casting an attack spell, or ordering
followers to attack a player. Deadlies attacking Deadlies do not
receive Attacker Flags. These flags are only given out in situations
that involve Peaceful players, i.e. Deadlies attacking Peacefuls,
(or vice versa), or Peacefuls attacking Peacefuls. You will be
tagged with an &PAttacker &Wflag if:
 
  1. You attempt to MURDER another player, or they attempt to
  MURDER you. (See &CHelp Murder &Wand &GLaws Pkill &Wfor more info
  on attacking other players).
 
  2. You order charmed mobiles or pets to attack a player, or you
  are attacked by another players mobiles. (See &CHelp Charm &Wor
  &CHelp Pets &Wfor more info)>
 
  3. You are a &RDeadly &Wplayer and attacked a fellow Clanmember.

&WDarkhaven Guards, shopkeepers and special function mobs now respond
differently to illegal flags. You may find yourself barred from making
purchases, placed before Judge Kendra for a hearing, or sentenced to
jail. Should you acquire an &PAttacker &Wor any other illegal activity
flag, see Judge Kendra in Townhall. Her Honour is located one west of
the Main Lobby (See &CHelp Townhall &Wfor info).
~

53 ATTACKS~
bite          claws        tail        sting      punch        kick
trip          bash         stun        gouge      backstab     feed
drain         firebreath   frostbreath acidbreath lightnbreath gasbreath
poison        nastypoison  gaze        blindness  causeserious earthquake
causecritical curse        flamestrike harm       fireball     colorspray
weaken

See MSET and DEFENSES  (Some are not implemented).
~

1 AUC AUCTION~
.Syntax: auction (abbreviations: a , auc)
Syntax: auction <item name> <starting value>
Syntax: auction bid <value>
 
The auction command is used for performing auctions.  Simply typing auction
will display the current item being auctioned, if there is one.  
 
If nothing is being auctioned, auction <item name> <starting value> will 
begin an auction.  If no starting value is specified, it begins at 0 gold.
 
Auction bid <value> will place a bet for the item.
 
Special thanks to Erwin Andreasen for writing this function.
(Ported to SMAUG from a publicly available source.)
 
At the present, if the mud crashes in mid auction, you will lose both 
your bidded money and the item.  This will at some point be fixed.
 
You are able to see auction almost from the point of character creation,
however, you cannot USE auction unless you're level FIVE or higher. To remove
the auction channel from your screen, type CHANNEL -AUCTION.
SEE also "help AUCTION2" for more on auction commands
&Y* Auctions will not be stopped for overbidding or misbidding*&w
~

1 AUCTION2~
Auction will also work with the following arguments:
 
au bid 20k      - bids 20000 coins
au bid 20k500   - bids 20500 coins (20,000 + 500)
au bid 20k5003  - bids 20500 coins, too (only checks first 3 chars after "k")
au bid 1m       - bids 1 million coins
 
On an existing bid of 10000:
au bid +10       - adds 10%, making the bet 11000.
au bid +         - adds 25% (the default if no number given), bet is 12500.
au bid x         - multiplies by 2, making the bet 20000.
au bid x5        - multiplies by 5, making the bet 50000.
 
It is illegal to auction <or barter, sell, trade> clan, order, or guild items.
Exception: Old clan equipment that was converted to be worn by both peaceful
		   and deadly players.
 
Also see: 'HELP AUCTION' for more information.
~

51 AUCTIONSTOP~
Syntax <auctionstop>

&WAuctionstop is to be used to halt the auctioning of illegal items, ie:
deadly equipment, order/clan/guild items. Auctions are NOT to be
stopped for overbidding, misbidding, or misauctioning.
  Other items the auction can be stopped for are balls of light and 
recall scrolls if sold alone. If they are inside a container with other
items, they may be auctioned.
&W
~

0 AUGURER AUGURERS~
The Augurer is very strong-minded in its nature, both physically and
magically. It is very confident of its actions in combat, and this
confidence shows in its physical appearance.  The Augurer is of a
medium height, with a defined bone structure which shows both
intelligence and assurance.  Its appearance is wizened, but at times
the Augurer may look frail due to exhaustion.  Though it is of a
medium size, its physical strength is not.  The Augurer relies on
both brain and brawn to overcome its challengers.  When it is
confronted, its wisdom decides what course of action it should take,
and wisdom is its prime stat.
 
While in combat, the Augurer is capable of utilizing both spells and
skills to their greatest potential.  However, because of the Augurer's
size, it tires of magic easily.  To overcome this mental exhaustion,
the Augurer is a strong believer in the use of mana for rejuvination
of its magical powers, and uses a lot of it.  In its spare time, the
Augurer enjoys the local lore, both the teaching and learning of it,
as well as musical and theatrical pursuits.  The Augurer is a very
independent person, and spends much of its spare time in meditation,
reflecting upon the days activities.
 
~

63 AUTOMAPPER~
a       hut
b       tent
c       hovel
d       campsite
e       shack
f       cabin
g       homestead
h       keep
i       fortress
j       castle
k       guard house
l       altar
m       inside a store
n       graveyard
o       monastary
p       stable
q       tavern
r       basement
s       bedroom
t       banquet room
u       corridor
v       attic
w       vault
x       sitting room
y       study
z       passageway
A       tower
B       crypt
C       work room
D       laboratory
E       hallway
F       turret
G       Storage room
H       kitchen
I       Larder
J       stairs
K       rooftop
L       closet
M       office
N       treasury
O       landing
P       balcony
Q       Foyer
R       drawing room
S       den
T       a ladder
U       catwalk
V       entrance
~

63 AUTOMAPPER2~
W       arboretum
X       library
Y       vent
Z       shaft
????    gate
1       audience room
2       conservatory
3       dumbwaiter
4       chimney
5       porch
6       classroom
7       limbo
8       lawn
9       limbo
????    lake
@       forest
#       swamp
$       well
%       street
^       on the river
&       canyon floor
*       beach
(       mine
)       road
????    on the stream
_       forest clearing
+       snake pit
=       tunnel
|       path
`       sandstorm
{       rope
[       cliff
]       jungle
????    underground river
"       rope bridge
'       bridge
?       natural bridge
>       ignored
,       cave
????    underground lake
~

51 AVTALK~
Syntax: avtalk <message>

This allows you to use the avtalk (level 50+) channel.
~

1 BAALI_APPS~
.  &Y __&r*&Y__                                                 __&r*&Y__
  &Y( ___ )&r-----------------------------------------------&Y( ___ )
   | / |                                                 | \ |
   | / |&GThis is what you will need to gain the attention &Y| \ |
   | / |&Gof the Baali. Be warned: Gaining their attention &Y| \ |
   | / |&Gmay very well be one of the most difficult tasks &Y| \ |
   | / |&Gto accomplish. Rest assured, once one has gained &Y| \ |
   | / |&Gthe depravity of their attention, there will be  &Y| \ |
   | / |&Gno mistaking it.                                 &Y| \ |
   | / |                                                 | \ |
   | / |&GTo gain the attention of the Baali, one must:    &Y| \ |
   | / |                                                 &Y| \ |
   | / |&W- &GBe an evil aligned avatar.                     &Y| \ |
   | / |&W- &GMail Iliana with their intent and reasons.     &Y| \ |
   | / |&W- &GBring two letters of reference when summoned.  &Y| \ |
   | / |&W- &GDemonstrate their worthiness when summoned.    &Y| \ |
   | / |                                                 | \ |
   | / |&GThe Baali accept but one new corrupter a week    &Y| \ |
   | / |&Ginto their fold. It would be wise to demonstrate &Y| \ |
   | / |&Gones patience when seeking them out, as well.    &Y| \ |
   |___|                                                 &Y|___|
  (_____)&r-----------------------------------------------&Y(_____)
	 &r*                                                     *&w
~

1 BACKFIRE~
Magical items (pills, potions, staffs, wands) which cast offensive spells
have a chance of backfiring if the character using them is much lower in
level than the spell level on the item.
 
For example, a level 15 character trying to invoke a wand with level 50
fireball may injure themselves when the spell backfires.
 
~

1 BACKSTAB BS~
Syntax:  backstab <victim>
Syntax:  bs       <victim>
 
A backstab is a method of attack, used primarily by thieves but able
to be utilized by others in some circumstances, and which inflicts a
tremendous degree of damage on unsuspecting victims if successful.
 
An appropriate weapon type is required to backstab, and if your victim
is wounded or suspicious it may not be possible to surprise them.  The
most important factor in anyone's ability to backstab is to catch the
victim when they are unaware of your presence.
 
~

1 BALZHUR~
.               ,                   \,       '-,-`,'-.' | ._
			   /|           \    ,   |\         }  )/  / `-,',
			   [ ,          |\  /|   | |        /  \|  |/`  ,`
			   | |       ,.`  `,` `, | |  _,...(   (      _',
			   \  \  __ ,-` `  ,  , `/ |,'      Y     (   \_L\
				\  \_\,``,   ` , ,  /  |         )         _,/
				\  '  `  ,_ _`_,-,<._.<        /         /
				  ', `>.,`  `  `   ,., |_      |         /
					\/`  `,   `   ,`  | /__,.-`    _,   `\
				-,-..\  _  \  `  /  ,  / `._) _,-\`       \
	Balzhur-     \_,,.) /\    ` /  / ) (-,, ``    ,        |
   the pet demon,` )  | \_\       '-`  |  `(               \
			   /  /```(   , --, ,' \   |`<`    ,            |
			  /  /_,--`\   <\  V /> ,` )<_/)  | \      _____)
		,-, ,`   `   (_,\ \    |   /) / __/  /   `----`
	   (-, \           ) \ ('_.-._)/ /,`    /
	   | /  `          `/ \\ V   V, /`     /
	,--\(        ,     <_/`\\     ||      /
   (   ,``-     \/|         \-A.A-`|     /
  ,>,_ )_,..(    )\          -,,_-`  _--`
 (_ \|`   _,/_  /  \_            ,--`
  \( `   <.,../`     `-.._   _,-`
   `                      ```
~

51 BAMFIN BAMFOUT~
Syntax: bamfin  <message>
Syntax: bamfout <message>

The standard messages for GOTO are 'arrives in a swirling mist' and
'leaves in a swirling mist'.  You can replace these messages with messages of
your own choosing using the BAMFIN and BAMFOUT commands.
~

51 'BAN 50'~
Seeking to ban a site above level 1 should be an extremely rare situation. One
in which the actions of one or more key persons from a site are deemed to be
a detriment to the enjoyment of a large portion of the players in the game.
Such person(s) are generally deemed to be beyond rehabilitation at this time.
 
When seeking to ban a site, make use of the Grub command to both see the impact
of the ban, and to get a list of all character names from the site. You can use
this list to keep an eye out for these characters coming in from other sites,
as it's obvious these days that a site ban may not always cure the situation.
 
All site bans above level one should be set at level 50 or higher. It should be
a rare instance in which a site is banned at some in between level. Only in the
direst of instances would a site be banned above level 50, as this will affect
immortal level players as well.
 
See also: 'BAN ALLOW' 'BAN NEWBIE' 'BAN DURATION' 
~

51 'BAN DURATION'~
The standard set for ban durations are as follows:
 
Newbie Ban:          1) One week on first instance.
					 2) Two weeks for the second.
					 3) One month at newbie, or level 50 for third.
					 4) Permanent at newbie, or level 50 for 4th offense.
 
Bans for level 2-50: 1) One month for first instance.
					 2) Two months, or permanent for 2nd.
					 3) Permanent for 3rd offense.
 
All bans above level 50 should be permanent by their very nature.
 
&WReminder - Without documenting each time we ban a site, we will have no
		   source of history on sites. Always remember to post a note
		   detailing the reasons for the ban.&w
 
See also: 'BAN ALLOW' 'BAN NEWBIE' 'BAN 50'
~

51 'BAN NEWBIE'~
Banning a site is a form of last resort, as it not only affects the offending
player or players, but will also affect every other player from that site.
Before seeking to ban a site, even for a temporary level 1 banning, make
sure you have exhausted all other options first. 
 
In the case of newbie bans, most such instances arise through the actions of 
one or more abusive players who log in a newbie and begin swearing, spamming, 
threatening, etc.. Many times this has developed from an immature player's 
frustrations over getting a name authed. If you find a player going through a 
series of silly names trying to auth them, make every effort to try and talk 
with them first. If this fails, use Fquit to discourage them. If you have 
Disconnect, use this instead, as it is less provoking than fquit (makes it 
appear as if they simply lost their conneection). If they continue their 
efforts, send them warnings to get their attention. Use freeze if you have it 
(or if someone else is on who can use it) to get their attention and make sure 
received the message. Then, and only then, once you've exhausted all avenues
at being civil, you can use ban in good conscience. You've given the player(s)
every chance to cease their actions and given them fair warning over the fact
that if they continue they risk getting banned.
 
See also: 'BAN ALLOW' 'BAN 50' 'BAN DURATION' 
~

58 BARENUM BARESIZE~
Syntax: mset <mob> barenum <number>
mset <mob> baresize <num>

These mob fields control the mobs ability to fight without weapons.
Barenum is the low end of the damage done and baresize is the multiplier.
For example: barenum 10 and baresize 5 would have the effect of allowing
the mob to hit barehanded for 10-50 damage. 
 
* This field also affects experience gained.
Experience is calculated as follows:
^level 3*5 + max_hit +barenum *baresize +damroll * 50
+hitroll *ch -> level *10
~

1 BARRIKS KEEP~
Recommended Level Range: 25 - 50

Atop a great mountain, sits a small run down village. It is surrounded
by mountains and large trees that have been in existence for untold
centuries. The village is guarded by a few loyal citizens who remain
due to loyalty. The townspeople hide a secret passage that leads to the
keep. A large forest enshrouds the area and prevents it's notice to 
the outside world.
~

0 BASH~
Syntax:  bash
 
Bash can only be used once a fight has started.  It will inflict damage and
temporarily daze both yourself and your opponent for approximately two rounds
during which you cannot heal, flee or perform other extraneous combat actions
(i.e. you will be able to dodge/parry/attack but nothing else).  These same
consequences are inflicted on your opponent if it is a player character,
otherwise the skill only inflicts damage.
 
Note that bash has a drastically reduced chance of hitting if the basher is
not one of the primary combatants (i.e. is not tanking).
~

1 'BENEDICTION'~
Syntax: cast benediction
 
The spell BENEDICTION lays upon the members of the casters group
a strong, but short-lived Protection of The High Gods.
~

1 'BENEFIC AURA'~
Syntax:  c 'benefic aura'
 
The Paladin may infuse itself with a general protection from evil with
this ancient cantrip.  As with most of the major Paladin spells, it
requires the utilization of the Paladin symbol.
 
~

63 BERSERK~
Syntax:  berserk
 
Going berserk sends your warrior into a frenzied state, increasing its
attacks per round to a maximum of six and your strength by one.  While
you are berserking you cannot flee.
~

1 BERSERK~
Syntax: style berserk
 
This tactic is truly powerful, for it causes the fighter to allow pure
rage to flow through him, at the cost of his own judgement and care for
his or her well-being. While the berserked fighter will strike deeper
into an enemies' flesh, his foes will be able to take advantage and bury
their weapons deeper into the berserker.
 
See Also: style, evasive, defensive, standard, aggressive, berserk.
~

60 BESTOW BESTOWMENTS~
Syntax: bestow <victim> command [command] [command] etc
bestow <victim> list
bestow <victim> none
 
Bestow is used to give a command to a player that the player would not normally
have. Bestow victim command will give the command to the person, bestow victim
list will show all commands corrently bestowed on the person, and bestow victim
none will remove all bestowments.
~

55 BESTOWAREA~
Syntax: bestowarea <victim> <filename>.are
 
This command allows members of the Area Council to bestow area names
to immortals so that they can engage in group building.
 
Once an AC member bestows a proto area on a player, that player can
use the aassign command to assign themselves that proto area in order
to help the owner of the proto area.
 
Examples:
 
bestowarea joe bob.are           allows joe to work on bob's proto area
bestowarea joe                   lists all of joe's bestowed areas
bestowarea joe list              ditto
bestowarea joe none              removes all of joe's bestowed areas
 
~

56 BESTOWEDAREAS~
Jade - demora.are phaeton.are
Demora - Jade.are
Phaeton - jade.are, mokshonian.are
Grishnakh - moonbeam.are, demora.are
 
Looks like all imms will be bestowed demora.are so they can make their
rooms in the museum - Gorog.
 
~

1 'BETHSAIDEAN TOUCH' BETHSAIDEAN TOUCH~
Syntax:  c 'bethsaidean touch' <target>
 
With the use of a the Paladin's holy symbol, one may endeavor to lift
the blindness of the afflicted.
 
~

1 BITE~
Syntax:  bite
 
Bite is a vampire skill which can only be used once combat has begun.
It inflicts damage on the victim relative to the vampire's own level
if it lands successfully.
 
~

1 'BLACK FIST'~
The spell 'Black Fist' calls from the Ethereal Plane a disembodied clenched
fist to pummel the calling Mage's opponents in combat.  The fist may
be called once per combat round.
~

62 BLACK HAND~
The spell 'Black Hand' calls from the Ethereal Plane a disembodied hand
to pummel the calling Mage's opponents in combat.  The hand may be called
once per combat round.
~

1 'BLACK HAND'~
The spell 'Black Hand' calls from the Ethereal Plane a disembodied hand
to pummel the calling Mage's opponents in combat.  The hand may be called
once per combat round.
~

1 'BLACK LIGHTNING'~
The spell 'Black Lightning' calls from the Ethereal Plane a highly
organized spike of the Ethereal analogue to electricity.  This spike
orients itself on the calling Mage's main opponent in combat, onto
whom it unleashes its awesome destructive power.  The Black Lightning
may be called once per combat round.
~

0 BLAZEBANE~
Syntax:  cast 'blazebane' <mob>
Syntax:  cast 'blazebane' <player>

This spell makes the victim more susceptible to fire and heat.  It
should only be cast on mobs.  Casting this spell on a player will be
considered an attack.
~

0 BLAZEWARD~
This spell makes you more resistant to fire and heat.  It can only be
cast upon yourself.
~

0 BLESS~
Syntax: cast bless <character>

This spell improves the to-hit roll and saving throw versus spell of the
target character by +1 each.
~

1 BLIND BLINDNESS~
syntax:  cast blindness <victim>
 
This spell renders the target character blind.
 
See also BLINDED, GOUGE
~

1 BLINDED~
Certain spells and attacks can render a player blind for anywhere from a
few rounds (gouge) to several hundred rounds (the blind spell).  If you
are blinded, you will see only your name on the 'who' list, and will be
unable to see either your inventory or your location.
 
You may either wait out the effect of the blindness, request assistance
over channels, or make your way to a healer such as Sonoria in Darkhaven,
who will eventually remove your blindness.
 
See also GOUGE, BLIND
~

1 BLITZ~
Syntax:  blitz
 
Blitz is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 BLOODLET~
Syntax:  bloodlet
 
A vampire which is itself sated on blood may open his own veins to drain
a small amount of the vitae for the consumption of a more needy comrade
through the use of bloodlet.  The pool spilled last only a very brief
time, however, as already-consumed blood loses its value quickly once
exposed again to air.
~

1 BOARD BOARDS ARCHIVES ARCHIVE~
Note boards are available throughout the Realms for you to post notes to
that deal with various topics like guild, order, council or clan
communication, announcements from the immortals, and questions for
the immortals or other people on the mud.
The Archives of Darkhaven are located in the Darkhaven Town Hall, east,
south, up and 2 south of Darkhaven Square. The Archives contain:

 - The main board of Darkhaven, for general notes and information
 - The Book of Deeds and Lore, for role-playing posts
 - The Oracle, where mortals may write private concerns, complaints,
   requests and suggestions to the high gods
 - Individual boards for different councils and organizations.

Use 'note list' to view the note posted on each board.  Type 'help note'
for detailed information on using the Realms note system.
The post office is located off western Market Street in Darkhaven, two
south, one west and one south of the city square.  Type 'help mail' for
detailed information on using the post office system.
 
~

58 BOARDDELETE~
1202 - level56.brd - Removed by Jade
1204 - questideas.brd - To be replaced with a floating board, don't
remove until then
1206 - building.brd - ac board - delete
1207 - changes.brd - board of new knowledge - i see no need - delete
1216 - heroes.brd - questsuggestions - never used once - delete
1210 - book.brd - no clue what it is, unless i'm missing something -del
31985 - good.brd - ret board -delete
32706 - evil.brd- forsaken board -delete
0 - delib.br - ??? - delete
11400 - britt.brd - already done by Jade - delete
0 - member.brd 2134 - supposed to be 21341, i think, unfixed typo - delete
21341 - member.brd - ?? - delete
1226 - law.brd - ??? - delete
1231 - ban.brd - ban board - change to floating and delete
0 - arcaneind.brd - screwup? delete
15532 - extravote.brd - useless - delete
21229 - voting4.brd - do we need 4 vote boards?
8402 - treehouse.brd - herne's board -delete
21515 - orleader.brd -empty, and we have an order leader board - delete
 
 
These next 3 are being deleted from Ringbearers.  Please wait
one week from Wednesday to delete them so that Ynnug can copy
the notes.
1278, 1280 and 1282 - all ringbearers boards - delete in a week

Myra will be cutting the guilds down to 2 boards each and
getting rid of 1 other uselesss guild board.
That should put us in the range of 70 boards
~

51 BODYBAG~
Syntax: &Wbodybag <name> <bag/yes>
		  bodybag <name> will show the status of the corpse.
&w
BODYBAG gets all of <character's> corpses and puts them in your inventory
to do with as you wish.

If you find yourself getting the wrong corpse, post a bug report immediately!
See also TIMER
~

1 BOT BOTS BOTTING~
Bots, the running of a character using triggers while there is no one
attending it, is not illegal in itself. However, bots are held to the
same rules as playing characters. See Laws regarding "staking" and
other applicable laws. The character is accountable for any act the
bot commits.
~

1 'BP'~
This is an abbreviation for blood points.  Vampires begin with 10 bp
at creation and gain 1/1 bp for each subsequent level.
~

0 BRANDISH QUAFF RECITE ZAP~
Syntax:  brandish                       (to invoke a staff)
Syntax:  quaff  <potion>                (to quaff potions)
		 quaff  <potion> <container>    (quaff directly from container)
Syntax:  recite <scroll> <target>       (to recite a scroll)
Syntax:  zap    <target>                (to use a wand on a target)
 
BRANDISH invokes a magical staff.
 
QUAFF quaffs a potion (as opposed to DRINK, which drinks mundane liquids).
 
RECITE recites a magical scroll; the <target> is optional, depending on the
nature of the scroll.
 
ZAP fires a magical wand at a target.  If the target is not specified, and
you are fighting someone, then that character is used for a target.
 
You must be holding a wand or a staff before using BRANDISH or ZAP.
 
All of these commands use up their objects:  Potions and scrolls have a
single charge.  Wands and staves (staffs) have multiple charges.  When a
magical object has no more charges, it will be consumed.  Use the spell
'identify' to see the remaining charges.
 
See EAT, BACKFIRE, RECHARGE
~

1 BROACH~
Syntax:  broach <direction>
 
This skill causes the vampire to attempt to bypass a locked or barred
door or other obstruction.
 
~

58 BSET BSTAT~
Syntax: Bset <board filename> <field> <value>
Syntax: Bstat <board filename> (same room as board needs no args)
 
BSTAT will show the current setting for the statted board.
 
BSET will set new values for a given board.
Correct FIELD values for Bset are:
  ovnum, read, post, remove, maxpost, filename, and type
  read_group, post_group, extra_readers, and extra_removers
  All boards will be type 1, except Nerif's mail board (type 2).
Action FIELD values include:
  oremove, otake, olist, oread, ocopy, opost, and postmessg
  These should be followed by the message to be sent to those
  who are at the board, but not performing the action (similar
  to mpechoaround). Postmessg is the only message that will be
  seen by the actor of a Bset action value.
~

0 BUY LIST SELL VALUE~
Syntax: buy   <object>
Syntax: buy   <# of object> <object>
Syntax: list
Syntax: list  <object>
Syntax: sell  <object>
Syntax: value <object>
 
BUY buys an object from a shop keeper.
BUY <# of object> <object> will allow you to buy up to twenty of a normal
store item at once.
 
LIST lists the objects the shop keeper will sell you.  LIST <object> lists
just the objects with that name.
 
SELL sells an object to a shop keeper.
 
VALUE asks the shop keeper how much he, she, or it will buy the item for.
 
~

0 'CALL LIGHTNING'~
Syntax: cast 'call lightning'

This spell works only out of doors, and only when the weather is bad.
It calls down lightning bolts from God.
 
Be aware that area attacks are aggressive to all mobs in the room,
including pets, mounts and charmed creatures.
~

0 CAST~
Syntax: cast <spell> <target>

Before you can cast a spell, you have to practice it.  The more you practice,
the higher chance you have of success when casting.  Casting spells costs mana.
The mana cost decreases as your level increases.

The <target> is optional.  Many spells which need targets will use an
appropriate default target, especially during combat.

If the spell name is more than one word, then you must quote the spell name.
Example: cast 'cure critic' frag.  Quoting is optional for single-word spells.
You can abbreviate the spell name.

When you cast an offensive spell, the victim usually gets a saving throw.
The effect of the spell is reduced or eliminated if the victim makes the
saving throw successfully.

See also the help sections for individual spells.
~

1 'CASTLE ZHAKRIN'~
Recommended level range: 0 - 60

Castle Zhakrin is the stronghold of the Forsaken, the home of those
who still cling to the Lost God of Evil Zhakrin. These devout followers
follow an ancient prophecy that their God will return when his name has
been sufficiently honored. To further his cause, the Forsaken bring forth
sacrifices to their God and do all in their power to further the cause
of Darkness. Castle Zhakrin's location remains shrouded in mystery, as
well as its contents and secrets.
~

0 'CAUSE LIGHT' 'CAUSE SERIOUS' 'CAUSE CRITICAL' HARM~
Syntax: cast 'cause light'    <victim>
Syntax: cast 'cause serious'  <victim>
Syntax: cast 'cause critical' <victim>
Syntax: cast harm             <victim>

These spells inflict damage on the victim.  The higher-level spells do
more damage.
~

1 'CAUSTIC FOUNT'~
The second discipline of acid mastery, 'Caustic Fount' causes a
fountain of acid to levitate about the casting Mage's victim, bathing
him in a malodorous and painful concoction.  The combination of magical
and physical attack gives this spell appreciable effect in combat versus
a wide variety of physical types.
~

61 CEDIT~
Syntax:  cedit save
Syntax:  cedit <command> create [code]
Syntax:  cedit <command> delete
Syntax:  cedit <command> show
Syntax:  cedit <command> [field]
 
Field being one of:
  level position log code
 
Cedit create is used to create the entry and name for a new command.
Cedit delete is used to delete a command.
Cedit code is used to assign a defined section of code to a command.
Cedit show displays current statistics on a command.
Cedit level sets the minimum level for usage of a command.
Cedit position sets the min_pos for execution of the command.
Cedit log determines the manner in which the command will be logged.
 
Use 'cedit save' to save changes permanently.
 
See RESTRICT
~

1 CHA CHARISMA~
Charisma (CHA in your 'score') represents your characters physical beauty
and charm.  It primarily affects:
 
 - a character's practice rate with a language scholar
 
 - prices charged to a character by shopkeepers
 
No class receives charisma as a prime attribute.
 
~

1 'CHAMBER OF THE ANCIENT'~
Far off in the higher planes of the multiverse is the place known as the
Chamber of the Ancient.  Accessible only to the most powerful of deities,
this is where the dark Vl'arescht holds his throne. May Thoric bless any
unfortunate enough to be summoned here, for a fate worse than death
invariably awaits....
 
~

1 'CHANGE SEX'~
Syntax: cast 'change sex' <victim>

This spell changes the sex of the victim (temporarily).
~

-1 CHANGES~
&WA brief summary of some of the significant older code changes:&w
 *> The experience system has changed significantly.  You now receive exp
	with every hit based on the damage you inflict.  (includes spells)
 *> You will only be able to practice your skills and spells so much, the
	rest must be learned through use of the spell or skill.
 *> Warning:  depending on your dexterity, drinking potions and eating in
	combat may be difficult.  Potions also count as a drink.
 *> Corpses are saved across crashes and reboots, eliminating the need
	for most reimbursements for lost corpses. -- see 'help reimbursement'
 *> Type 'help mail' and 'help note' for information on these functions.
 *> Config +gag coded by Swordbearer, gags out all extraneous combat info
	between primary combatants (misses, dodges, parries)
 *> Lots of new socials are now in place! (Special thanks to KaVir for
	sending them our way) (thanks to Scryn for adding them to the file)
 *> New commands:  who guild/order/clan and remove all - coded by Swordbearer
 *> Extreme changes to the way the code handles objects has drastically
	reduced load on the machine all the way around
 *> The ruins of old Darkhaven are now home to deadly characters
 *> Minor healing items in New Darkhaven are now more powerful and cheaper
 *> Bash has changed, see the helpfile.
 *> Equipment no longer scraps in the Arena, or for deadly characters
 *> Retaliatory shields no longer send any message to anyone unless they
	actually strike
 *> Healer mobs won't heal you if you're fighting
 *> Shopkeepers refuse customers in combat
 
&W Type 'news' for more recent changes and additions...
~

1 CHANNELS~
Syntax:  channels
Syntax:  channels +<channel|all>
Syntax:  channels -<channel|all>
 
With no options, CHANNELS show you your current channels.  With a plus or
minus sign and an option, CHANNELS turns that channel on or off.  Using the
'all' option, CHANNELS will turn on/off all normal channels.
 
Public channels are those that can be seen by everyone, regardless of their
affiliation with clans, guilds, orders or councils.  Private channels are
channels available to those with affiliations of some sort, and also tells.
 
The first channels you will have as a new player are SAY, TELL, and NEWBIE.

 - to use say, the person you want to talk to must be in the same room,
   just type SAY <message>.
 - to use tell, the target person may be anywhere within the Realms, just
   type TELL <name or 0.name> [message].
 - newbiechat is seen and used only by level 1 characters, members of the
   Newbie Council, and Immortals.
 
For a more complete explanation of each channel's use and who can
use it, read section 3 of your Adventurer's Guide book.
~

1 'CHAPEL CATACOMBS'~
Recommended level range: 15 - 25

Beneath Darkhaven's cursed graveyard lies an ancient crypt afflicted
by the same curse. The undead run rampant in this horrible place,
rending the flesh of remaining corpses and any living who enter. Any
attempts to rid this place of evil have similarily failed. Rumors of
a more powerful undead, perhaps even a vampire, have been circulating
of late.
~

1 'CHARGED BEACON'~
Syntax:  c 'charged beacon' <victim>
 
Charged beacon renders the victim susceptible to electricity attacks.
~

1 'CHARM' 'CHARM PERSON'~
The charm spell, if successful, will place the victim (only mobs, attempts
to charm other player-characters may incur the wrath of the gods) under
your control for the duration of the spell.  While under your control
the creature is your servant, and may assist you in combat and other
more minor duties.  Use the 'order' command to give them orders.
 
Be warned, you are responsible for the actions of your charmed beast.  If
it should go awry and take the life of another player-character, you will
be charged as a murderer and will be hunted by several creatures around
the Realms.
 
Aggressive mobs will lose their aggressiveness while charmed, but will
immediately return to their violent ways when the spell wears off.  For
this reason, charmed aggressive mobs should not be taken into any area
lower from the one from which they came, and should *never* be taken
into Darkhaven or the Academy.  Those found doing so will pay dearly.
 
As a matter of etiquette, charmed mobs should not be attacked.  You can
tell a mob is charmed if it is wandering "in a dazed, zombie-like state."
Be aware when taking your charmed mobs around other characters that any
area attack such as call lightning, gas breath or earthquake will hit
your creature and cause it to engage in combat.
  SEE ALSO: Help dismiss
~

0 CHAT . MUSIC ASK ANSWER SHOUT YELL~
Syntax: chat     <message>
Syntax: music    <message>
Syntax: ask      <message>
Syntax: answer   <message>
Syntax: shout    <message>
Syntax: yell     <message>

These commands send messages through communication channels to other players.

SHOUT sends a message to all awake players in the world.  To curb excessive
shouting, SHOUT imposes a three-second delay on the shouter.

CHAT, MUSIC, and QUESTION and ANSWER also send messages to all interested 
players.  '.' is a synonym for CHAT.  The ASK and ANSWER commands 
both use the same 'question' channel

YELL sends a message to all awake players within your area.

You can use the CHANNELS command to hear, or not hear, any of these channels.
~

58 CHECKVNUM CHECKVNUMS~
Syntax: checkvnums <field> <start vnum> <end vnum>
 
Checkvnums will allow you to view if any areas conflict with a set
of vnums that you need.
Correct FIELD values include Mob, Object, Room, or All (all three fields).
Starting and ending vnums should not be more than 5k from each other
as you might spam yourself out :)
 
See Also: AASSIGN, MAASSIGN, OASSIGN, FREEVNUMS, FREEVNUMS2
~

0 'CHILL TOUCH'~
Syntax:         c 'chill touch' <victim>
 
This spell inflicts damage on the victim, and reduces their strength
by one point for a short period of time.
 
~

1 CIRCE~
.            ,       ,
			/(       )`
			\ \__   / |
			/- _ `-/  '
		   (/\/ \ \   /\
		   / /   | `    \
		   O O   )      |
		   `-^--'`<     '
		  (_.)  _ )    /
		   `.___/`    /
			 `-----' /
<----.     __ / __   \
<----|====O)))==) \) /=============
<----'    `--' `.__,' \
			 |         |
			  \       /
		  ____( (_   / \______
		,'  ,----'   |        \
		`--{__________)       \/
~

1 'CIRCLE'~
Syntax:  circle <mob>
 
A skill unique to thieves, and which can only be used while in combat.
It inflicts damage comparable to backstab, and requires the thief to
be wielding a piercing weapon.  To sucessfully circle you must be the
first to attack in the battle, or be grouped with whoever was.
 
~

60 CLAN~
~

0 CLANS~
Syntax:  clans
	or:  clans <clan name>
 
The 'clans' displays a list of all current clans, the clan deity and its
leader, as well as the clan pkills (victories) and pdeaths (losses).
 
You can also use 'clans <clan name>' to view information on the specified
Clan.
 
To see more information on the roles of clans type HELP DEADLYCLANS.
 
See also GUILDS, ORDERS
 
~

0 CLANTALK~
Syntax: clantalk <message>

Provided that you are in a clan, clantalk will send the message to all 
current members, as well as the deity.
~

1 CLASS CLASSES~
CLASS CLASSES
The current classes within the Realms available to you are:
0)  Mage
1)  Cleric
2)  Thief
3)  Warrior
4)  Vampire
5)  Druid
6)  Ranger
7)  Augurer
8)  Paladin
10)  Not in use at this time
To get more information on each class, type "help <class name>".
 
~

0 CLEAR~
Syntax: clear

This command clears the screen.

See PAGELENGTH.
~

0 CLERIC CLERICS~
A cleric is a mighty healer and protector of the weak.  Led with a mission
to heal and teach, Clerics have many  varied and sundry healing spells at their
command. While clerics possess some combat spells and magic to affect one's
chances in battle, their main goal is self preservation.  They accelerate in
wisdom and knowledge as they gain in level and experience.
The wisdom of the cleric in the ways of magic and the art of healing, make
them a desirable asset for any group.
 
~

51 CLERICSPELLS~
.          alertness  68%         animate dead[m<1hp 30048m 736mv> <#21530>
Astrix% m  85%      antimagic shell  61%
		 aqua breath  95%                armor  95%          benediction  95%
			   bless  95%            blindness  95%       call lightning  40%
	  cause critical  95%          cause light  95%        cause serious  95%
	  charged beacon  45%     <1hp 30048m 736mv> <#21530>
Astrix%  continual light  95%      control weather  26%
		 create food  95%        create symbol  95%         create water  95%
	  cure blindness  95%        cure critical  95%           cure light  95%
		 cure poison  90%         cure serious  95%                curse  80%
		 detect evil[m<1hp 30048m 736mv> <#21530>
Astrix% 1;36m  44%        detect hidden  75%         detect invis  95%
		detect magic  76%        detect poison  95%         detect traps  52%
		 dispel evil  21%         dispel magic  94%             divinity  56%
			   dream  19%           earthquake  95%      ethereal funnel  30%
		  faerie fire  95%           faerie fog  95%              fatigue
  92%
		  feebleness  56%           fireshield  95%          flamestrike  52%
			   float  95%                  fly  95%              fortify  95%
		   grounding  60%                 harm  95%                 heal  95%
	   holy sanctity  83%             identify  95%          ill fortune  87%
		 indignation  95%          infravision  80%                knock  56%
	  know alignment  95%             lethargy  69%        locate object  95%
	major invocation  72%           mass invis  95%          midas touch  93%
	minor invocation  95%    necromantic touch  95%               poison  95%
		  protection  70%             recharge  19%              refresh  95%
		remove curse  95%          remove trap  19%           resilience  95%
		 restoration  20%            sanctuary  95%                 scry  79%
		 shockshield  95%         solar flight  50%      spiritual wrath  19%
			  summon  95%            transport  26%           true sight  95%
	 unravel defense  95%               uplift  95%       word of recall  95%
 
~

51 CLIMATE~
Syntax climate <field> <name>
 
This command allows you to view or modify the climate
settings for an area. There are settings for temperature,
precipitation, and wind. In addition, you may specify
neighboring areas who will affect changes in the current
areas weather. Therefore there are four fields to choose
from. Each field has a different range of values available.
 
Field name:           Values:
temp                  cold, cool, normal, warm, hot
precip                arid, dry, normal, damp, wet
wind                  still, calm, normal, breezy, windy
neighbor              <area name>
 
Specifying an area name with neighbor which is already on
the list will remove it. Using climate without any arguments
will display the area's current setting. Note that this
command always refers to the area which you are currently in.
~

1 'CLIMB'~
Syntax:  climb  <direction>
 
This skill enables you to climb into and out of rooms that require it.
~

57 CMDTABLE~
Syntax: cmdtable

Lists all of the commands in the game, and how many times they have been used
since the last startup.
~

1 'CODE COUNCIL'~
The Code Council is solely responsible for development and implementation
of all new coding. 
~

-1 COE 'COUNCIL OF ELDERS' ELDERS~
The Council of Elders is formed of some the highest gods experienced
in both creation and administration, and is entrusted with complete
and final executive power over the mud.  No single immortal holds
sole executive power.
 
The council is headed by Blodkai, and is otherwise comprised of Thoric,
Haus, Gorog and Jade.
~

61 COEVOTES~
1 april ..action specifics passed with one yes. Vote up for 6 weeks.
1 april .. scan 0 or 100.. approved 2 to 1
re newbie room change. 2 yes 2 abstain
more info in report ..passed 1 yes, 1 abstain
adding adrenalin to peacefuls ..unanimous
note list proj approved..one yes..1 abstain
xan order approved 2 1 and 1
skill forage approved 2 0 1
~

55 COINDUCT COOUTCAST COIN COOUT~
COINDUCT COOUTCAST COIN COOUT
 
Syntax:  coinduct <playername>
		 cooutcast <playername>
 
Coinduct inducts an player into a council.  Cooutcast removes a player
from a council.
This command should only be used if it is your council unless authorized.
~

51 COLOR COLOUR~
.
The following 16 colors are supported in the commands echo, recho,
mpecho, mpechoat and mpechoaround.

_whi  White
_yel  Yellow
_blu  Blue
_dbl  Dark Blue
_lbl  Light Blue
_cya  Cyan (sort of turquoise)
_gre  Green
_dgr  Dark Green
_cha  Charcoal (grey)
_dch  Dark Charcoal (dark grey)
_pur  Purple
_red  Red
_ora  Orange
_bro  Brown
_pin  Pink
_bla  Black

Note that the indicator is the first three letters of the color itself
so that it is easy to remember.

If the indicator is preceded by an asterisk, the message will blink.
You only need to enter as much of the color indicator as needed to
uniquely identify it.
 
recho _red              This is an example of recho in red.
recho *red              This is an example of recho in blinking red.
mpe _yel                This is an example of mpecho in yellow.
mpechoat $n _blu        This is an example of mpechoat in blue.
mea $n _blu             This is an example of mpechoat in blue.
mpechoaround $n _bro    This is an example of mpechoaround in brown.
mer $n _bro             This is an example of mpechoaround in brown.
mpe _r                  This is an example of mpecho in red.
 
~

65 COLORIZE~
Syntax:   colorize 
Syntax:   colorize [<LOCATION> <COLOR>]
 
LOCATION:  Without any arguments will list your current
settings.  Otherwise specify the location you want to change.
 
COLOR:  This can be the name of the color you want or default
which will set it to the current color in the mud scheme for that 
location.
 
~

51 COLORS~
The ability to color Help and other files is very useful. We ask
that you try to stick to these guidelines for color usage so that
we can have some consistency in their use:
 
Here are some outlines for using color on a white text file:
  &CHelp (Filename) &Wcolored cyan.
  &GLaws (Law) &WColored green.
  &PAttacker/Killer/Thief &Wcolored pink.
  &GOrder/Guild (Order/Guild) &Wcolored green.
  &RClans (Clan) &Wcolored red.
  &YSyntax  &Wfor sytax references, colored yellow.
  &CDeities (Deity) &Wcolored cyan.
  &RDeadly/Dealies &Wcolored red.
  &YConfig (+/- option) &Wcolored yellow.
 
If you wish to add other colors to your file, please use good
taste, make sure it is readable and don't get too whacky. If
you follow the above guidelines and stick to using white for
all other text, it will keep the text solid and legible. Should
you choose not to use any colors at all, that is also okay, the
above guidlines are merely for proper use of color, white is
always acceptable.
 
In addition, please keep in mind that the following topics should
not be colored except by their defaults:
  - Help (area name)
  - Help (skill)
  - Help (spell)
  - Help (class)
~

1 COMBAT~
You may choose a fight by finding a mob, and using LOOK, CONSIDER, and
IDENTIFY to gauge the difficulty of the opponent.  You can LOOK <mob>
to get a look at its equipment and description, this will often help
indicate how hard a fight might be. You can CONSIDER <mob> for a one
on one comparison of the mobs hitpoints and level to your own.  You may
also CAST IDENTIFY <mob> to get more detailed information about the mob.
 
You may start a fight by using KILL, MURDER, or many spells and skills
available to players.  The easiest way to start a fight is to KILL <mob>.
Currently, you may also MURDER <mob>, but this causes the mob to yell out.
 
You may find yourself in trouble during a fight, and wish to leave, this
can be done by using FLEE or RECALL.  You can flee a fight by typing FLEE.
You may recall from a fight with the spell 'word of recall' or by reciting
a recall scroll.  You may also set it up to flee automatically once you go
below a certain number of hitpoints by using WIMPY.  To use your wimpy, type
WIMPY or WIMPY <number of hitpoints>.  Leaving a fight with wimpy, flee, and
recall WILL cost you a loss of experience, with recall causing the greatest
loss.
 
For more information on combat, read section 12 of your Adventurer's Guide.
~

1 COMMANDS SOCIALS~
Syntax:  commands <string>
Syntax:  socials
 
COMMANDS shows you all the (non-social) commands available to you.  If you
include a string you see all available commands that begin with that string.
 
SOCIALS shows you all the social commands available to you.
(Special thanks to KaVir for mailing us lots of extra socials)
 
See also EMOTE
~

51 COMMENT~
Syntax: comment write
Syntax: comment subject <subject>
Syntax: comment post <player>
Syntax: comment list <player>
Syntax: comment read <player> #
 
Comment write puts you into a buffer, and the commands work just like writing
a note.  You may only read and post comments on players currently online.
 
Comments should be used for all disciplinary actions and warnings, on anyone
who makes frequent demands of or troubles for immortals in general even if
the player is not doing something specifically illegal, repeated problems,
after _all_ reimbursements, and any other information you feel would be
important to another Immortal when dealing with the player in the future.
 
If you have a disciplinary action and the player quits before you are able to
post a comment, please place a copy of the comment on the board located in
hell, room vnum 6.
 
~

51 COMMENT1~
A Neanderthal brain in a Cro-Magnon body.
An experiment in Artificial Stupidity.
Been napping in front of the ion shield again.
Can be outwitted by a jar of Marshmallow Fluff.
Can't find his ass with two hands and a periscope/
Doesn't have the sense God gave an animal cracker.
Fired from McDonald's for having a short attention span.
Guillotining him would make only an aesthetic difference.
Has a full six-pack but lacks the plastic thing to hold them together.
Has all the brains God gave a duck's ass.
Has an IQ of 2, and it takes 3 to grunt.
He seems to be a bit wispy of the grey matter.
He's not stupid; he's possessed by a retarded ghost.
If he had half a brain, his ass would be lopsided.
IQ = dx / (1 + dx), where x = age.
Living proof that nature does not abhor a vacuum.
Not enough brains cells for the Prozac to be effective.
One of the early failures of electroshock therapy.
Proof that evolution *can* go in reverse.
So stupid, mind readers charge her half price.
ome drink from the fountain of knowledge, but he just gargled.
Suffers from Clue Deficit Disorder.
The wheel's spinning but the hamster's dead.
Wasn't abused as a child, but should have been.
~

0 COMPARE~
Syntax: compare <object-1> <object-2>
Syntax: compare <object>

COMPARE compares two objects in your inventory.  If both objects are weapons,
it will report the one with the better average damage.  If both objects are
armor, it will report the one with the better armor class.

COMPARE with one argument compares an object in your inventory to the object
you are currently wearing or wielding of the same type.

COMPARE doesn't consider any special modifiers of the objects.
~

-1 COMPLAINT COMPLAINTS~
Concerns and complaints may be emailed to Blodkai (blodkai@game.org).
Details are important, and logs (when not unduly log) are always best.
 
~

1 CON CONSTITUTION~
Constitution (CON in your 'score') represents your character's physical
stamina.  Among other things, it affects:
 
 - the number of hitpoints a character receives each time it levels
 
 - the number of hitpoints recovered or regenerated at each tick if
   resting or sleeping
 
 - the number of additional moves a character receives at level
 
 - improvement or worsening of a character's mental state, thus
   affecting general endurance
 
No class receives constitution as a prime attribute.
 
~

0 CONFIG~
Syntax:  config + or - <option>
 
This command configures some of your character behavior.  Typing CONFIG
alone shows you your current settings.  With a plus or minus sign and
an option, CONFIG turns that option on or off.  The options are:
 
  NICE      Toggle attack response if attacked by a player (non-deadly only)
  NORECALL  Toggle automatic recall if you lose link during combat
  AUTOEXIT  You automatically see exits
  AUTOLOOT  You automatically loot corpses (not on pkilled corpses)
  AUTOSAC   You automatically sacrifice corpses
  AUTOGOLD  You automatically split gold from kills with your group
  GAG       Toggle whether you see battle details in full or brief form
  PAGER     Toggle page pausing on long scrolls
  BLANK     You have a blank line before your prompt
  BRIEF     You see brief descriptions only.
  COMBINE   You see object lists in combined format
  NOINTRO   Toggle whether you see the graphic screen at login
  PROMPT    You have a prompt
  TELNTGA   You receive a telnet GA sequence
  ANSI      You receive ANSI color sequences
  RIP       You don't receive RIP graphics
  DRAG      Toggle whether others can drag you if you are incapacitated
  NOSUMMON  Toggle whether you will allow player characters to summon you
  GROUPWHO   Toggles an announcement that you seek to group.
For more information on the configuration menu, read section 5 in your
Adventurer's Guide book.
 
See also: PAGER, PROMPT, PCOLORS.
~

0 CONSIDER~
Syntax: consider <character>

CONSIDER tells you what your chances are of killing a character.
Of course, it's only a rough estimate.
~

52 CONSTATES~
State | Description
-----------------------------------------------------------
	0 | Player is playing.
	1 | Player is prompted for his or her name.
	2 | Player is prompted for his or her password.
	3 | Player is prompted to confirm his or her name.
	4 | Player is prompted to select a password.
	5 | Player is prompted to confirm the password.
	6 | Player is prompted to select his or her sex.
	7 | Player is prompted to select a class.
	8 | Player is reading the message of the day.
	9 | Player is prompted to select a race.
   10 | Unused.
   11 | Player is in the line editor.
   12 | Player is prompted to select RIP, ANSI or NONE.
   13 | Player is viewing the title screen.
   14 | Player is prompted to PRESS ENTER.
   15 | Player is waiting for authorization (1).
   16 | Player is waiting for authorization (2).
   17 | Player is waiting for authorization (3).
   18 | Player has been authorized.
~

0 CONTAINER CONTAINERS~
Containers are almost a necessity in the Realms.  They are used to carry
items, food, and drinks.  They help allow you to sort things, by using two
or more types of containers at once.  Corpses use many of the same commands
as regular containers.
 
EXAM <container> or LOOK IN <container> allows you to see what it contains.
 
GET <item> <container> allows you to take one item from a container.
GET ALL <container> allows you to take everything from a container at once.
GET ALL.<item> <container> allows you to take all of a particular item type
 
PUT <item> <container> puts an item inside a container.
PUT ALL <container> will put as much of your inventory in the container as
possible, until the container is full.
PUT ALL.<item> <container> will put as much of one type of item into the
container as possible, until the container is full.
EMPTY <container> will pour all of the contents onto the ground. 
EMPTY <container> <different container> will transfer the contents.
   Read your Guide to the Realms for more information on containers.
 
~

53 CONTAINER_FLAGS~
Container flag values:
	 Closeable = 1
	 Pickproof = 2
	 Closed    = 4
	 Locked    = 8
	 Eatkey    = 16
~

0 'CONTINUAL LIGHT'~
Syntax: cast 'continual light'

This spell creates a ball of light, which you can hold as a light source.
The ball of light will last indefinitely.
~

0 'CONTROL WEATHER'~
Syntax:  cast 'control weather' <warmer/colder>
Syntax:  cast 'control weather' <wetter/drier>
Syntax:  cast 'control weather' <windier/calmer>
 
This spell allows you to change either the temperature, amount of
precipitation, or amount of wind.  Note that these changes do not
take effect until the next tick.
 
~

61 CONTROLS~
Cset is used to set the system's 'control panel' settings.
Syntax: cset <field> <level>
Fields: save - saves the control panel settings
		dodge_mod - divide dodge chance (% learned) by this (default 2)
		parry_mod - same as above, for parry                (default 2)
		tumble_mod - same as above, for tumble              (default 4)
		stun - sets normal (mob vs. player / player vs. mob) stun modifier
		stun_pvp - as above, for player vs. player
		bash_pvp - bash modifier player versus player
		bash_nontank - modifier if basher is not tanking the victim
		gouge_pvp - gouge modifier player versus player
		gouge_nontank - gouge modifier if gouger is not tanking the victim
		dam_pvp - percentage adjustment for player vs. player fighting
		dam_pvm - as above, for player vs. mob
		dam_mvp - as above, for mob vs. player
		dam_mvm - as above, for mob vs. mob
		get_notake - level to pick up notake flagged items
		read_all - level to read all mail
		read_free - level to read mail for free
		write_free - level to write mail for free (no items necessary)
		take_all - level to take all mail
		muse - level to see/use muse channel
		think - level to see/use think channel
		log - level to see log channel
		build - level to see build channel
		proto_modify - level to modify prototype objects
		mset_player - level to allow mset to operate on a player
		override_private - level to override private/solitary rooms
		forcepc - level to force pc's
		guild_overseer - name of the Overseer of Guilds
		guild_advisor - name of the Advisor to Guilds
		saveflag - flags/actions on which to save a pfile (drop, give, get,
				   receive, auction, zap, death, auction, auto, password)
		ban_site_level -  level able to ban sites
		ban_class_level - level able to ban classes
		ban_race_level -  level able to ban races
		bestow_dif - max lvl dif between bestowed cmd level and char lvl
		checkimmhost - imm host checking on or off
 
~

1 COOK~
Syntax: Cook <item>
 
Cooking requires certain food types and a fire. Cooking ones' food will
keep it preserved longer, and remove many poisons. However, overcooking
may destroy the item.
~

-1 COPYRIGHT~
.
SMAUG (c)1995, 1996, 1997, 1998 D.S.D. Software.
~

1 'CORAL DEPTHS'~
Recommended level range: 10 - 35

Following the Darkhaven River eastward, many an adventurer has come upon
a vast area of glistening water and waves.  A casual swim is enjoyed here,
though one must be wary of fish and aggressive sharks.  It is beneath the
lapping waves where the wonders, and dangers, of the Coral Depths truly lurk.
The fabled Merfolk have founded a paradise under the sea, pushing back all
manners of danger from their wondrous village.  Some of the most wise and
intelligent scholars of Despair reside in Mer Village, teaching the cherished
young.  The Merfolk have one common enemy beneath the waves: a sea hag who
resides in the deepest corner of the dark coral tunnels.  Little is known
about this hag, yet it is suspected that she is preparing one day to destroy
the Merfolk completely...
~

52 COUNCILNUMS~
. &r--------------------------------------------------------------------
  
					 &GNUMBER           COUNCIL
   
					   &c1              CoE - Council of Elders
					   2              TS  - The Symposium
					   3              NC  - Newbie Council
					   4              Pro - Primordial Circle
					   5              PK  - Pkill Conclave
					   6              QC  - Quest Council
					   7              Neo - Neophyte Council
					   8              CC  - Code Council
					   9              AC  - Area Council
 
   &r--------------------------------------------------------------------
 
	   &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3
				   ITEMVALUES, OBJECTTYPES, VARIABLES,  

~

1 COUNCILS COUNCIL~
The following councils exist to administrate various areas of the mud:
 
Council of Elders -- responsible for complete mud administration, with each
					 member working independently in other areas as well.
The Symposium     -- responsible for immortalization of avatars, mortal
					 immortal communications, and idea/project management.
Pkill Conclave    -- responsible for administration and development of the
					 deadly combat system, clans and other pkill matters.
Quest Council     -- responsible for creating, running and overseeing quests
					 as well as evolution of the quest system itself.
Newbie Council    -- primarily oversees concerns dealing with new, low-level
					 characters (areas, equipment, etc.), this council also
					 employs many mortals who assist new players in need.
Code Council      -- responsible for all code-related matters
Neophyte Council   -- Overseer of level 51-53 immortals and inactivity 
					  demotions.
See also HELP '<council name>' for further information.
Typing <councils> <council name> will show membership numbers and a brief
description of what the council does.
~

1 COUNCILTALK~
Syntax: counciltalk <message>
Syntax: coun <message>
 
The Counciltalk command will allow your message to be heard by other
characters in your council, should you be a member of one.
~

1 'CR' 'CORPSE RETRIEVAL' 'CORPSE'~
Before asking an immortal for a corpse retrieval, you &r-must-:&w
 
&r    -&w Attempt to get your corpse yourself, &rand
	-&w Use invis and hidden, this will get you past a lot of mobiles,&r and
	-&w Seek mortal assistance to retrieve your corpse.&r
	-&g If all else fails, wait at least 20 minutes after death to ask for an
	  Immortal corpse retrieval.&w

**  "I need to leave now!" is not grounds for an early Immortal CR.
**  Corpses last approximately 40 - 60 minutes after the time of death.
**  Corpse decay will happen even while you are linkdead or after you quit.
**  Characters listed under 'who deadly' are not eligible for Immortal CR.
**  Corpses _will_ save over crashes and reboots, but will continue to decay
	once the Realms comes back online.  Log back on quickly to get corpse.

The cost for CRs is usually one item from your corpse.  An Immortal may
choose to charge MORE or LESS. 
 
&gAn Immortal corpse retrieval is not a right, but a privilege.&w  Pestering
or being demanding is cause for the Immortal to deny your request.  An
Immortal may refuse to do any CR at their discretion.  You may not barter
which items an Immortal can take from your corpse as the charge, the
Immortal's decision is final.
~

1 CRASH~
Crashes are unforeseen interruptions in the game that cause everyone
to be disconnected. If you type time and look at the system start up
time, you can determine if the game has just rebooted or if it was a
problem with only your character. 
   99.9% of the time corpses will save over a crash. The game will 
start back up with your character at the last place you saved or the
game saved you. 
 
See &WHELP REIMBURSEMENT &w and &WHELP SAVE &w
~

0 'CREATE FIRE'~
Syntax: cast 'create fire'

This spell brings forth a magical fire from the ground.
Though it currently has no use other than a lightsource in the room, it
will soon have many uses, including cooking and lighting things.
~

0 'CREATE FOOD'~
Syntax: cast 'create food'

This spell creates a Magic Mushroom, which you or anyone else can eat.
~

0 'CREATE SPRING'~
Syntax: cast 'create spring'

This spell brings forth a magical spring from the ground, which has the
same properties as a fountain.
~

1 'CREATE SYMBOL'~
This spell creates a holy symbol which is required as a component in
powerful clerical spells.
~

0 'CREATE WATER'~
Syntax: cast 'create water' <drink-container>

This spell replenishes a drink container with water.
~

51 'CREATOR'~
The following is a guideline of level 53 responsibilities:
 
   - An Immortal must spend at least 5-7 hours per week or at least
	 25 hours per month online to remain active and productive
   - Must be visible to all mortals, unless involved in running a
	 quest, watching someone or building.
   - Authorization of new characters
   - Channel monitoring -- should keep all channels on
   - Appraising higher Immortals of Mortal rule violations
   - Advise a 55+ of all reimbursement requests from mortals
   - Cr's at discretion, monitoring note boards, remaining VISIBLE
   - Learning proper mortal discipline techniques and punishments
	- Helping 51 and 52 level immortals as needed.
   - Possible room building work
   - Possible work at 5500 if interested in building or coding
   - Possible council work
 
Type 'wizhelp' to view your privileged commands.  For a list of Immortal
rules, 'help imm'.  Visit note boards at 1200, 1213, and 1214 regularly.
~

-1 CREDITS~
---------------------------------------------------------------------------
 | o         M A N Y    S P E C I A L    T H A N K S    T O :            o |
 |           ================================================              |
 | Dennis M. Ritchie and Ken Thompson for their creation and development   |
 | of "C" and UNIX; also Bell Laboratories, AT&&T, MIT, and the University  |
 | of Berkeley California for their development and contributions to UNIX  |
 | and C libraries; and thanks also to The Free Software Foundation for    |
 | their GCC compiler, C library and development tools.                    |
 |                                                                         |
 | J.R.R. Tolkien for his huge contribution to the fantasy world and great |
 | many, many inspirations; and of course TSR Hobbies Inc. for their many  |
 | continuing contributions to the world of gaming, including Dungeons &&   |
 | Dragons (tm), AD&&D (tm) and Forgotten Realms (tm); also Steve Jackson   |
 | and Ian Livingstone for their Fighting Fantasy (tm) games and books.    |
 |                                                                         |
 | DikuMUD was created by:                                                 |
 |                                                                         |
 | Sebastian Hammer                  Michael Seifert                       |
 | Prss. Maries Alle 15, 1           Nr. Soeg. 37C, 1, doer 3              |
 | 1908 Frb. C.                      1370 Copenhagen K.                    |
 | DENMARK                           DENMARK                               |
 | (email bombman@freja.diku.dk)     (email noop@freja.diku.dk)            |
 |                                                                         |
 | Hans Henrik St{rfeldt             Tom Madsen                            |
 | Langs} 19                         R|de Mellemvej 94B, 64                |
 | 3500 V{rl|se                      2300 Copenhagen S.                    |
 | DENMARK                           DENMARK                               |
 | (email bombman@freja.diku.dk)     (email noop@freja.diku.dk)            |
 |                                                                         |
 | Katja Nyboe                                                             |
 | Kildeg}rdsvej 2                                                         |
 | 2900 Hellerup                                                           |
 | 31 62 82 84                                                             | 
 | DENMARK                                                                 |
 |(email katz@freja.diku.dk)                                               |
 |                                                                         |
 | And a great many thanks to all the gods, avatars and wonderful players  |
 | of Realms of Despair, as without them this mud could not be what it is. | 
 |                                                                         |
 | o                             -Thoric                                 o |
 ---------------------------------------------------------------------------
~

1 CRYSTALMIR~
Recommended level range: 25 50


In a quiet valley somewhere south of Solace lies a crystal lake surrounded
by a ring of mountains. The locals call this lake "Crystalmir", and legend
has it that a large dragon like turtle dwells deep beneath it's waters. The
valley is rumoured to be inhabited by small bands of hobgoblins and a few
farmers who attempt to grow crops there. In the mountains where the wild
horse roams, some say there lies a secret passage into the vast forest of
mazes. 
~

59 CSET~
Cset is used to set the system's 'control panel' settings.
Syntax: cset <field> <level>
Fields: save - saves the control panel settings
		dodge_mod - divide dodge chance (% learned) by this (default 2)
		parry_mod - same as above, for parry                (default 2)
		tumble_mod - same as above, for tumble              (default 4)
		stun - sets normal (mob vs. player / player vs. mob) stun modifier
		stun_pvp - as above, for player vs. player
		bash_pvp - bash modifier player versus player
		bash_nontank - modifier if basher is not tanking the victim
		gouge_pvp - gouge modifier player versus player
		gouge_nontank - gouge modifier if gouger is not tanking the victim
		dam_pvp - percentage adjustment for player vs. player fighting
		dam_pvm - as above, for player vs. mob
		dam_mvp - as above, for mob vs. player
		dam_mvm - as above, for mob vs. mob
		get_notake - level to pick up notake flagged items
		read_all - level to read all mail
		read_free - level to read mail for free
		write_free - level to write mail for free (no items necessary)
		take_all - level to take all mail
		muse - level to see/use muse channel
		think - level to see/use think channel
		log - level to see log channel
		build - level to see build channel
		proto_modify - level to modify prototype objects
		mset_player - level to allow mset to operate on a player
		override_private - level to override private/solitary rooms
		forcepc - level to force pc's
		guild_overseer - name of the Overseer of Guilds
		guild_advisor - name of the Advisor to Guilds
		saveflag - flags/actions on which to save a pfile (drop, give, get,
				   receive, auction, zap, death, auction, auto, password)
 
~

1 CUFF~
Syntax:  cuff

Cuff is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

0 'CURE BLINDNESS'~
Syntax: cast 'cure blindness' <character>

This spell cures blindness in one so unfortunate.
~

1 'CURE LIGHT' 'CURE SERIOUS' 'CURE CRITICAL' HEAL~
.
1) Syntax:  cast heal            <character>
2) Syntax:  cast 'cure critical' <character>
3) Syntax:  cast 'cure serious'  <character>
4) Syntax:  cast 'cure light'    <character>
 
These spells heal damage suffered by the target character.  The higher-level
spells heal more damage.
~

0 'CURE POISON'~
Syntax: cast 'cure poison' <character>

This spell cures poison in one so unfortunate.
~

0 CURSE~
Syntax: cast 'curse' <character>

This spell reduces the character's to-hit roll by 1 and save versus spells
by 1.  It also renders the character unclean in the eyes of God and
unable to RECALL.
~

53 DAIL5~
~

53 DAILY10~
~

53 DAILY11~
~

53 DAILY12~
~

2 DAILY2~
.       &YThe Corner of Wisdom
				   &Gby The Sage of Despair
&W
Dear SoD,
I can't get into any orders because (order name withheld) blackened my
name for life after my brother signed on my character and stole stuff.
Orders suck. I think they should all be disbanded.
 -&CNeed Order in My Life&W
 
Dear You Want Fries With That Order,
The Sage spoke to each of the orders in the realms and they all offered
the same verdit on you. You suck. The Sage thinks you better get your
house in order before you go around trying to pass judgement on the
orders in our realms. If your brother is responsible for stealing eq
while impersonating you than you are responsible. How is it that your
brother was able to peel your face from that lump you pass off as your
body? Surely you didnt notice that your face had been removed? Of course
not. One so mentally chalenged as you would never miss something as
trivial as his face. If you are going to allow someone to use your face
and thus assume your identity than you will have to face (heh notice the
clever Sage pun) the consequences. If you cant keep your face to
yourself perhaps you would like the Sage to hold it for you? I have some
flesh borer beetles who were looking for a place to live. Get your face
stitched on, straighten up your act and maybe, just maybe, you will
still suck. Leave me now.
Scalpel please,
 &GThe Sage of Despair&W
 
More on &YHelp Daily3
~

2 DAILY3~
.                    *&Y * &R* &CCLUELESS &R* &Y* &W*
 
Welcome to Clueless. Should you have any Clueless stuff you would like
to see posted here, send your submissions to Adric.

&CClueless Titles&W:
****** is really an escapee mental patient!!!. (I had you pegged;) - Dric)
****** tells you 'Proofread: be careful not to words out..
****** is one hell of a dog trainer.
****** Mr Spaz.  (Some of you are frighteningly honest ;) - Dric)
****** the One Legged Augurer.
Tim-mie O'Toole fell down the well AGAIN. 
****** is looking for his pants!.
 
&CClueless Quotes&W:
****** guildtalks 'tal wants to call me while i don't have my clothes on ;)'
****** guildtalks 'they should make an XXX rated version of Xena... :P'
****** : ::will sell her body for a SoL::
(The following are all part of one dialogue)
****** guildtalks 'amazing I bet 99% of the nonafk ppl are doing the same'
You guildtalk 'the rest are all picking their butt...'
****** guildtalks 'I was just licking my fingers... Mmmmmm'
****** guildtalks '1% huh? whats that like 4 ppl?'
****** guildtalks 'it would be an even 2 if 6 ppl loged off now'
****** guildtalks 'so 1 person is helping the other'
****** guildtalks 'the .6 is a person who is only 60% done picking'
****** guildtalks 'Nah,. that means one person is picking someone else.... :P'
 
&CThis message was brought to you by &PAdric&W. Thanks Dric!

More on &YHelp Daily4
~

2 DAILY4~
~

2 DAILY5~
&CCackle &WContinued from previous...
 
came out of its cage and waddled over towards the Russian dog. 
The Russian dog snarled and leaped out of its cage and charged 
the American dachshund. But, when it got close enough to bite 
the Dachshund's neck, the Dachshund opened its mouth and 
consumed the Russian dog in one bite. There was nothing left 
at all of the Russian dog. 
 
The Russians came up to the Americans shaking their heads in 
disbelief. "We don't understand how this could have happened. 
We had our best people working for five years with the meanest 
Doberman and Rottweiller females in the world and the biggest, 
meanest Siberian wolves."
 
"That's nothing", an American replied. "We had our best plastic 
surgeons working for five years to make an alligator look like a 
Dachshund."
 
&CRofl&W. Thanks to &PLascivias &Wfor today's laugh.
~

53 DAILY6~
~

53 DAILY7~
~

53 DAILY8~
~

53 DAILY9~
~

0 DAMAGE~
When one character attacks another, the severity of the damage is shown
in the verb used in the damage message.  Damage messages vary depending
on weapon type, or what is inflicting the damage.  Escalating damage is
indicated by the use of _ _ around the messages, regardless of weapon
type.  Messages in all caps indicate even higher degrees of damage,
while those surrounded by * * indicate the highest levels.
 
The message shown will reflect the actual damage you are inflicting on
(or receiving from) your opponent, and not a specific fixed amount.
~

51 DAMPLUS~
.
For those unsure of what damplus is, it is part of the damage
equasion for a mob... ie:  10d6 + 10   (the +10 is the damplus)
This "damplus" is always added, whether or not the mob is barehanded or
wielding a weapon.   This is basically the mob's damroll.
 
~

1 DAMROLL~
Represents the amount of damage you inflict upon an opponent.
The higher the number, the better.
 
~

53 DAMTYPES ACTTYPES CLASSTYPES POWERTYPES~
DAMAGE          ACTION       CLASS         POWER       SAVES
none            none         none          none        none
fire            create       lunar         minor       poison_death
cold            destroy      solar         greater     wands
electricity     resist       travel        major       para_petri
energy          suscept      summon                    breath
acid            divinate     life                      spell_staff
poison          obscure      death
drain           change       illusion
 
~

1 DARKHAVEN~
Recommended level range: 0 - 60


Darkhaven, famed City of Hope, lies in the center of the Realm's main
continent. The city, though constantly under the threat of invasion, has
never fallen to the forces of Darkness and remains one of Light's most
fervent defenders. In fact, the greatest adventurers of Despair originate
from Darkhaven, probably due to the excellent teachings of the famed
Darkhaven Academy. Darkhaven is a growing city, with busy markets filled
with objects of wonder and anyone wishing to join one of Despair's nine
guilds will certainly want to visit Darkhaven, where the guild halls are
located. Also of note is the newly revamped Art Gallery and Town Hall.
~

1 'DARKHAVEN ACADEMY'~
Recommended level range: 1 - 5

The Darkhaven Academy is the training institute of majestic Darkhaven.
A great number of adventurers come here to learn the basics of battle and
spellcasting, as well as many survival techniques. Magically controlled
by Avatars of the most powerful deities, there is an abundance of monsters
here kept for the sole purpose of practice and tutelage.
~

1 'DARKHAVEN ART GALLERY'~
Recommended level range: 10 - 50

The strange, magical artwork of Darkhaven's artisans is represented
here. Beautiful paintings and strange sculptures abound in this
strange building, which was wrought of stone by the dwarves. It is
rumored that there is more to the artwork than meets the eye. Some
even say that you may enter the paintings as if they were portals to
distant places...
~

1 DARKUR~
.            __                                                    _
		 _.-"--"-._         .-----------        _____          _.:(_):._
	   ."  _____   ".       |###########|     .'_____'.      .':::::::::'.
	  (==="  Y  "====)      |88888888888|   .' /__ __\ '.    |:=========:|
	  :  | @ | @ |   :     /#/:   Y   :\#\  | |   V   | |    | .'  Y  '. |
	 .`   '-'_'-'    '.   (_/ ' @ | @ ' \_) | | @ | @ | |    | ' @ | @ ' |
   .'  `._  (_)   _.'  `.   '  `-' `-'  '   `. \-' '-/ .'    .  `-'_`-'  .
  :-.     "======"    .-".   `.  -=-  .'      `.`---'.'       `-. (_) .-'
 :..:        |:       :...'  .'`- - -'`.     .'   |   '.     .'  `---'  '.
   :         |:         /   :  M  |  M  :   :     |     :   :      #      :
	`.______./\_______.'   (_).___|___.(_) (_)____|____(_) (_).____#____.(_)
	 `._____./\_____.'        /___.___\       |___|___|       _'_______'_
 
~

1 DARREK2~
____
|    ||
| -- ||\
|    || \
|    ||\ `////-----.
\___'|_////)/      \
|    `-----/  /     \
|    _____/  /|      \
\  (_______/ |     /\____
\__________/      \_____\
______/__________\____________\_____
 
Darrek puking.. look really close
~

1 DEADLYCLANS~
Clans are a society within Realms composed of a group of players which
have joined together under a common cause.  If you a member of a 
clan you have the ability to pkill other deadly players outside of your
own clan.  Depending on the clan in which you join, you may be asked 
to follow set of rules dictated by the clan's leaders. 

For more information on a current deadly clan type HELP <clanname>
 
NOTE: Non-deadly and deadly players may join a deadly clan, however
when the character is outcasted it remains deadly.
~

1 DEADLYHQ~
Peacefuls are not permitted EVER to enter deadly headquarters.
~

0 DEATH~
When your character dies, you are reincarnated at the Altar to Thoric in
Darkhaven (or your clan's temple).  Your corpse is left behind where you
were killed, together with all of your equipment.  Your gold stays with
you (the gods want you to have your gold).
 
Any spells which were affecting you are canceled by death, and you lose
experience points as well.  Following/groups are not affected by death.
 
Corpses decay after time.  When this happens the objects inside a corpse
will decay with it.  Player corpses last roughly 30 minutes of real time.
Only the player who died or someone in their group can retrieve objects
from a player's corpse.  The only exceptions are for deadly characters,
who can loot each other's corpses at will.
 
If you have chosen a deity and have gained enough favor, you may be able
to supplicate to your god for your corpse.  Also see 'help supplicate',
'help deities', 'help favor' for more information on deities.
 
For more information on death, see section 13 of your Adventurers Guide.
 
~

1 DEATHTRAP DT~
A "death trap" refers to the scenario where one steps into a room and is
immediately awakened from death with no equipment or corpse. A corpse
recovery is not an option in this case as there is no corpse to retrieve.
 
There are also pseudo death traps that may appear to be a dt, but leave a 
corpse or transfer a corpse to another area. This is not a true dt. 
 
It is often advisable to look before one leaps and heed room descriptions.
DT's do not warrant a reimbursement, they are a part of the game. Gold, 
glory and favor are not affected by a death trap.
~

51 DEBUG DEBUGGING BUGS THORIC CODING SOURCE CODE DEVELOPMENT~
.                              @%#$%&&*!@#!?!?!
  .-------------=======[ Debugging / Coding Credits ]=======-------------.
  |                                                                      |
  |    Most of the extensive debugging and coding of Realms of Despair   |
  |    was done by Thoric in what little spare time he could set aside.  |
  |                                                                      |
  |     Other credits go out to Haus for debugging work on the online    |
  |   building, and also to Strahd, Caine and all the gods who reported  |
  |                       nasty bugs and crash causes.                   |
  |									 |
  |	 Nivek has been a crucial part of getting version 1.4 out as	 |
  |			      bug free possible.			 |
  |									 |
  `----------------------------------------------------------------------'
~

53 DEFENSES~
parry        dodge      heal       curelight   cureserious   curecritical
dispelmagic  dispelevil sanctuary  fireshield  shockshield   shield
bless        stoneskin  teleport   monsum1     monsum2       monsum3
monsum4      disarm

See MSET and ATTACKS  (Some are not implemented).
~

1 DEFENSIVE~
Syntax: style defensive
 
This style emphasizes the deflecting of blows from an enemy. It is similar
to the evasive style, except that it focuses on holding ground instead of
dodging. An effective fighter will take less damage from an enemy, but not
as much as one using evasive tactics. A fighter will also do less damage to
enemies, but slightly greater than those who simply evade.
 
See Also: style, evasive, defensive, standard, aggressive, berserk
~

1 DEHYDRATE~
Syntax: c 'dehydrate' victim
 
Nephandi's are rumoured to use this spell to cause thirst in their victims
as their life is slowly sucked away.
~

1 DEITIES DEITY~
Syntax: 'deities'
		'deities <deity>'
 
The deities command displays all the deities of the world.  Using an
argument will display the target deity's description.
 
&gMAJOR DEITIES:
&WBrontrel        &g(Order)            &WLaschte           &g(Chaos)
&WA'enaar         &g(Good)             &WVl'arescht        &g(Evil)
&WEustathius      &g(Neutrality)

LESSER DEITIES:
&WOmanith         &g(Augurers)         &WVolarh            &g(Thieves)
&WIl'Liara        &g(Mages)            &WCru'udakh         &g(Warriors)
&WAalakab         &g(Vampires)         &WVaiza             &g(Mountains)
&WCirce           &g(Feminism)         &WScryn             &g(Winter)
&WCabal           &g(Storms)           &WGrishnakh         &g(Battles)
&WKali            &g(Assassins)        &WAdonia            &g(hopeless causes)
&WTaboo           &g(Dragon Slaying)

&gMINOR DEITIES: 
&WCh'Aranol       &g(Good Fortune)     &WNae'trelle        &g(Innocence)
&WBor'Hin         &g(Poor)             &WE'soa             &g(Wind)
&WEr'res          &g(Sin)              &WFinaglera         &g(Trickster)
~

58 DEITYFIELD2 DEITYFIELDS2~
Flee, flee_npcrace, flee_npcfoe: favor adjustment made when fleeing
 
Kill, kill_npcrace, kill_npcfoe: favor adjustment made when you kill something
 
Kill_magic: favor adjustment for each offensive spell cast
 
Sac: favor adjustment for sacrificing a corpse
 
Bury_corpse/dig_corpse: Favor adjustments for burying/digging up corpses.
 
Aid_spell: favor adjustment for helping someone with a spell
 
Aid: favor adjustment for aiding someone physically (aid, rescue)
 
Steal: favor adjustment for theft
 
Backstab: favor adjustment for circling and backstabbing
 
Die, die_npcrace, die_npcfoe: favor adjustment for dying
 
spell_aid: favor adjustment for having a help spell cast upon you.
~

58 DEITYFIELDS DEITYFIELD~
Alignment: Deities alignment.  Followers lose favor for all actions when
650 or more out of alignment.
 
Worshippers: # of followers.
 
Npcrace: A mob race protected by the deity.  The _npcrace fields only apply
to this race.
 
Npcfoe: A mob race detested by the deity.  The _npcfoe fields only apply to
this race.
 
Race: A race the deity is restricted to.
Class: A class the deity is restricted to.
 
Sex: A sex the deity only accepts.
 
Element: Resistance deity bestows on followers.
 
Suscept: Susceptible deity bestows on followers.
 
Affected: Spell deity bestows on followers.
 
Object: vnum of deity object
 
Avatar: vnum of deity avatar
 
Scorpse, Savatar, Sdeityobj, Srecall: Prices (in favor) to supplicate for these
for a particular deity.
 
SEE HELP DEITYFIELDS2
~

58 DELAY~
Syntax: delay <victim> <rounds>
 
This command will allow an immortal to "pause" a player. All commands
received by the mud from that player will be delayed by the number of
round determined by the delaying immortal. After the rounds have
elapsed, anything input by the victim during the delay will take affect
on the mud.
NOTE: Mobiles cannot be delayed.
~

1 DEMONFLAME~
Syntax : c 'demonflame' victim
 
Envelopes your victim in flames from hell.
~

1 'DEMONIC AURA'~
Syntax: cast 'demonic' <victim>
 
This spell summons forth the Umbral spirits to protect the Nephandi from harm.
~

0 DEMONSKIN~
This spell makes you less susceptible to slashing attacks.
~

58 DENY DISCONNECT FREEZE~
Syntax: deny       <character>
Syntax: disconnect <character>
Syntax: freeze     <character>

DENY denies access to a particular player and throws them out of the game.
DENY persists past reboots and crashes and can only be undone by either loading
up the character and doing a 'mset <character name> flags deny', or by editing
the player file offline.

DISCONNECT <character> immediately disconnects that character.

FREEZE <character> is a toggle which prevents a character from issuing any
commands at all.
~

63 DESC~
This is the famous blue room, long regarded as one of the finest in its
hospitality.  A wall painting illustrates the history of The Symposium in
great detail.  It is here that anyone needing to speak with the Leader of
the Symposium is welcome to relax.  The council's secretary is often seen
here, buried beneath piles of parchments in an unending effort to perform
all of her duties for this very busy group.  The chamberlain, who works
here on a volunteer basis, is often distracted.  Enjoy your visit, and
please feel free to contact any Symposium member for help if the Symposium
head is unavailable.
To see further information regarding the Symposium, type:  help symposium
To see available members, type:  who 'the symposium'
~

0 DESCRIPTION BIO~
Syntax: description
		bio

The DESCRIPTION command puts you into an editor to edit your long character
description (what people see when they look at you).
The BIO command puts you into an editor to edit your personal bio: what
people see when they check WHOIS on you.
 
An Immortal can request you change your description or bio if it contains
inappropriate material.  Do not use profanity, racial slurs, sexual comments,
other players names (without their permission), or off-color remarks.  Refusal
to change your bio, description, or title on Immortal request is grounds for
loss of character privileges.
~

1 DESECRATE~
&YSyntax&W: c desecrate food/container
 
Desecration is the forte' of the Nephandi. It allows the caster to 
transform a perfectly healthy food item or drink container into one
wrought with poison.
~

65 DESTROY~
-----------------------------------------------------------
 
	 SYNTAX:  destroy <target>
 
DESCRIPTION: The DESTROY command does exactly as it suggests: 
			 destroys player files. Caution, the command 
			 destroys the pfile in use, leaving only the 
			 backup of the pfile, if there is one.
 
 
-----------------------------------------------------------
~

0 'DETECT EVIL'~
Syntax: cast 'detect evil'

This spell enables the caster to detect evil characters, which will
reveal a characteristic red aura.
~

0 'DETECT HIDDEN'~
Syntax: cast 'detect hidden'

This spell enables the caster to detect hidden creatures.
~

0 'DETECT INVIS'~
Syntax: cast 'detect invis'

This spell enables the caster to detect invisible objects and characters.
~

0 'DETECT MAGIC'~
Syntax: cast 'detect magic'

This spell enables the character to detect the presence of magic in
objects, and is also necessary to detect the magical affects of
others for the successful use of the 'dispel magic' spell.
 
See also DISPEL MAGIC
~

0 'DETECT POISON'~
Syntax: cast 'detect poison' <object>

This spell detects the presence of poison in food or drink.
~

0 'DETECT TRAPS'~
Syntax: cast 'detect traps'

This spell makes one magically aware of dangerous traps for a period of
time.
~

0 DETRAP~
Syntax: detrap <object>

This skill allows one to disarm a trapped object.

Use it with care.
~

0 DEVOTE~
Syntax: 'devote <deity>'
		'devote none'
 
Devote allows you to devote yourself to a deity.  If you leave your deity
for another, your favor is set to -2500 and you are blinded for a period
of time. Devote is available to level 5 characters and higher.
 
Note: You must 'devote none' first before devoting to a new deity.

SEE ALSO: supplicate, deities, favor.
To see specific information about a deity, type 'deities [deityname]'
~

1 DEX DEXTERITY~
Dexterity (DEX in your 'score') represents your character's agility, and
it affects (among other things):
 
 - the maximum number of items you can carry at once in your inventory;
   with each additional point of dex you can carry additional items.
 
 - each additional point of dexterity also lowers (improves) your natural
   armor class.
 
 - the number of new moves you receive each time you level, as well as the
   number of moves you regenerate at each tick (when resting to refresh or
   regain movement points).
 
 - success chances with bash, stun and gouge, and helps determine whether a
   thief will be able to poison a weapon or tumble effectively.
 
Dexterity is also very important for quaffing potions in combat.  High dex
will allow you to quaff without dropping many potions during the heat of
battle, while a poor dexterity will cause you to accidentally drop many
of the valuable vials.
 
Dexterity is the prime attribute of thieves and vampires.
 
~

61 DIAGNOSE~
Syntax:  diagnose of 20
 
Diagnose of n - object frequency of top "n" objects.  The above example will
return the 20 most numerous object vnums in the game at that time.
~

56 DICEFORMULAS~
To make the special SMAUG spells possible, special dice formula handling
had to be coded in.  (At least to make it nice).  This dice formula code
supports full BEDMAS expressions ( ) ^^ / * + -, plus extra mud related
operators and variables:
 
D dice         L level          H hit points      M mana
V movement     S strength       I intelligence    W wisdom
X dexterity    C consitution    A charisma        U luck
Y age
 
See SMAUGSPELLS and SSET.
~

1 DIG DIGGING BURY BURYING~
Syntax:  dig
Syntax:  dig  <direction>
Syntax:  bury <item>
 
You can dig and bury items through the use of the dig skill and bury command.
Buried items are not visible to players, even through the use of spells such
as locate object.  To dig an item up, type dig with no arguments.  Having a
shovel raises your chance of success.  If you dig in a direction, you will
attempt to dig open an exit.
 
To bury an item (or corpse), drop the item on the ground and bury <item>.
Depending on the size and weight of the object, you might need a shovel.
 
* Note:  Deadly players can bury/dig up each other's corpses. *
 
Items buried will not last beyond crash or reboot.  Do not attempt to use
this skill for storage of items you wish to keep.
 
~

-1 DIKU~
.         SMAUG was originally based on the Merc 2.1 code which was
			  based on the orignal DIKUMud code created by:

					   The Original DIKUMud Team:

		  Katja Nyboe               [Superwoman] (katz@freja.diku.dk)
		  Tom Madsen              [Stormbringer] (noop@freja.diku.dk)
		  Hans Henrik Staerfeldt           [God] (bombman@freja.diku.dk)
		  Michael Seifert                 [Papi] (seifert@freja.diku.dk)
		  Sebastian Hammer               [Quinn] (quinn@freja.diku.dk)

					 Additional contributions from:

 Michael Curran  - the player title collection and additional locations.
 Bill Wisner     - for being the first to successfully port the game,
				   uncovering several old bugs, uh, inconsistencies,
				   in the process.

		 And: Mads Haar and Stephan Dahl for additional locations.

  The Original DIKUMud was Developed at the Department of Computer Science
					 at the University of Copenhagen.
~

1 DISARM~
Syntax:  disarm
 
Disarm is an auxiliary fighting command to attempt to disarm your opponent.
Several things affect your ability to disarm or resist a disarm attempt
successfully, including your weapon and your stats compared to the weapon
and stats of your opponent.
 
You can only attempt to disarm your primary opponent, meaning you will be
unable to try to disarm a second or third attacker until you have disposed
of the first.
 
~

1 DISCLAIMER~
By continuing to play this MUD you are acknowledging that:
(1)  you are willing to abide by the decisions of the Immortals concerning
all issues involved in the game, and
(2)  conversation and situations may arise during the course of play that 
	 may not be suitable for young children.

By these acknowledgments you hereby save and except this MUD and it's
Administrators from any and all liability that may arise during gameplay.
~

51 DISCLAIMER2~
OUR WAY OR THE HIGHWAY
~

1 DISCLOSURE~
Syntax c 'disclosure'
 
This spell will reveal any sneaking or hiding players in the area. However,
it will also reveal the caster.
~

1 DISMISS~
Syntax: dismiss <target>

The dismiss command will force your charmed mobile to follow itself and
will negate the charm effect.
 
~

0 'DISPEL EVIL'~
Syntax: cast 'dispel evil' <victim>
 
This spell invokes the wrath of the gods upon an evil victim.  If you do
not specify a target, the spell's effect will strike you instead of a
secondary target.
~

0 'DISPEL MAGIC'~
Syntax:  cast 'dispel magic' <character>
 
This spell dispels magical affects on the victim.  It may be used as an
offensive spell to remove an enemy's magical advantages, or as a benign
spell to completely remove your own magical affects.
 
If you are not a mage, you must be affected by the 'detect magic' to be
able to use this spell.  Though mages do not necessarily need to use it,
being under the affects of 'detect magic' will reveal more information
unavailable otherwise or to other classes.
 
'Dispel magic' can be used by players and mobiles alike against either
players or mobiles.  It cannot remove affects from equipment, your race
or your deity; some other affects are immune to this spell as well.
 
When a caster successfully casts 'dispel magic' on themself they will
remove all of their dispellable magical affects.  If a mage successfully
dispels a victim, the number of affects stripped will depend on their
success and intelligence.  Otherwise a successful cast of 'dispel magic'
on a victim will result in the removal of a single affect each time
(victims will notice when and what affects are stripped).
 
WARNING:  this is an offensive spell, and its use on anyone other than
yourself will be treated as an attack on your target.
 
~

1 DISRUPTION~
With the spell 'Disruption,' the casting Mage causes his opponent to
be enveloped in a weird energy field that momentarily alters the plane
which the victim inhabits.  The spell was an early attempt by the Dark
Mage Thanatos to cause teleportation, but it was a failed attempt.  
Instead of teleporting it causes a horrendous nerve-wracking pain as
the victim exits and reenters his current plane of existence.
~

1 DIVINITY~
Syntax:  c divinity <target>
 
This spell heals the target of 200 hitpoints of damage.
~

57 DMESG~
Syntax: dmesg

Displays the contents of the boot log.

If you have the ability, please fix any problems found in the boot log.
~

51 DND~
On or off syntax: DND
 
This command toggles your personal dnd flag.
This command effectively secludes immortals from those of lower level. 
Each immortal has a personal dnd flag associated with their pfile. In
addition, each room can have a dnd flag associated with the room.
 
When your personal dnd flag is set, lower level imms can't 'at', 'goto',
'trans', sight you on 'where' or 'where (name). This does not affect LD 
immortals, they can still be transferred, even with the DND flag on. To 
see the flag's status, 'mstat self', it will be listed under 'pcflags'.
Syntax for room flag: redit flags DND
 
The DND room flag effectively blocks any 'at', and 'goto' commands
either to the room, or to a mob/object in the room. NOTE: It is only
in effect if:
a) there is an immortal in the room with their DND flag on.
b) the immortal attempting the commands is of lower level than the
   immortal with the activated DND flag in the room.
~

0 DODGE~
Syntax:  operates automatically
 
Dodge is a skill which assists in the evasion of incoming attacks.  If
you are successful, your opponent's attack misses and you take will
take no damage. Dodge is an automatic skill and requires no weapon.
~

1 DOMINATE~
Syntax:  dominate <victim>
 
Dominate allows the vampire to bend his victim's will to his own.
 
Dominate is functionally similar to charm, and the rules and matters
of etiquette regarding its use are the same.
 
See CHARM
~

1 DONATE DONATION DONATIONS~
The Cathedral of Notre Dame de Sioux, northwest of the Darkhaven Square,
maintains two donation rooms where equipment and items may be left for
the use of the needy.
 
These rooms are located just before the great altar (south), to either
side of the aisle.  Items placed in the altar itself for donation will
be sorted and placed appropriately by the Cathedral's clerics.
 
~

1 DOORBASH~
Syntax: doorbash <direction>

This skill can be used to effectively bash open doors. NOTE: Not all doors
are affected by this skill.
 
~

53 DOORDIRS~
Here is the order of the exits, and their corresponding values:

  ---------------------
  | Direction | Value |
  |--------------------
  | NORTH     |   0   |
  | EAST      |   1   |
  | SOUTH     |   2   |
  | WEST      |   3   |
  | UP        |   4   |
  | DOWN      |   5   |
  | NORTHEAST |   6   | Exits 6 - 10 are relatively new, and may not be
  | NORTHWEST |   7   | fully supported by all of the code yet.
  | SOUTHEAST |   8   |
  | SOUTHWEST |   9   |
  | SOMEWHERE |  10   |
  ---------------------

See REDIT, RSTAT and RESETCMDS.
~

1 DRAG~
Syntax:  drag  <character> <direction>
 
Drag will drag the victim in the specified direction if they are not
standing up.
 
Deadly characters can drag any other deadly character who is not standing
up, as long as the victim is within the 5-level pkill range.
 
Peaceful characters can drag other peaceful characters only if the target
is stunned, incapacitated or worse.  Peaceful characters cannot drag any
deadly character at any time.  Peacefuls can use 'config +/- drag' to
prevent others from dragging them if they wish.
 
You cannot drag a character into a death trap, or if either you or they
are under attack.
~

1 'DRAGON CULT'~
Recommended level range: 5 - 25

The Cult of the Dragon worships the apocalypse and death. A highly
religious band, they are continuously trying to recruit new followers
and acolytes. Little more is commonly known about the cult, who keep
to themselves inside their often-deadly tower.
~

1 'DRAGON TOWER'~
Recommended level range: 5 - 30

As the ages pass, the Order of Dragonslayer continues its eternal
struggle against the dragons of Despair. The weaker members of the
draconian race slowly began to die out and were forced to retreat. The
draconians, a breed of half-dragon humanoids, were led by their king
into the Shadow Grove. Within this shadowy land, they erected a towering
structure with the aid many powerful dragons of all colors. The most powerful
of these, the Dragon Queen Tiamat, was later magically banished to the Dragon
Tower by the most powerful Dragonslayer mages.
~

0 'DRAGON WIT' DRAGONWIT~
This spell increases your ability to reason for its duration.
~

0 DRAGONSKIN~
This spell makes you less susceptible to piercing weapons.
~

1 'DRAGONSLAYER HQ'~
Recommended level range: 0 - 60

The Order of Dragonslayers has been an influential group for time
immemorial. Composed of fierce fighters and wise sages, they have
sought out and destroyed dragons for centuries in an attempt to 
destroy the reptilian race. Little is known about the Castle of 
Dragonslayers for if the dragons ever discovered it, the Order would
be in grave danger.
~

1 'DREAM'~
Syntax:  cast 'dream' <player>  <message>
 
This spell enables you to cast a dream or message on a sleeping player.
~

0 DROP GET GIVE PUT TAKE~
Syntax:  drop <object>
		 drop <amount>  coins
Syntax:  get  <object>
		 get  <object>  <container>
Syntax:  give <object>  <character>
		 give <amount>  coins <character>
Syntax:  put  <object>  <container>
Syntax:  get/put/drop   <# amount>  <object>
Syntax:  get/put        <# amount>  <object> <container>
 
DROP drops an object, or some coins, on the ground.
 
GET takes an object, either lying on the ground, or from a container, or
even from a corpse (TAKE is a synonym for get).
 
GIVE gives an object, or some coins, to another character.
 
PUT puts an object into a container.
 
Use 'drop/get/put all' to reference all objects present.
Use 'drop/get/put all.<object>' to reference all objects of the same name.
 
Examples:
 - drop 1000 coins
 - get all.ball backpack
 - get 5 sword
 - put 15 potion backpack
 
~

1 'DROW CITY'~
Recommended level ranges: 15 - 25

Early in Despair's history the elves where all one race, on the side of
good. But Laschte, in his infinite insanity enticed a group of elves
from the village of Misinkii, turning them on the path of darkness and
destruction. He warped them to be haters of light, cruel and warlike,
even upon each other. He then sent one of his children, a demi-goddess
of chaos and arachnids to watch over them and prepare them as fodder
in his war with Brontrel. Llolth took these dark elves into her evil web
of deception and had them build a city beneath the dwarven forest. Four
houses arose admidst the strife and chaos between the drow as they have
now are called. Llolth's priestesses rule over the city preparing them
for the one day they will have vengeance on the surface elves. Lately,
rumors have sprung up about an alliance between Drow City and Shadowport..
 
~

-1 DROW DROWELVES~
Drow are the darker, more evil cousins of Elves.  They were once part of
the happy community of Elves which roam the forests today, but have long
since moved under the ground, building vast subterranean cities and
complex networks of caves.

Drow have black skin and white hair, and are moderately weaker and have
a more slight constitution than average humans.  Still, like all Elves,
they have a slightly higher dexterity than men.

Members of this race specialize in spell casting, and have thus developed
a very high intelligence.  Being creatures of darkness the Drow tend to
fight more proficiently in the darkness, and have innate infravision with
which to discern objects and living things in the absence of light.
 
Drow gain experience on a scale of normal rate * 1.08
~

0 DRUID DRUIDS~
The druid is a lover and protector of the natural land.  Be it the forests
full of centaurs and deer, the streams full of fish, or the bug-infested
swamps, a druid always strives to protect and preserve nature.  Wielding
mighty spells from the gods themselves, druids strive hard at their work.
 
Strong in wisdom, with a body trained to near perfection by their rugged
lifestyle, a druid has many disciplines upon which to draw.  From powerful
spells of healing which can bring the near dead back to full vigor, to the
ability to mystically create water and food, to the awesome power of nature
which they command in battle via spells able to quake the land and split
the sky, druids demonstrate that mastery of magic is not just a hobby, but
a way of life for them.  Able to face many warriors on almost even footing,
and able to shield themselves nearly as well as some mages, druids are
truly a gifted class.
 
~

1 DUAL WIELD~
Characters with this skill are able to wield two weapons at once.  To
do so, the character must remove any 'held' item and any shield, then
simply wield two weapons.  Characters with strength under 25 may be
unable to dual wield two very heavy weapons.
 
Once two weapons are wielded, the affects of the skill are automatic.
 
~

0 DWARF DWARVES DWARFS~
Dwarves are relatively short (in Human terms), stocky and powerfully-built
creatures.  Long-lived and extremely sturdy, they are known equally as well
for their hardiness as for their cantankerous personalities.  Their thick,
stout frames lend them poor dexterity, but high strength and stamina.  This
race has produced some of the most reknowned fighters.  Dwarves possess the
inherent ability to see in the dark with infravision.
 
Dwarves average from four foot five inches and five feet tall, with dusky
complexions and thick, fur-covered torsos and limbs.  Both men and women
proudly wear and take pride in their beards.
 
Dwarves gain experience on a scale of normal rate * 0.97.
~

1 'DWARVEN CATACOMBS'~
Recommended level range: 10 - 20

The Dwarven Catacombs were once a series of mines laced with
veins of gold and silver. After many years, they were emptied of all
valuable minerals and abandoned. As time passed, monsters began
to inhabit the forsaken mines. Some even say a dragon has taken up
residence here. It is a well known fact that a cult of templars has
claimed the dark tunnels as their own and has established a stronghold
deep beneath the earth. Among the other rumors told of this land is the
tale of Excalibur: a lost blade of magical might. Most sages believe that
the ancient sword is located elsewhere however...
~

1 'DWARVEN DAYCARE'~
Recommended level range: 1 - 5

The dwarven daycare lies in the southern portion of the Dwarven
Kingdom. It is here that the stout dwarven miners leave their children
for the day while they procure ore in the vast underground mines. A
large number of female dwarves are employed here. Most are nannies,
given the duties of caring for and feeding the children.
~

1 'DWARVEN VILLAGE'~
Recommended level range: 10 - 35

The ancient dwarven race resides in this village far below the ground.
The stocky dwarves make a handsome living by selling the gold and
silver found in their mines. They have grown accustomed to humans
over the years and now invite the companionship of 'the big people.'
~

0 DYLAN 'DYLAN AREA' 'DYLANS AREA'~
Recommended level range: 15 - 25
 
Clouds have plagued the skies south of Darkhaven since the dawn of Despair. 
None know the cause of this, but many speculate that the vicious harpies and 
air elementals who rule these skies weave the clouds through powerful magic. 
It provides both races with a haven and also camouflage for hiding from 
predators and sneaking up on prey. Thankfully, these beings never descend 
from the skies and assail the races of Light.
~

0 EARTHQUAKE~
Syntax: cast 'earthquake'

This spell inflicts damage on every enemy character in the room.
Beware that other characters who are not yet fighting may attack
you as a result!
 
Be aware that area attacks are aggressive to all mobs in the room,
including pets, mounts and charmed creatures.
~

0 EAT DRINK~
Syntax:  drink <object>                  (drink liquid from a drink container)
Syntax:  eat   <object>                  (eat food or a magical pill)
		 eat   <object> <container>      (eat directly from a container)
 
Drink instructs your character to drink from a fountain or a drink container
to alleviate thirst.
 
Eat instructs your character to eat an item of food or a magical pill (which
function in a similar fashion as potions); pills do not fill stomach space.
 
When you are hungry or thirsty (you will see messages at each tick that
tell you if you are starving or dying of thirst, and can check your
current state with either 'score' or 'oldscore'), you will not regain
hitpoints, movement points or mana back as rapidly as if you were well
fed and hydrated.
 
If you stay hungry or thirsty too long and you are not an Avatar, your
mental state will begin to suffer.  Your combat skills will be affected,
your coordination will suffer and you may begin to either hallucinate or
become depressed.  Eating, drinking and a little rest will solve this
problem after a short period of time.
 
See MENTALSTATES
~

1 EATING DRINKING HUNGER THIRST~
Eating and drinking are very important...
 
If you let yourself starve or dehydrate, your mental state will be affected,
and you may have problems performing even the simplest of tasks.
 
Typing 'score' will give you an indication of your current mental state.
('oldscore' will also show this information)
 
Sitting, resting and sleeping will increasingly contribute to better your
mental state (if done while not starving/dehydrating).
 
Being hurt badly in battle ("That really did HURT", and "You wish that your
wounds would stop BLEEDING so much!") as well as poisoning will also have a
rapid negative affect on your mental state.
 
~

52 ECHO RECHO~
Syntax:  echo      <color> <message>
		 echo  imm <color> <message>
		 echo  pc  <color> <message>
Syntax:  recho     <color> <message>
 
ECHO sends a message to all players in the game, without any prefix indicating
who sent it.  If 'echo imm <message>' is used, only level 51+ characters will 
see the message. If 'echo pc <message>' is used, only player characters will 
see the message. Echos should always adhere to the guidelines laid out in the 
Realm of Order (vnum 1214).
 
ECHO done in color should avoid the use of red and dark red unless it is a 
Urgent message containing important information related to the game.

RECHO sends a message to all players in your room, without any prefix
indicating who sent it.
 
See also : COLOR 'IMM ECHO'
~

51 ECONOMY~
Each area will initialize (on bootup of the mud) with a pool of gold based
on the area's range and the wealth of each mob in that area.
 
The shopkeepers and thieves will automatically deposit gold into the economy
if they are carrying more than a certain amount (the higher the level of the
shopkeeper, the greater they will carry before depositing).
 
To allow mobprogs to be created to manipulate area economies, making them
interactive and interdependent, there are two mpcommands:  mpdeposit, and
mpwithdraw (see related helpfiles).  There is also an 'if economy' ifcheck.
 
The aset command can also be used to adjust an area's economy by hand
(example:  aset <area filename> low_economy <amount>, this will give
the specified area a minimum economy at the level you set).
 
Mobs will not repop with more gold than what they were originally created
with, but if the area economy runs low they will begin to repop with less
until the economy is replenished (as they all share the same gold pool).
 
Use foldarea to make changes to an area's economy with aset permenent.
 
See ASET, FOLDAREA
~

1 EDITOR~
The SMAUG Editor is used when you're writing mail, notes, your bio,
description or other long bodies of text. The commands in the editor are
(these commands are shown with a space between the / and the command letter. 
Omit the space when using the commands in your notes):

/ ?              Displays editor help.
/ l              Lists the current contents of the note.
/ c              Clears the current contents of the note.
/ d [line]       Delete line. If no line number is given, the most
				  recent line is deleted.
/ g <line>       Goto line. This is useful for inserting lines,
				  deleting and fixing lines, etc.
/ i <line>       Insert line. Inserts a new blank line where specified.
/ r <old> <new>  Global replace. '/g' to the line you want to start
				  replacing at first, or no occurences will be found.
/ a              Abort editing. No changes you made are kept.
/ ! <command>    Execute mud command. '/! smile' sends the smile
				  command, without exiting the editor.
/ s              Save buffer, and exit the editor.
 
~

1 ELBOW~
Syntax:  elbow
 
Elbow is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 ELCID~
.             (_)          _
		  _         .=.   (_)
		 (_)   _   //(`)_
			  //`\/ |\ 0`\\
			  ||-.\_|_/.-||
			  )/ |_____| \(    _
			 0   #/\ /\#  0   (_)
				_| o o |_
		 _     ((|, ^ ,|))
		(_)     `||\_/||`
				 || _ ||      _
				 | \_/ |     (_)
			 0.__.\   /.__.0
			  `._  `"`  _.'
	   Elcid     / ;  \ \
			   0'-' )/`'-0
				   0`
~

0 'ELDRITCH SPHERE'~
This powerful spell increases your resistence to both magical and nonmagical
attacks.
~

1 'ELEMENTAL CANYON'~
Recommended level range: 5 - 30

The immense elemental canyon lies on the southern border of the dark
dwarven forest. Once, long ago, the canyon was a flat portion of the
forest, yet the workings of a powerful elder mage destroyed the
landscape surrounding his, or her, home. As a backlash from his
wielding of elemental magics, strange entities formed of the very
elements were formed. These magical beings staked out land in the
newly created canyon and now wage a war amonst each other. Little
else is known about these eerie beings and their war, for none have
ever managed to communicate with the inhabitants of the canyon.
~

51 ELEVATE~
syntax: elevate (name)
 
Elevate is for advancing neophytes to acolytes and acolytes to creator.
~

0 ELF ELVES~
Tall, slender creatures with an affinity for the woods and nature, Elves
are distant cousins to the Pixies and share the intelligence and dexterity
of that winged race to a lesser degree.  With a lighter frame than Humans,
what they lack in strength and stamina is made up for with their superior
agility - both in thought and movement.  Elves are capable in all classes,
though they function poorest in the role of pure fighter.  Most Elves will
prefer to stay close to nature, and many become druids.  All Elves have
the inherent ability to detect magic.
 
The average Elf stands taller than most Humans, being well over six feet.
Most have fair skin and long, straight hair, though there are individual
Elves who chose a darker life reflected in their outward appearance.
 
Elves gain experience on a scale of normal rate * 1.1.
~

0 'ELVEN BEAUTY' ELVEN BEAUTY~
This spell makes you more charismatic for its duration.
~

1 EMERALD EMERALD HILLS~
Recommended level range : 10 -35

Set between the beautiful Holy Grove and the infernal eastern deserts, the
Emerald Hills consists not only of its beautiful, grassy-green peaks, but of
the surrounding region including the canyon, savannah, and forests.  Known to
be inhabited by a great variety of curious creatures, the Emerald Hills surely
promises all adventurers a surprise here or there.  If explored, wanderers may
definitely uncover something to their liking.
~

60 EMERALD.ARE HI_HARD 65~
~

1 EMOTE~
Syntax:  emote <text>
 
Emote is a customized expression of emotions or actions.  For example:
 
emote justs smiles and nods.
 
... displays to everyone in the room:
 
<Your character's name> just smiles and nods.
 
See also SOCIALS
~

0 EMPTY~
Syntax:  empty <container>
Syntax:  empty <container> <container>
 
This command allows you to empty a container of its contents.
 
Use 'empty <container>' to dump the contents to the ground.
 
Use 'empty <container> <container>' will empty the contents of the
first container into the second container.
~

0 'ENCHANT WEAPON'~
Syntax: cast 'enchant weapon' <weapon>
 
This spell imbues a weapon with a magical enchantment, increasing its to-hit
and to-dam bonuses.  The weapon must be non-magical to start with, else the
enchantment will not succeed.  This spell also causes the weapon to be
aligned with the alignment with the caster.
~

0 'ENERGY DRAIN'~
Syntax: cast 'energy drain' <victim>

This spell saps the experience points, mana, and movement points of its
target.  This is an attack spell and should not be used against other
players.
~

0 'ENHANCED DAMAGE'~
This skill increases the damage you inflict when attacking.  Use of the
skill is automatic once you have practiced it.
~

0 ENTER LEAVE~
Syntax:  enter
Syntax:  leave
 
In rooms either 'somewhere' exits or exits responding only to keywords,
you can simply type 'enter' or 'leave' to pass through that exit.
 
The most common use of this is with portals cast by mages.  To use the
portal, simply type 'enter' on either side of it and you will pass
through to the other side.
 
~

1 EQDAMAGE~
While in combat, you may notice that your equipment is taking damage.  For
example, you may see "Your lifebane gets damaged."  Each time this happens,
the AC of the item is damaged by one.  If the AC on an item is 5, after it
is damaged more than five times it will be destroyed or scraped.
 
If you wish to preserve the equipment, you must repair it by taking it to
the town blacksmith. (NOTE:  Not all equipment is repairable)  You may also
notice that while fighting a creature which attacks you with acid breath or
another acid attack, your equipment gets "etched and pitted."  When this
occurs the AC on that item is damaged by one permanently.  You cannot
repair the damage done by "pitting and etching."
~

0 EQUIPMENT INVENTORY~
Syntax: equipment
Syntax: inventory

EQUIPMENT lists your equipment (armor, weapons, and held items).
INVENTORY lists your inventory.
~

1 'ETHEREAL FIST'~
'Ethereal Fist' is an odylic enchantment in which the casting Mage
conjures from the ether about himself a solid manifestation of a
cubical volume of ether.  As if this weren't great fun in and of
itself, the final syllables of the spell cause the fist to 
repeatedly and mercilessly pound into a victim of the caster's choice.
 
Fun to cast in a room by yourself, and always a hit at parties,
'Ethereal Fist' is a low-level Mage's best friend.
~

0 'ETHEREAL FUNNEL' ETHEREAL FUNNEL~
This spell increases the damage done to the victim by energy attacks.
~

1 'ETHEREAL SHIELD'~
This spell decreases the amount of damage taken from energy attacks.
~

1 EVASIVE~
Syntax: style evasive
 
This style of fighting focuses on the art of dodging and parrying blows.
Less damage will be taken by a fighter using this style, but the damage
a fighter does in battle is also reduced due to the concentration needed
for evading an enemy.
 
 
See also: style, defensive, standard, aggressive, berserk
~

0 EXAMINE LOOK~
Syntax: look
Syntax: look    <object>
Syntax: look    <character>
Syntax: look    <direction>
Syntax: look    <keyword>
Syntax: look in <container>
Syntax: look in <corpse>
Syntax: examine <container>
Syntax: examine <corpse>

LOOK looks at something and sees what you can see.

EXAMINE is short for 'LOOK container' followed by 'LOOK IN container'.
~

51 EXFLAGS~
The redit exflags <dir> [flag] ... command accepts the following flags:
 
ISDOOR        | There is a door in that direction
CLOSED        | The door is closed
LOCKED        | The door is locked
SECRET        | The door is a secret door
PICKPROOF     | Door is pickproof
FLY           | Must be able to fly to go that way
CLIMB         | Must be able to climb to go that way
DIG           | Passage is blocked and must be dug out
NOPASSDOOR    | Door is resistant to the passdoor spell
HIDDEN        | Door is not "obvious" -- doesn't appear with autoexits
CAN_CLIMB     | Can use the climb command to go this way
CAN_ENTER     | Can use the enter command to go this way
CAN_LEAVE     | Can use the leave command to go this way
AUTO          | Keyword can be typed to go this way
SEARCHABLE    | Searching in this direction can remove the SECRET flag
BASHED        | Denotes a door that has succesfully been bashed open
BASHPROOF     | Cannot bash the door
NOMOB         | Mobs may not pass through this exit
WINDOW        | Points to a destination, but does not allow direct access to it
CAN_LOOK      | Allows a person to view the destination room for a WINDOW exit
PUSHTYPE      | Players will be pushed or pulled by a type of force.
PUSH          | Players will be pushed or pulled with a degree of force.
~

51 EXITMAKING~
The 'redit exit' command is used to create, modify and remove exits in a room.
Currently there can only be one exit in a certain direction.
The syntax of the 'redit exit' command is as follows:
redit exit <direction> [vnum] [exit-type] [key] [keyword(s)]
direction: one of: n, s, e, w, u, d, ne, nw, se, sw or ?
vnum     : the room number in which the exit leads to.
exit-type: a number detailing the exit -- has a door, open/closed/locked etc.
key      : a number corresponding to a key object which can unlock the door.
keywords : keywords used to refer to the door, (or exit).

If only 'redit exit <direction>' is specified, the exit will be removed.
The 'key' field is optional when specifying keywords.  All other fields are
required previous to the field desired.

Examples:
redit exit n 3001           - Creates an exit north to room 3001
redit exit n 3001 3 gate    - Changes the exit north to have a closed "gate"
redit exit n 3001 3 15 gate - Changes the gate to allow use of a key vnum 15
redit exit n                - Removes the north exit

See EXITTYPES for generating the exit-type value.
~

0 EXITS~
Syntax: exits

Tells you the visible exits of the room you are in.  Not all exits are visible.
You can use the 'bump' technique to find hidden exits.  (Try to walk in a
certain direction and see what you bump into).
~

51 EXITTYPES~
These are the currently valid exit-types:
	  0 - Plain exit
	  1 - Door exists         (Required to be closed or locked)
	  2 - Door is Closed
	  4 - Door is Locked
	  8 - Door is Secret      (Trying to go that way won't reveal door)
	 32 - Door is Pickproof   (Door can't be picked by spell or skill)
	 64 - Need to be able to fly to go that way
	128 - Need to be able to climb to go that way
   1024 - Door is Passdoor proof

NOTE: You must ADD the values together to generate an exit-type:
		3 = a closed door
		7 = a closed and locked door
	   11 = a closed secret door
	   15 = a closed, locked and secret door

-- Use the 'redit exflags' command to change these flags, and to set the
   advanced exit flags, most of which are not shown above.

See EXFLAGS and EXITMAKING.
~

0 EXPERIENCE LEVEL XP~
Syntax:  level
 
Your character advances in power by gaining experience.  Type LEVEL to see
how many experience points you'll need for the next few levels.
 
You gain experience by:
	inflicting damage upon an opponent
	being part of a group that kills an opponent
	succeeding while learning a skill or a spell through real world usage
 
You lose experience by:
	fleeing from combat
	recalling out of combat
	being the target of some spells (energy drain, etc.)
	dying
 
The experience you get from a kill depends on several things:  how many 
players are in your group; your level versus the level of the monster;
your alignment versus the monster's alignment and some random variation.
 
Your last 50 kills are recorded.  Each time you kill a creature that has
been one of your last 50 kills you will receive less and less exp for it.
The creature will also learn from its experience with you over time; if
its intelligence is higher than your own it will begin to gain an
advantage over you in combat.
~

1 EXPURGATION~
Syntax:  c expurgation
 
This spell was granted by the Gods, when it was discovered that many of 
their devout Paladins were falling prey to poisons. This spell will cure
the poison, but if the Paladin's state of mind has been affected..it will
still require rest.
~

0 'EXTRADIMENSIONAL PORTAL' 'EXTRADIMENSIONAL'~
The Great Wizard Thanatos, after creating his fabled WarMagicks,
found himself snubbed and abused in and about The Realms for his
researches.  Much time would pass before mages and other classes
alike would learn the true power of these spells.
 
In the interim, disguised as an assassin, Thanatos became interested
in a more minor problem: that of carrying off the loot he gained
from all those he slew with Quantum Spike.  Realising that such a
formula would be easily grasped by his class, he thought to extend
it freely.
 
As a final touch to the spell, he thought he would spite those of
other classes by inbuing into these containers a quality which made
them unobtainable by the other classes.
~

0 'FAERIE FIRE'~
Syntax: cast 'faerie fire' <victim>

This spell increases (makes worse) the armor class of its victim.  For each
level of the caster, the victim's armor class is increased by two points.
~

0 'FAERIE FOG'~
Syntax: cast 'faerie fog'

This spell reveals all manner of invisible, hidden, and sneaking creatures in
the same room as you.
~

1 FATIGUE~
Syntax:  c fatigue <victim>
 
Fatigue renders the victim susceptible to the sleep spell.
~

1 FAVOR~
Your favor reflects how much your deity favors you.  It can increase if you
follow the principles of your deity, and decrease if you go against those
wishes.  High favor gives you better chance rolls and weapon bonuses, while
low favor penalizes you.  You also use favor when you supplicate to your
deity for special services.
 
Note: If you deviate from your deity's alignment, you shall suffer a penalty
in favor for some actions.
 
SEE ALSO: deities, devote, supplicate, favor_levels
 
~

1 FAVOR_LEVELS~
The following lists the favor scale as listed on the 'score' sheet.
The prompt variable for favor uses the same scale, but with fewer
levels (thus is less accurate):
 
Loved
Cherished
Honored
Praised
Favored
Respected
Liked
Tolerated
Ignored
Shunned
Disliked
Dishonored
Disowned
Abandoned
Despised
Hated
Damned
 
See also:  favor, deities, supplicate, devote
~

1 FEEBLENESS~
Syntax:  c feebleness <victim>
 
Feebleness renders your victim susceptible to draining attacks.
~

0 FEED~
Syntax: feed
 
Vampires require copious amounts of blood to function properly, and
often the small puddle remaining after a kill is insufficient to
satiate the Hunger.  Thus, the Vampire will often need to grapple
with a victim in an attempt to feed from the living veins.
 
To 'feed', the Vampire must be engaged in combat; simply type 'feed'
while fighting.  If the bite succeeds a small amount of damage will
be done and a varying amount of blood will be drawn.
~

0 FILL~
Syntax:  fill <drincon>
Syntax:  fill <container>
Syntax:  fill <pipe> <herb>
 
FILL can be used with drink containers, regular containers or pipes.
 - to fill a drink container, go to a fountain and 'fill <drinkcon>'
 - to fill a container such as a backpack with items from the ground,
   type 'fill <container>'
 - to fill a pipe you must have both the pipe and the herb in your
   inventory, then type 'fill <pipe> <herb>'
 
~

1 FINDNOTE~
Syntax: findnote <keyword>
 
This command searches through all the notes that you have on you. It
seaches through portals, within portals, within portals, etc. It will
find the note and place it in your hands. The <keyword> must be words
taken from the subject of the note you are trying to find.
~

1 FIRE~
Syntax: fire <direction> target
 
This command is for use with bows and arrows. You must have the weapon
type missileweapons, a bow wielded and a quiver or arrows in your inventory.
**This will damage another player and should be used with caution **
*** For smaug release..  use wooden bow and flint from newdark***
~

51 FIXED~
Syntax:  fixed <message>
		 fixed list
 
This command records your message (250 chars or so max) to a permanent
record file.  All changes made to live areas, made with foldarea, etc.
should have some kind of entry recorded here.
 
Your name and the roomvnum in which you are standing at the time are
automatically recorded when you use the command.
 
If you post a note about the change, please make a fast entry pointing
it out.  (The board in 1215 is best for such notes.)
 
Using 'fixed list' will display the contents of the current fix record.
 
NOTE:  This file supports color tokens, be careful with them.
~

2 FLAG FLAGS~
&P(ATTACKER)&W, &P(KILLER) &Wand &P(THIEF) &Wflags are given to players who
violate laws regarding Pkilling and/or Theft. Having one of these flags
will cause Darkhaven mobs to treat you differently. You may be placed before
Judge Kendra and be fined or thrown in jail until an immortal can impose
a sentence upon you. For help on &P(ATTACKER) &Wor &P(KILLER) &Wflags, see
&CHELP ATTACKER &Wor &CHELP KILLER&W. To find out what constitutes illegal
theft, see &YLAWS STORES&W.
~

0 FLAMESTRIKE~
Syntax: cast 'flamestrike' <victim>

This spell inflicts damage on the victim.
~

0 FLEE RESCUE~
Syntax: flee
Syntax: rescue   <character>

Once you start a fight, you can't just walk away from it.  If the fight
is not going well, you can attempt to FLEE, or another character can
RESCUE you.

If you lose your link during a fight, then your character will keep
fighting, and will attempt to RECALL from time to time.  Your chances
of making the recall are reduced, and you will lose much more experience.

In order to RESCUE successfully, you must practice the appropriate skill.
~

1 FLETCH~
Syntax c fletch flint
 
This ranger specialty will transform a piece of flint into a usable
arrow. The flint must be in the caster's inventory.
~

5 FLOAT~
Syntax: cast 'float' <character>
 
This spell enables the target character to float.  It is useful in saving
mv (movement points), makes a character float slowly to the ground when
falling from in the air, and allows you to move over water and through the
air.
 
Some water areas require the use of float to prevent damage from drowning.
If you are in an area and your movement suddenly begins to drop, then you
begin losing hps <hitpoints>, you should cast float immediately.
~

57 'FLOAT'~
Syntax:  cast 'float' <character>
 
The spell enables the target character to float.  It is useful in saving
mv (movement points), as well as in preventing damage taken when falling
and in preventing an opponent from tripping you.  It does not allow you
to travel through areas which require you to fly, however.
~

0 FLY~
Syntax:  cast 'fly' <character>
 
This spell enables the target character to fly.  It is useful in saving
mv (movement points), preventing a character from falling when in the
air, moving over water or through the air, and in preventing an opponent
from tripping you.
 
Some water areas require the use of fly to prevent damage from drowning.
If you are in an area and your movement suddenly begins to drop, then you
begin losing hps <hitpoints>, you should cast fly immediately.
~

56 FOLDAREA~
Syntax:  foldarea <area filename>
 
This command saves an area file, usually after modification.
 
&rThis command must be used with extreme care.  If you aren't
exactly and intimately familiar with the changes being made
or what the command does -- don't use it.&w
 
*NOTE* 
Area files have backups that record the file as it was prior to foldarea.
If you folda something and realize there's a mistake, and you've only
folded it once -- don't do anything else.  Post a note or find Blodkai.
 
Do not fold changes into non-quest areas that are quest related.  If you
must do this, write a note or ensure it's changed back.
 
Any time an area is folded, document it with the fixed command.
(check 'help fixed')
 
See ASET, UNFOLDAREA and INSTALLAREA.
 
~

1 FOLLOW~
Syntax:  follow <character>
 
'Follow' starts you following another character.  To stop following, type
'follow self'.  You cannot follow those more than ten levels above you.
 
You may follow lower level characters or characters up to ten levels higher.
You must first follow someone before you can join their group.
 
See also GROUP
~

52 FORCE~
Syntax: force <character> <command>
Syntax: force all <command>

FORCE forces one character or mob to execute a command.

FORCE 'all' forces all player characters to execute a command.
This is typically used for 'force all save'.
 
Force is restricted to mob use only until level 57.
  *Note.. NEVER force a mob to drop eq and give to a player..lest God
   smite thee down in your very tracks.
~

54 FORCECLOSE~
Syntax: forceclose <descriptor>

This command will force a certain descriptor to close.
This is useful to disconnect connections that aren't really connected
due to a poor TCP connection.

It can also be used to forceclose a connection before a potential
problem player can even get to the authorization state of connection.

See USERS, CONSTATES and DISCONNECT.
~

51 FQUIT~
Syntax: fquit <character>
 
FQUIT forces a level one player to quit.
 
It is used in case you accidently authorize a bad name.
 
Please be sure to send a tell to the player explaining why you are
forcing them to quit before using FQUIT.
 
~

58 FSHOW~
-----------------------------------------------------------
 
	 SYNTAX: fshow <moblog | plevel>
 
DESCRIPTION: The FSHOW command when used with the MOBLOG
			 variable, displays the current log of MPLOG. When
			 FSHOW is used with the PLEVEL variable, it will
			 display the current log of all character levels
			 that have occurred since the last reboot.
 
-----------------------------------------------------------
~

1 GALAXY~
Recommended level range: 20 - 30

The galaxy is a strange magical fantasy; a dream received upon peering
into a crystal ball. Those who have adventured in and returned from this
strange realm  tell of floating through the stars, fighting blazing
comets and mighty constellations.
~

62 GALVANIC WHIP~
The spell 'Galvanic Whip' allows the casting Mage to form in the air
a highly charged rope of air that automatically lashes out at his
opponents in combat.  The Whip may be called once per combat round.
~

1 'GALVANIC WHIP'~
The spell 'Galvanic Whip' allows the casting Mage to form in the air
a highly charged rope of air that automatically lashes out at his
opponents in combat.  The Whip may be called once per combat round.
 
~

51 GATE~
Syntax: cast gate

This spell gates in a guardian vampire.  Player characters don't have much use
for it, but high demons, and guardian vampires themselves, like it a lot.
~

61 GFIGHTING~
-----------------------------------------------------------
 
	 SYNTAX: gfighting
			 gfighting <low> <high>
			 gfighting <low> <high> mobs
 
DESCRIPTION: The GFIGHTING command does a global search 
			 for the fighting targets specified, where 
			 <low> <high> indicates the target's level.
 
	EXAMPLE: gfighting 1 5 would display a list of PCs 
			 levels one through five that are fighting, 
			 who they are fighting and their level, what 
			 vnum/room name they are fighting in, and the 
			 name of the area they are fighting in. By 
			 adding the 'mobs' variable, the command 
			 would display the same information for mobs 
			 of the levels specified.
 
-----------------------------------------------------------
~

0 GITH~
The Gith are a race descended from humans.  Once long ago, they were a
peaceful civilization of humans that were captured by mind flayers and
tormented for centuries.  Eventually, a savior named Gith led them to
freedom, yet their bodies had been flayed by the mental powers of the
illithids.  The Gith found themselves, stronger, quicker, luckier and
smarter than average humans, yet they had lost much of their faith,
wisdom, stamina and charisma.
 
They had yellowed skin and were very long of limb.  Sunken eyes peered
from yellowed sockets, now strangely capable of naturally detecting
invisible things.  The Gith race has split into three distinct groups
recently.  The good, the Githzerai, the selfish neutral, the Pirates
of Gith, and the evil, the Githyanki.
 
Gith gain experience on a scale of normal rate * 1.06.
~

1 GLANCE~
syntax:  glance
syntax:  glance <victim>
 
Glance alone shows you only the contents of the room you are in,
eliminating the description.  Glance <victim> shows only the health
condition, eliminating their description and equipment from your
screen.
 
Glance may be abbreviated as 'gl'.
~

0 GLORY~
Glory is a measure of how valiant you are, and is accumulated by taking part
in quests (mostly) and possibly in a few other ways in the near to distant
future.  It appears on your score screen as:
 
					Glory: 264(430)
 
  The number in parentheses is the total lifetime glory attained by your
character, and the other number is your current glory.  Glory can be "spent"
to improve your items and weapons (among possible other things in the future)
as according to the scale detailed in HELP GLORY RATES.
 
   Unlike Quest Points of old, Glory will not only go to the "winner" of the
quest, but will be awarded on a basis of participation.  For example, the big
prize might not only go to the person who killed the monster,  but also to
the person who solved the riddle first, etc.  Players who took part in the
quest and helped a notable amount will also recieve lesser amounts of Glory.
 
   Glory cannot be traded or transferred between characters.  This would be
like Odysseus passing all the reknown for his deeds off onto someone else.

See also: GLORY RATES,  GLORY TRADE
~

0 'GLORY RATES~
All prices are for adding affects/stats to an item or weapon, excepting the
"Sex Change" which is a permanent altering of one's player file.
&W
&W+1 Manapoint            &G5 Glory | &WWeight to 1            &G125 Glory 
&W+1 Hitpoint            &G10 Glory | &WGlow/Hum Removal         &G5 Glory    
&W+1 Stat               &G100 Glory | &WRename/Rekey            &G20 Glory   
&W+1 Hitroll            &G125 Glory | &W1 Practice              &G50 Glory  
&W+1 Damroll            &G175 Glory | &WSex Change              &G10 Glory
&W-1 Save               &G175 Glory | &WMinor Affect           &G300 Glory   
&W-1 AC (lowers ac)      &G50 Glory | &WResistance             &G750 Glory   
&W+1 AC (base obj AC)   &G130 Glory | &WAff_Protect            &G500 Glory
&WObject edit(per line)   &G5 Glory | &W

&CMinor Affects&Y
-------------&W
Invis, Detect_Invis, Hide, Detect_Hidden, Detect_Magic, Detect_traps, Sneak
Infravision, Fly, Float, Passdoor, Scry, Aquabreath
 
&CResistances&Y
-----------&W
Fire, Cold, Electricity, Energy, Blunt, Pierce, Slash, Acid, Poison, Drain
Sleep, Charm, Hold, Non-Magic, Magic, Paralysis
 
&CSee also: &WGLORY,  GLORY TRADE
~

0 'GLORY TRADE'~
. Glory is a trait inherent in a character, and as such will not under any
circumstances be moved from one player to another.
  On a similar note, Glory is cashed in as per GLORY RATES, on an all or
nothing basis.  Glory will NOT be taken from more than one character in order
to buy an affect.
 
See also GLORY, GLORY RATES
~

51 GLORYIMM~
Somethings to keep in mind when giving/taking Glory:
 
  - Glory is UNtradable between mortals.  (Please do not facilitate trades of
		 Glory between mortals.
  - It is allowed for a player to use his Glory to affect items for another
		 player.
  - Currently, appropriate prizes to be awarded for quests are as follows:
 
  Avatar quests (lvl 40+):
		 Suggested Maximum:  50 Glory  (For playing an integral part)
		 Suggested Minimum:   5 Glory  (For making a notable effort)
	- Then Glory of appropriate amounts (use your judgement) can be given out
		 for intermediate efforts between winning and participating.
 
  NOTE:  Being integral doesn't neccessarily mean landing the killing blow on
		 the supermob, it might also mean the person who solved the riddle
		 leading to the mob (if it was a difficult riddle).
  NOTE:  Prizes should be scaled up or down to reflect the difficulty and
		 participation of the quest.  For example a difficult quest would be
		 one that takes more than 2 hours to complete.
 
  Non-Avatar quests (lvl < 40):
		 Suggested Maximum:  35 Glory  (For an integral part)
		 Suggested Minimum:   5 Glory  (For a notable effort)
See also: GLORYIMM2, QPSET, GLORY, GLORY RATES.
~

51 GLORYIMM2~
.    Glory does not neccessarily have to be the only prize given out.  In fact
	 for the lower level quests it is preferred if a combination of Glory and
	 minorly affected/renamed objects are given out as prizes.  i.e. a weapon
	 renamed to something related to the quest that has a couple +1's or +2's
	 on it (that will be useful for a couple levels, but then discarded).
 
	 NOTE:  It is suggested for Guild and Order quests that the prizes be
			scaled down slightly as participation is limited from the entire
			mud - and open exclusively to guild/order members.  The quests they
			recieve from the guild/order are supplemental to the mud-wide ones
			they can participate in.
 
 
	 DISCLAIMER:  These numbers are not set in stone, they are guidelines.  The
				  QC is counting on the good judgement of the immortals to
				  make sure the prizes they are giving out are appropriate.
				  The QC reserves the right to change the guidelines as well
				  the right to set them in stone if we find it is being abused.
 
See Also: GLORYIMM, GLORY, GLORY RATES, QPSET.
~

-1 GNOME GNOMES~
Gnomes are a quirky demi-human race.  Though not the mightiest of
races, they are well versed in their studies of knowledges, magics
and religions.  Additionally, due to their familiarity with such
lore, they tend to be more resistant to magics.  They can, though,
suffer tremendously from physical attacks.

Gnomes usually focus in the magical or clerical arts, though a few
rogues have ventured into the arts of thieving (albeit often not
very well.)

Gnomes are a short, stocky race, similar to their dwarven cousins.
Most often prefer an evening at home with a magical tome, a loaf of
pipeweed bread and a cup of ale over venturing out to battle.

Gnomes gain experience on a scale of normal rate * 1.2
~

51 GODMAP~
.                      1208--1217
	 1219               |/            1228           N
	   |               1207     1202 /             E + W
	   |                |         |/                 S
1221-1204--------------1225-----1200-----1212
	   |                          |        |
	 1209-----1230              1215     1222
 
 
---> @1200 up once to 1214
---> @1200 up twice to 1201
---> @1200 down once to 1213
---> @1225 down once to 1224
---> @1224 east once to 1213
				   --------
1200 Chat Room                             1201 Thoric's Den
1202 Reading Room                          1204 Clan Council Meeting Room
1207 Quest Council Board                   1208 Quest Talley Room
1209 Mortal Patronage Room                 1212 Room Of New Knowledge
1213 The Archives (DH noteboard)           1214 Realm Of Order
1215 Area Discussion Room                  1217 Hall Of Heroes
1219 Chamber Of Deadlies                   1221 New Players Council Room
1222 Project Central                       1224 Oracle Of The Archives
1225 Hallway To Councils                   1228 Economy Project Workshop
~

1 GODS~
The domains of Despair's Gods are often terror-filled and designed
to horrify and shock any mortal visitors. None have ever discovered
an entrance to any of these domains, for they are guarded by the
most powerful of godly magics.
~

1 GOLD~
Syntax:  gold
 
Displays the current total amount of gold you are carrying.
~

1 GOROG~
. &C
					 _/(        ) (        )\_
				  _/'  `\      ((_))      /'  `\_
			   _/'       `\    \-,-/    /'       `\_
			_/'            `\__/\=/\__/'            `\_
		  /'               /'   ,`,   `\               `\
		/'     /'  /      |   ,{MIM},   |     \   `\     `\
	  /'     /'    |       \  |/ | \|  /       |    `\     `\
	/'     /'      |    .,._\ '  |  ` /_.,.    |      `\     `\
  /'      / ,-'--, | ,-(_  ,_`--'--'_,  _)-, | ,--`-, \      `\
 /_,-'-`-/-'      `|'    ---._`-,_,-'_.---    `|'      `-\-'-`-,_\
/                             | | | |
							   &B Gorogoyle &w
~

51 GOTO~
Syntax: goto <location>

GOTO takes you to a location.  The location may be specified as a vnum,
as the name of a mobile, or as the name of an object.

If the location is a vnum, and it does not already exist, and it is within
your room vnum range; it shall be created for your to edit further with
REDIT.

You may not GOTO a room if it is PRIVATE and has two (or more) characters
already present, or if it is SOLITARY and has one (or more) characters
already present.

You may also "GOTO pk" to go to the site of the most recent illegal pkill.
See REDIT.
~

63 GOTO 25199~
~

1 GOUGE~
syntax:  gouge
 
This attack can only be used in combat, and will strike at the eyes of
your opponent, causing damage and temporary blindness.
 
Note that gouge has a reduced chance of hitting if the gouger is not
one of the primary combatants (i.e. is not tanking).
 
See also BLIND, BLINDED
~

1 GRASP 'GRASP SUSPIRIA'~
Syntax:  grasp
 
The suspiric grasp is the vampire's most lethal attack, allowing it to
drain the life of its opponent in larger quantities than nearly any
other skill or spell in the Realms.  The more intelligent is the
vampire, the more effectively it will perform this loathsome act.  Be
aware that the magical nature of this attack causes it to be affected
by the victim's saves.
 
~

1 GRAVEYARD~
Recommended level range: 5 - 10

Darkhaven's graveyard was once a peaceful burial ground, visited by
grieving citizens and tended by gentle priests. However, a powerful
curse was cast upon this land by an unknown mage. Within days, the
soft brown earth had turned black and sooty. A year later, the dead
began to claw their way out of the earth, roaming the graveyard in
search of flesh. Though many have tried to lift the curse on this
small plot of land, none of these attempts have succeeded. Some sages
believe that an elder God of evil protects the curse of the graveyard.
~

1 'GREAT EASTERN DESERT'~
Recommended level range: 10 - 20
 
The Great Eastern Desert lies far to the east of Darkhaven, just south
of the majestic New Thalos. It is a barren wasteland, inhabitated only
by nomads and desert wildlife. Those who have found shelter from the
sweltering sun often describe an encounter with a great brass dragon who
resides in a chamber which prevents the usage of magic...
~

-1 GREETING~
.
		 /     _      _            _      _    _____
		/      |\    /|     /\     |      |   /     \     ***************
	   /       | \  / |    /  \    |      |  |            *   \\._.//   *
	  /        |  \/  |   /    \   |      |  |            *   (0...0)   *
	 /_______  |      |  |______|  |      |  |            *    ).:.(    *
			/  |      |  |      |  |      |  |            *    {o o}    *
		   /   |      |  |      |  |      |  |     __     *   / ' ' \   *
		  /    |      |  |      |  |      |  |       |    *-'^^.VxvxV.^^'-*
		 /     |      |  |      |   \____/    \_____/     ***************
		/ 

SmaugFUSS 1.9 changes by Samson. Other bugfixes and changes provided by
various members of the SMAUG community. Their contributions are greatly
appreciated.
SMAUG 1.4 written by Thoric (Derek Snider) with Altrag, Blodkai, Haus, Narn,
Scryn, Swordbearer, Tricops, Gorog, Rennard, Grishnakh, Fireblade and Nivek.
Original MERC 2.1 code by Hatchet, Furey, and Kahn.
Original DikuMUD code by:
Hans Staerfeldt, Katja Nyboe, Tom Madsen, Michael Seifert && Sebastian Hammer

Enter your character's name, or type new: ~

1 GRIP~
This skill is automatic, once practiced.  The skill causes you to grip
your weapon tightly as someone tries to disarm you, making it far more
difficult to successfully disarm you.  This skill will only increase as
you are engaged in fights where someone is attempting to disarm you.
~

1 GROUNDING~
Syntax:  c grounding
 
Grounding renders the victim resistant to electricity attacks.
This spell may not be used on a target.
~

63 'GROUP DISPALY~
.
&gLead by Zed             [hitpnts]   [ magic ]  [mvs] [mst] [race] [to lvl]
[&G43 -a Dru&g]  Zed         &w35/94        &C66/80       &g90  &Y-==   &gelf
 
In the display, the group leader is listed on the first line as the character
the group is following.  Lines begin [&wLevel Alignment Class&g] for each char.
Classes are displayed by their first three letters.  Alignment reads:
   A... 750+          -a... 350 to  749  +n...  150 to  349   N...-149 to 149
  -n...-349 to -150   +s...-749 to -350   S...-1000 to -750
&w[hitpnts]&g lists current hps followed by maximum hps for each character.
		  Current hitpoints under 40% of maximum will be displayed in yellow,
		  while current hitpoints under 25% will be displayed in flashing red.
&w[ magic ]&g lists current magic points (mana or blood) followed by maximum
		  magic points for each character.  Warrior mana is not displayed.
&w[mvs]&g     lists current moves only.
&w[mst]&g     tracks mentalstate.  A normal or near-normal state, where the
		  char is neither tired (negative mentalstate) or delirious (high),
		  is represented by a === bar.  As mentalstate lifts into delirium,
		  sections are replaced with +, the greater the number of +'s the more
		  delirious the char.  As mentalstate sinks below into exhaustion,
		  sections of the bar are replaced with -, the more -'s the greater
		  the greater the character's exhaustion.
&w[race]&g    is the character's race.
&w[to lvl]  &gdisplays exp required to attain the next level (non-Avatars only)
~

-1 'GROUP DISPLAY~
.
&gFollowing Zed           [hitpnts]   [ magic ] [mvs] [mst] [race]  [to lvl]
[&G43- A Dru&g] Zed           &w35/94       &C66/80     &G90   &Y-==     &GElf
&g
Each line begin with the [&wLevel Alignment Class&g] for each char.  Classes
are displayed by their first three letters.  Alignment reads:
 A... 750+          -A... 350 to  749  +N...  150 to  349   N...-149 to 149
-N...-349 to -150   +S...-749 to -350   S...-1000 to -750

&w[hitpnts]&g lists current hitpoints for each character:
		  Current hitpoints under 40% of maximum will be displayed in yellow,
		  while current hitpoints under 25% will be displayed in flashing red.
&w[ magic ]&g lists current magic points (mana or blood) followed by maximum
		  magic points for each character.  Warrior mana is not displayed.
&w[mst]&g     tracks mentalstate.  A normal or near-normal state, where the
		  char is neither tired (negative mentalstate) or delirious (high),
		  is represented by a === bar.  As mentalstate lifts into delirium,
		  sections are replaced with +, the greater the number of +'s the more
		  delirious the char.  As mentalstate sinks below into exhaustion,
		  sections of the bar are replaced with -, the more -'s the greater
		  the character's exhaustion.
&w[mvs]&g     lists current moves only
&w[race]&g    is the character's race.
&w[to lvl]  &gdisplays exp required to attain the next level (non-Avatars only)
~

63 'GROUP DISPLAYER'~
~

1 GROUP GROUPING~
Syntax:  group <character>, group all, group, group disband
 
'Group <character>' adds someone who is following you into your group, making
them a group member.  Group members share experience from kills, and may use
the GTELL and SPLIT commands.  If anyone in your group is attacked, you will
automatically join the fight.
 
If character is already a member of your group, 'group <character>' again to
remove them from your party.  Removing the character from the group does not
stop them from following you, however.  A character can also leave a group
by using the 'follow self' command, in which case they will both leave your
group and stop following you.
 
'Group' with no argument shows statistics for each character in your group.
 
'Group all' groups all eligible players following you in the room.
 
'Group disband' allows the leader to disband his group (members will stop
following and are ungrouped).
 
You may group only characters within eight levels of your own.  See section
10 of your Adventurer's Guide for more information on groups and grouping.
 
See also GROUP DISPLAY
~

51 GRUB~
.Here is some reference data you will need in order to use GRUB.
 Sex          Class       Race         Fields   Clans    Councils
 0 Neutral  0 Mage      0 Human        Name     1 Guild  1 CoE
 1 Male     1 Cleric    1 Elf          Sex      2 DS     2 MC
 2 Female   2 Thief     2 Dwarf        Class    3 MS     3 NC
			3 Warrior   3 Halfling     Race     4 RB     4 Pro
			4 Vampire   4 Pixie        Level    5 AR     5 PK
			5 Druid     5 Vampire      Room     6 Bru    6 QC
			6 Ranger    6 Half Ogre    Gold     7 Las    7 Neo
			7 Augurer   7 Half Orc     Clan     8 Nos    8 CC
			8 Paladin   8 Half Troll   Council  9 Tre    9 AC
			9 Nephandi  9 Half Elf     Site    10 Ven   10 TS
							10 Gith         Last    11 Inc
							 11 Drow     Pkill
							 12 Sea-elf
							 13 Lizard
							 14 Gnome
									  Pkill
 
Here are some sample uses of GRUB:
 
grub 20 pkill=y class=5      Display 20 Druid pkillers
grub 20 level=2 last<=970120 Display 20 L2 players absent since 970120
grub 20 level>=20 level<=30  Display 20 players levels 20 thru 30
grub  0 level=2              Count the number of level 2 players
grub 20 level>50 gold>100000 Display 20 imms with more than 100k gold
grub 50 damroll>100 sex=2    Display 50 females with damroll>150
grub  0 class=5 damroll>150  Count the number of druids with damroll>100
grub 20 site<>123.456.789    Display 20 players from site 123.456.789
grub 10 class=0 race=2       Display 10 dwarven mages
grub  1 name=Joe             Display Joe's info
grub 20 room=7070 class=0    Display 20 mages who logged off in 7070
grub  0 class!=2 class!=3 class!=4   Count the number of mana users
 
You always need to specify the number of lines you want displayed. The
reason for that is that we don't want to ask for a list and then get
surprised to find that it's 15,000 lines long. You can get a count
of the players that match your criteria by requesting zero lines.
 
GRUB will tell you how many lines there are in the list no matter how
many you ask to display. So if there are 15,000 players that meet your
criteria and you ask for the first ten, GRUB will tell you there are
15,000 in total but will only show you the first ten.
 
 
See also: HELP 'GRUB EXAMPLES'
 
~

51 'GRUB EXAMPLES'~
Here are some examples illustrating common usages:
 
Example:
 
grub 20 or hitroll>150 damroll>150 gold>200000000
 
Suppose you want to search for "suspicious players". Suppose you want
to see players who have more than 200 million gold or whose damroll
exceeds 150 or whose hitroll exceeds 150 you can do that as follows:
 
Normally GRUB lists players who satisfy all the conditions you specify.
But it can also be used like this to list players who satisfy any one of
the conditions.
 
The operand "or" ensures GRUB will list players who satisfy any one of
the conditions.
 
If you had specified:
 
grub 20 hitroll>150 damroll>150 gold>200000000
 
That would show you players whose hitroll exceeds 150 and whose damroll
exceeds 150 and whose gold exceeds 200 million. It would be a much
smaller list and you would miss many suspicous players.
 
Example:
 
grub 20 name>ska name<skb room>=21000 room<=21499
 
Suppose someone complains that a player with a name like "Skathamaga"
picked up some of their eq and promptly quit the game. The player isn't
sure of the exact name of the thief but is sure it starts with "Ska".
The thief quit the game somewhere in New Darkhaven (vnums 21000-21499).
 
This example will show you players whose name starts with "Ska" and who
last quit the mud somewhere in New Darkhaven.
 
~

54 GRUB2~
Syntax: grub # <or> field operator ## <field operator ##>
Where:  &g#         &GAny valid number.
		&g<or>      &GUsed with multiple expressions to denote that only one of
				  them need be true.
		&gField     &GName, Sex, Class, Race, Level, Room, Gold, Hitroll,
				  Damroll, Site, Last, Pkill.
		&gOperator  &GValid operators are:   =   !=   >   <   >=   <=
		&g##        &GNumeric except for Name and Pkill. For name it is a full
				  or partial name. For Pkill it is a Y or N.
 
&GLast is:  &WExpressed as "YYMMDD". ie, 970122 is Jan. 22/97.
&GSex is:   &W0 Neutral  1 Male       2 Female 
&GClass is: &W0 Mage     1 Cleric     2 Thief     3 Warrior     4 Vampire
		  5 Druid    6 Ranger     7 Augurer
&GRace is:  &W0 Human    1 Elf        2 Dwarf     3 Halfling    4 Pixie   
		  5 Vampire  6 Half Ogre  7 Half Orc  8 Half Troll  9 Half Elf
		 10 Gith&w
&GYou can have more than one conditional expression in a Grub search. "And" is
assumed unless "or" is placed before the arguements. ie:
&W    Grub 10    class=3 sex=2    (Gives back a list of 10 female warriors)
	Grub 10 or class=3 sex=2    (Gives back a list of 10 characters that
								 are either female, or warriors).
You must always specify how many lines the Grub will produce. This prevents
your getting a list 15000+ lines long.
 
&YSee also: &W'GRUB EXAMPLES', OGRUB
~

0 GTELL ; REPLY SAY TELL~
Syntax: gtell <message>
Syntax: say   <message>
Syntax: tell  <character> <message>
 
All of these commands send messages to other players.  GTELL sends a message to
all of the characters in your group, wherever they are, even if they are
sleeping or stunned or dying.  ';' is a synonym for GTELL.
 
SAY sends a message to all awake players in your room.  The single quote '''
is a synonym for SAY.
 
TELL sends a message to one awake player anywhere in the world.
 
REPLY sends a message to the last player who sent you a TELL.  REPLY will work
even if you can't see the player, and without revealing their identity.  This
is handy for talking to invisible or switched immortal players.
~

1 GUIDE~
All players get a copy of The adventurer's guide to the Realms of Despair
when they enter the game.  To use this guide, type LOOK BOOK.  This guide
has been created to answer the most commonly asked questions and to give
you a general grasp of the commands and rules of the game. 
 
This first section of the Guide deals with commonly asked questions.  It's
advised that you take the time to read this section first if you are new
to our Realms.  
 
Please enclose in text or subject that you would like a copy of the guide.
If you have problems understanding matters in the guide type:  &BHELP NC
~

2 GUILD GUILDS~
Guilds are special organizations for each class within the realms. Belonging
to a Guild has many advantages, such as gaining new knowledge of your class,
making new friends in the Realms, exciting quests, the great feeling of 
helping other players, and many other aspects of Guild life make being in a
Guild a memorable experience.  Each Guild has its own separate headquarter
with a healer, a practice room, a Guild store, and many other rooms that makes
each Guild unique unto itself.
 
Membership in a Guild is not something that is easily obtained, and you must
be a law-abiding player.  Deadly players are not allowed to join Guilds.
There are rules within each Guild, and along with these rules, you must
follow the rules of this MUD.
 
To gain entry into a Guild, you should speak with a leader of the Guild.  The
leaders are those people who have the title <Leader>, <First> and <Second>.
To find out who is on from a Guild, type "who 'Guild of *****'.  For example,
if you are a Druid, and you wish to find out who is on from the Guild of 
Druids, type "who 'Guild of Druids'", and you will be given a list of players
that belong to the Guild.
 
Type &Ghelp guild rules&w for a list of rules about Guild equiment and items.
~

2 'GUILD RULES'~
.
&RIt is illegal to sell, trade, auction or give away Guild items.&w Including
potions, pills, scrolls, equipment and containers.  Anything you can buy in
a Guild house is off limits for selling.  If you are found to be trading in
these illegal items, you stand the chance of not only being outcast from your
Guild, but your Guild may lose the ability to sell those items.
 
Please do not engage in buying such items either, as the Immortals reserve
the right to remove Guild items from ANY person not belonging to that Guild.
Just because you can buy it on the "black market" does not mean the Immortals
will allow you to keep it.
 
If you are in doubt whether an item is a Guild item, you are free to ask an
Immortal. Most Guild items have the name "guild" on it when you use identify.
 
There are rules that are specific to Guilds.  If you are not sure if something
is legal or illegal within your Guild, please contact a leader.
~

0 GUILDTALK~
Syntax:  guildtalk <message>
 
Provided that you are in a Guild, guildtalk will send the message to
all members currently online.
~

63 GWHERE~
-----------------------------------------------------------
 
	 SYNTAX: gwhere
			 gwhere <low> <high>
			 gwhere <low> <high> mobs
 
DESCRIPTION: The GWHERE command displays a global location
			 list of the targets specified; name of target
			 and level, vnum/name of room, and name of area
			 are all displayed, where <low><high> indicates
			 the level of the players or MOBs. If level
			 criterias are note defined, all will be displayed.
 
-----------------------------------------------------------
 
SEE ALSO: GFIGHTING
~

0 HALF-ELF HALFELF HALFELVES~
These beautiful creatures are the result of the mixing of human and Elven
blood.  Though the resulting Half-Elf is not as intelligent as the pure-
blooded Elf, nor as hardy as the full-blooded Human, this mix serves quite
well in a variety of classes which require the standards of both mental
and physical prowess.  Their beautiful almond eyes enable them to discern
objects in the darkness.
 
Not as tall as the pure Elf, they range from five feet six inches to six
feet five inches, with a heavier musculature than their ancestors.
 
Half-Elves gain experience on a scale of normal rate * 1.04.
~

0 HALF-OGRE HALFOGRE~
The Half-Ogre is a result of breeding during the dark days with humans,
when pure-blooded Ogres were known for raping and looting Human villages.
As a result of this, the Half-Ogre stands from six to nine feet tall in
height and is known for its muscle-packed body that can weigh from three
to four hundred pounds.  Most are relatively hairless, their bodies are
covered with small, boney growths, and their disproportionately long
limbs gives them a somewhat simian appearance.
 
This offspring of humans and Ogres has inherited great physical abilities:
an apptitude for aggression from its Ogre lineage, inherent infravision to
assist in traversing darkness, and though slightly smaller than pure-bred
Ogres it nevertheless boasts an awesome strength.  Being territorial, most
Half-Ogres will readily engage in battle to establish superiority over any
it encounters.  All in all a race best suited for the role of pure fighter.
 
Half-Ogres gain experience on a scale of normal rate * 0.92.
~

0 HALF-ORC HALF-ORCS HALFORC HALFORCS~
A recent mingling of Orcish and Human blood arising as the darker races
have encroached further upon the remaining settled areas, most members
of this half-blooded race are distinctly more Orcish than Human in both
appearance and behavior.  Large and dull of wit, with short but broad
bodies, their poor mental and physical dexterity is offset by an iron
constitution.  Though some have dabbled in the sorcerous arts due to
their human influence, brute combat is is still the natural call which
stirs in the soul of the Half-Orc.  All Half-Orcs possess infravision.
 
Though not as broad nor powerful as full-blood Orcs, Half-Orcs usually
retain their wider bodies, longer, bowed limbs and heavier musculature.
A ridged brow crowned by bushy eyebrows conceals small, squinting eyes;
below a snout-like noses opens a maw filled with crooked fangs; dark
skin emanating a rancid odor; their presence disgusts civilized races.
Standing from five to seven feet tall and averaging two hundred pounds,
an altogether fearsome race.
 
Half-Orc's gain experience on a scale of normal rate * 0.94.
~

0 HALF-TROLL HALFTROLL~
An intermingling (carried out in the darker lands of the Realms) of the
blood of the Troll with that of Humans, the Half-troll is as deadly as
it is hideous.  Though considerably smaller than full-blood Trolls, the
Half-troll often stands well over eight feet in height and carries over
three hundred pounds on its heavily-muscled frame.  Though naturally of
low wisdom, the race was sorcerously imbued with a wicked intelligence
and the ability to see naturally in the darkness.  Half-trolls usually
make poor pure magic users, and suffer from an unusually low dexterity.
Yet their boundless energy and high intellect create one of the most
cunning physical beasts of the Realms in experienced hands.
 
Owing in part to the black blood which courses through their heavy veins,
the heavily-scaled skin of the Half-troll ranges in color from a charcoal
grey to a deep, blackish green.  Half-trolls revel in the fright of their
appearance, often wearing their hair in battle-braids and emblazoning
themselves with brands and tattoos to accentuate the effect.
 
Half-Trolls gain experience on a scale of normal rate * 0.90.
~

0 HALFLING HALFLINGS~
Stout, round, open-minded and very elusive the Hobbit has a level
of dexterity which is only equal to his wit. Many enjoy the thrill of
reading a good book, or telling stories by the fire. Many halflings,
because of this, tend to avoid adventuring, though some rare hobbits
choose the path of the Bard, or storyteller, for their keen intellect
serves them well. This intelligence, coupled by a surprising
determination makes them a curious (though somewhat underpowered)
ally.

Halflings have compact bodies and thick, long limbs, and usually have
very hairy feet. Eye color range from blue, brown, green, and any shade
inbetween.

Halflings gain experience on a scale of normal rate * 1.02.
~

1 HALLUCINATE~
Syntax : cast hallucinate <victim> <msg>
 
The power to invade one's mind and cause them to see what you wish them
to.
~

1 'HAON DOR'~
Recommended level range: 5 - 10

The immense forest of Haon Dor stretches westward from Darkhaven,
swallowing much of Despair's western landscape. It is a dangerous
forest, populated by many aggressive creatures: wargs and wolves
among them. A single beast rules the forest, given the name Froghemoth
by those who have survived its wrath. Obvious paths to the Shire,
Troll Den, Old Marsh and the city of Solace can be found in Haon Dor,
as well as hidden ones to various other places in Despair.
~

1 'HAUNTED HOUSE'~
Recommended level range: 20 - 50
 
Should you stumble into a lonely inn one night, seeking a hot meal and a place
to rest, it is quite possible that you will hear a bard tell the story of a
strange, mystical house that was inhabited by an evil, eccentric sorceror.
Murdered by one of the very beasts he created, the house was left abandoned
to be overrun by the strange beings spawned by the sorceror.  It is rumoured
that the house even nowadays remains haunted by these odd, powerful creatures.
The house now lies in the midst of the Midway of Despair, open for all those
adventurers who are brave (or foolish) enough to enter.
 
~

1 HAUS~
.&y
							   .___. 
				 ==(W{========-) * ( 
				   ||  (.--.)  | * |
				   | \_,|**|,_/| * |  
				   `\ ' `--'   /\_/
					/`\__..__/'\  
				   (   | .  |   )                
				   )  /==00==\  (               
		__________/__/--\__/--\__\_____________   
~

1 HEADBUTT~
Syntax:  headbutt
 
Headbutt is a skill which can only be used once a fight has started,
and can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

54 HEDIT~
Syntax: hedit [help topic]
 
This command allows you to edit a help topic.  If the specified help topic
does not exist, it will be created for you. The default help page (summary)
will be selected if you do not specify a page.
 
NOTE - Always, when creating a new help entry, type Help <new entry name> 
	   prior to creating your entry. A pre-existing help file associated 
	   with that keyword may already exist.
&Y
Colors &wcan now be added to help files using the same command set that changes
a player's prompt. &bMultiple &Ycolor &wcombinations can be set on a given line
including ^bbackground^x colors. However there are a couple of quirks to take 
note of:
&Y
	1) At the very least, the first character of a help file cannot be
	   either the symbol '&&' or the symbol '^^'.
	2) Color changes have to be separated by at least one character. ie,
	   '&&Y.^^r' will work, '&&Y^^r' will cause problems. 
	3) Color codes are imbedded within text and _do_ count in note buffers
	   for line length. ie, watch out for <Long Line Trimmed>.
&w
Colors should be used to &Yenhance &wthe help file, or specific parts of the 
help file. Tact and restraint should be used if considering the use of colors.
 
 
See HSET, PCOLORS.
~

51 HELL UNHELL~
Syntax: hell <character> <number> <hours or days>
Syntax: unhell <character>
 
The hell command sends a character to hell for a given period of time.  It
automatically releases the character when their time has been served.  Upon
being helled, the character receives the message, "The immortals are not
pleased with your actions.  You shall remain in hell for <time period>".
 
Hell takes arguments of either hours or days.  To hell someone for 3 hours,
"hell <character> 3 hours".  To hell someone for three days, "hell <character>
3 days".  Hell will default to hours if hours or days is not specified.
 
You may not hell someone for more than thirty days with the hell command.
 
To release a player from hell, simply "unhell <character>".
~

0 HELP~
You must really need Help!

Related Topics:  Help Darrek  Help Me

To find help topics available to you, type hlist . This will give you
a very long list of help files. If you'd like a shortened list, type
hlist a  for help files that begin with the letter a. 
~

58 HELPDELETE~
~

1 HERBS HERB~
The names of current herbs have been changed to the following:
 
a small dusk of timian herbs - black cohosh
some bluish herbs - elder flowers
some purplish herbs - belladonna
some blackish herbs - linden flowers
some grayish herbs - poison ivy
some reddish herbs - tamarind herbs
some orangish herbs - bay leaves
some pinkish herbs - callamus
11 herbs and spices - caeduceus herbs
green herbs - kingsfoil
clear white herbs - ringwort
~

1 HEZEKIAH HEZEKIAHS 'HEZEKIAHS CURE' HEZEKIAH'S~
Syntax:  c 'hezekiahs cure' <target>
		  c hezekiahs        <target>
 
Hezekiah was a great Paladin for whom the Gods showed great pleasure.
As a reminder of his greatness, the Gods granted a spell in his honor.
The spell brings about a mild cure to the wounded, with the use of
the Paladin Holy Symbol.
~

1 HIDE SNEAK VISIBLE~
Syntax:  hide
Syntax:  sneak
Syntax:  visible
 
If you successfully hide, creatures cannot see you unless they are affected
by 'detect hidden'.  Player characters can detect you, however.
 
If you successfully sneak, you can move from place to place without being
noticed by other player characters.  If you flee, you will stop sneaking
and will have to 'sneak' again.
 
In order to either hide or sneak successfully, you will have to practice
the appropriate skill.
 
Visible (vis) cancels your hiding and sneaking, as well as any invisibility,
effectively making you visible again to all.
 
~

1 'HIGH TOWER OF SORCERY'~
Recommended level range: 10 - 30

Ages ago, when the mortals of Despair were still experimenting with
magic, a coven of archmages deemed that the use of magic needed to
be learned and controlled to avoid terrible disasters. Thus the Guild
of Mages was created, along with the High Tower of Sorcery. After
many attacks from the beings of Darkness, the mages also found it
necessary to weave a powerful grove of shadows around the Tower, so
that only the stoutest adventurers could reach them. Since that time,
the mages of Despair, led by the powerful Mistress of Magic, have
attempted to grasp the idea of magic and understand how it truly works.
Recently, the Guild has gained such respect that Duke Luther has
permitted the building of a Tower of Sorcery in Darkhaven.
~

51 HITALL~
Syntax: hitall
 
Hitall is a fighter skill that will start a fight by hitting all the
opponents in the room.  For nondeadly characters, the 'opponents' means
mobs, for deadlies it means all the deadly players in the room.
 
Be aware that area attacks are aggressive to all mobs in the room,
including pets, mounts and charmed creatures.
~

1 HITROLL HR~
Represents your chances of hitting your opponent.  The higher
the number, the better.
 
~

1 HLIST~
Syntax: hlist <low level range> <high level range>
 
This command will give you a listing of available help files. The list
is in alphabetical order based on the first triggering keyword. While
this command was initially designed as a maintenance tool to help us
track help files, it is also available to players so that they can
capture a listing of the help files available to them. 
 
Note - You may only view help files that are coded for viewing by your
	   level or lower.
 
Note - The list of help files is quite extensive, and the command does
	   not as yet have a way to filter/shorten the list. Screen capture
	   is, at present, your only recourse.
~

0 HOLD REMOVE WEAR WIELD~
Syntax:  hold   <object>
Syntax:  remove <object>
Syntax:  remove all
Syntax:  wear   <object>
Syntax:  wear   all
Syntax:  wield  <object>
 
Three of these commands will cause you to take an object from your inventory
and use it as equipment:
 
HOLD is for lights, wands and staves; WEAR is for armor; WIELD is for weapons.
 
You may not be able to HOLD, WEAR, or WIELD an item if its alignment does not
match yours, if it is too heavy for you, or if you are not experienced enough
to use it properly.
 
WEAR ALL will attempt to HOLD/WEAR/WIELD each suitable item in inventory.
 
REMOVE will take an object from your equipment and place it into inventory.
 
REMOVE ALL will remove all your equipment and place it into inventory.
 
~

1 'HOLY GROVE'~
Recommended level range: 5 - 20

To the east of Darkhaven is the holy grove. A spiritual place 
populated by peaceful creatures and numerous druids, the only
danger in this holy place is the danger you bring with you. The
entrance to a portal through time itself can also be found in the
grove, though many an adventurer has been lost forever while
crossing through time...
~

1 'HOLY SANCTITY'~
Syntax:  c 'holy sanctity'
 
This spell casts sanctuary on every member of the cleric's group.
~

51 HOLYLIGHT INVIS~
Syntax: holylight
Syntax: invis

HOLYLIGHT is a toggle that allows you to see (almost) every character and
mobile in the game.  With holy light, you can see what's in the game more
easily.  Without holy light, you can see what mortal players see.

INVIS is a toggle which makes you completely invisible to all player characters
of lower level than you, and to all mobiles.

When an immortal is INVIS, they will have a flag on the who list which 
indicates their level of invisibility, such as (51) for INVIS 51.  A 
similar flag will also appear when you 'LOOK' in a room - this flag will 
say (Invis 51).

HOLYLIGHT will not allow you to see immortal INVIS characters who are
higher level than you.
~

1 HOMEPAGE~
syntax: homepage <url>
 
example: homepage http://www.idirect.com/test.html
 
If you have a web page somewhere, you can use the homepage
command to show people a link to that page whenever they
select the 'see who's on' link from this MUD's home page.
 
To remove your homepage setting, type 'homepage clear'.
 
~

57 'HP'~
This is an abbreviation for hit points.  All classes begin with 20 hp
at creation and gain between 6 and 19 hp per gained level, depending on
class, race and CON.  Equipment can also add to your total hp.
~

1 HQS~
Peaceful players are not to enter deadly hq's.  If found there you will be 
escorted out if you don't do so voluntarily.  Non compliance will result
in punishment.
~

54 HSET~
Syntax: hset  <command> [value] [help topic]
 save                            Saves all help pages (to help.are)
 level <level> <help topic>      Sets help topic to specified level
 keyword <keyword> <help topic>  Sets help keyword to specified keyword
 remove <level.><help topic>     Removes the specified help page
 
Note:  If you wish to set more than one keyword to a help topic, enclose all
	   the keywords, space separated inside quotes.  (Like in spellcasting)
Note:  If you have instances of multiple help files with the same keyname,
	   using Hset Remove without a level designation will remove the one with
	   the lowest level of access. ie:
 
	   Help file XYZZY at level 57, and help file 'SAVE XYZZY' at level 58.
	   Typing 'HSET REMOVE XYZZY' will remove the level 57 XYZZY.
	   Typing 'HSET REMOVE 58.XYZZY' will remove the level 58 'SAVE XYZZY'.

Setting a help entry level to -1 prevents the header from showing up 
when you view the help with the help command.
See also: HEDIT
 
~

0 HUMAN HUMANS~
.
HELP HUMAN HUMANS

In the beginning there were Humans, Elves and Ogres. Humans are the most
numerous and the plainest race in the Realms. Although possessing no special
abilities or bonuses, they are the most adaptable and flexible race and are
able to assume any class. Humans are bipedal creatures with two arms 
and a roundish head. Their height, weight, eye and hair color vary greatly. It
is rare to find any two who look exactly alike. In dark times Humans and Elves
mated creating a new race, called HALF-ELVES (see help HALF-ELF HALFELF) and
Humans and Ogres mated created the Half-Ogre Race.  (See help HALF-OGRE, or
help HALFOGRE)
~

1 ICESHIELD FIRESHIELD SHOCKSHIELD~
Iceshield conjures an encompassing shield of ice which will return the
attacks of your enemy with tongues of cold.
Syntax:  cast iceshield
 
Fireshield surrounds the caster with a wall of fire which returns your
enemies' attacks with balls of fire.
Syntax:  cast fireshield
 
Shockshield surrounds the caster with a field of electric energy which will
return your enemies' attacks with bolts of lightning.
Syntax:  cast shockshield
 * shockshield cannot be cast on others
 
 
The chances of your shields striking your opponent increase with your level,
with the odds at low levels being very low.
 
Like shields will negate each other's effects.  For example, if your enemy
has fireshield, your fireshield will counter any fireballs thrown by his,
and his will counter any fireballs thrown by yours.
~

0 IDEA IDEAS TYPO BUG~
Syntax: bug <message>
Syntax: idea <message>
Syntax: typo <message>

These commands will take your message and record it into a file as feedback
to the mud implementors.
~

0 IDENTIFY~
Syntax: cast identify <object>

This spell reveals information about the object.
~

51 'IFCHECK CANPKILL'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:     &cif canpkill($n)
				  mpechoat 0.$n Your fate awaits, $n.
 &GDESCRIPTION:     &cThe CANPKILL ifcheck is used to determine
				  if the target is a:
					 - Minimum age of 18,
					 - Minimum level of 5, and
					 - pkiller.

&r*-------------------------------------------------------------------*&w

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK CANSEE'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif cansee($n)
						  '$n can see just fine!

		  &GDESCRIPTION:    &cThe CANSEE ifcheck is used to determine if
						  the target is able to see.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK CHA'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif cha($n) > 18
						 'You're very charismatic, $n! 

		&GDESCRIPTION:     &cThe CHA ifcheck is used to direct a command
						 based on the charisma stat of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK CHARCOUNT'~
&r*-------------------------------------------------------------------*
 
		  &GEXAMPLE:    &cif charcount(21000) > 10
 
	  &GDESCRIPTION:    &cCHARCOUNT ifcheck counts the number of chars
					  in the specified room. This example returns TRUE if
					  there are more than 10 chars in room 21000.
					  You can use this form in room or mob programs and
					  you can have one room program check the number of
					  chars in a different room.
					  Note the number of characters is defined as the
					  number of mortals plus the number of mobs.
 
		  &GEXAMPLE:    &cif charcount(0) > 10
 
	  &GDESCRIPTION:    &cUse a zero room number if you want to have
					  a mob check the number of chars in its room.
					  Note that if the mob changes rooms, the ifcheck
					  applies to whatever room the mob is in.
					  You should use this form in mob programs only.
 
&r*-------------------------------------------------------------------*
 
	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3
 
~

51 'IFCHECK CLAN'~
&r*-------------------------------------------------------------------*

	  &GEXAMPLE:   &cif clan($n) == inconnu
				 tell 0.$n You're an Inconnu!

  &GDESCRIPTION:   &cThe CLAN ifcheck is used to determine if the
				 target belongs to a Clan or Order.

&r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK CLANTYPE'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif clantype($n) == 15
						  '$n belongs to an Order.

		  &GDESCRIPTION:    &cThe CLANTYPE is used to determine what
						  type of clan the target belongs to.
&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK CLASS'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:        &cif class($n) == 0
					 t 0.$n You're a mage!

 &GDESCRIPTION:        &cThe CLASS ifcheck is used to determine the
					 class of the target. (HELP NPCCLASSES)   

 &r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK CON'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif con($n) < 5
						 'You're constitution is low, $n.

		&GDESCRIPTION:     &cThe CON ifcheck is used to direct a command
						 based on the constitution stat of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK COUNCIL~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:   &cif council($n) == 1
					 '$n is from the Council of Elders. 

	  &GDESCRIPTION:   &cThe COUNCIL ifcheck determines what
					 council the target belongs to.(HELP COUNCILNUMS)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK DEITY'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:      &cif deity($n) == vl'arescht
					  'May Thoric save your evil soul!

	&GDESCRIPTION:      &cThe DEITY ifcheck is used to determine who
					  the target is devoted to.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK DEX'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif dex($n) > 20
						 'You're pretty nimble, $n

		&GDESCRIPTION:     &cThe DEX ifcheck is used to direct a command
						 based on the dexterity stat of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK DOINGQUEST'~
EXAMPLE:
DESCRIPTION
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

51 'IFCHECK ECONOMY'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif economy(21001) > 10000000
						  mpecho DH economy is booming!

		  &GDESCRIPTION:    &cThe ECONOMY(rvnum) ifcheck is used to base
						  a command on the economy of the area the
						  checker is in. NOTE: area will be specified
						  by default to area the MOB is in, via rvnum.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK FAVOR'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif favor($n) == 2500
						 'You're well loved by your deity, $n.

		&GDESCRIPTION:     &cThe FAVOR ifcheck is used to determine the
						 amount of favor held by the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK GOLDAMT'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:        &cif goldamt($i) > 10000
					'I'm rich!

 &GDESCRIPTION:        &cThe GOLDAMT ifcheck determines the specified
					 amount of coins carried by the target.

 &r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK GUILD'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:       &cif guild($n) == guild of thieves
					   'You belong to the GoT!

	&GDESCRIPTION:       &cThe GUILD ifcheck is used to determine
					   what guild the target belongs to, if any.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK HITPRCNT'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:   &cif hitprcnt($n) < 10
						 'You're going to dieeeeeee!

		  &GDESCRIPTION:   &cThe HITPRCNT ifcheck is used to base a
						 command on the targets current hit points.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK HPS'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif hps($n) > 1900
						 'You're buff, $n!!

		&GDESCRIPTION:     &cThe HPS ifcheck is used to base a command
						 on the target's current hit points.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK INROOM'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:         &cif inroom($i) == 1200
					  'Look at all the notes to read!

 &GDESCRIPTION:         &cThe INROOM(target) ifcheck is used to
					  determine the target's rvnum location.

 &r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK INT'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:    &cif int($i) == 25
						'I'm smart!

		&GDESCRIPTION:    &cThe INT ifcheck is used to direct a command
						based on the intelligence of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISASUPRESSED'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif isasupressed($n) > 10
						  '$n's got a bit of wait ahead of them!

		  &GDESCRIPTION:    &cThe ISASUPRESSED ifcheck checks the 
						  target's asupress timer.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK ISATTACKER' 'IFCHECK ISKILLER' 'IFCHECK ISTHIEF'~
-----------------------------------------------------------
 
	 SYNTAX: if isattacker($n)
			 say Didn't quite pull it off, did you?
 
DESCRIPTION: The ISATTACKER, ISTHIEF, and ISKILLER, if
			 checks are used to determine if the target
			 is flagged as an attacker/killer/thief.
 
-----------------------------------------------------------
 
SEE ALSO: MPPARDON, FLAGS, PARDON
~

51 'IFCHECK ISCHARMED'~
&r *-------------------------------------------------------------------*

	 &GEXAMPLE:         &cif ischarmed($n)
					  'Wake up!

 &GDESCRIPTION:         &cThe ISCHARMED ifcheck determines if the 
					  target is charmed.   

 &r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISDEVOTED'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif isdevoted($n)
						 'I see you have devoted your soul, $n.

		&GDESCRIPTION:     &cThe ISDEVOTED ifcheck is used to determine
						 if the target is devoted to a Deity.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISEVIL'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:    &cif isevil($n)
					  'Greetings, evil one.

	  &GDESCRIPTION:    &cThe ISEVIL ifcheck is used to determine if
					  the targets alignment is lower than -350.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK ISFIGHT'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:         &cif isfight($i)  
					  yell Lookie Mom! I'm fighting!

 &GDESCRIPTION:         &cThe ISFIGHT ifcheck determines if the target
					  is fighting.

 &r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK ISFOLLOW'~
EXAMPLE:
 
DESCRIPTION
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

52 'IFCHECK ISGOOD'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:    &cif isgood($n)
					  'Always a pleasure, $n.

	  &GDESCRIPTION:    &cThe ISGOOD ifcheck is used to determine if 
					  the target's alignment is +350 or higher.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK ISIMMORT'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:        &cif isimmort($n)
					 bow 0.$n

 &GDESCRIPTION:        &cThe ISIMMORT ifcheck determines if the 
					 target is an Immortal.

 &r*-------------------------------------------------------------------*

   &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISLEADER'~
&r*-------------------------------------------------------------------*
   
		&GEXAMPLE:      &cif isleader($n)
					  '$n is an Order, Guild, or Clan leader.

	&GDESCRIPTION:      &cThe ISLEADER ifcheck is used to determine if the 
					  target is a leader of an Order, Guild, or Clan.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISLOCKED'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif islocked($n) == 6
						 'The northeast exit is locked.

		&GDESCRIPTION:     &cThe ISLOCKED(dir) ifcheck is used to
						 determine if a specified exit is locked.
						 (HELP DOORDIRS)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISMORPHED'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif ismorphed($n)
						  '$n is not as they appear!

		  &GDESCRIPTION:    &cThe ISMORPHED ifcheck is used to determine
						  if the target is morphed. (HELP MORPHTYPES)

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK ISMOUNTED'~
&r*-------------------------------------------------------------------*

	  &GEXAMPLE:        &cif ismounted($n)
					  mpforce 0.$n dismount

  &GDESCRIPTION:        &cThe ISMOUNTED ifcheck determines if the
					  target is mounted.

 &r*-------------------------------------------------------------------*

   &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISNEUTRAL'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:    &cif isneutral($n)
					  'Make up your mind, $n.

	  &GDESCRIPTION:    &cThe ISNEUTRAL ifcheck is used to determine if
					  the target's alignment is:
					  - less than +350 and
					  - greater than -350

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISNPC'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif isnpc($n)
						 '$N is a Non-player character.

		&GDESCRIPTION:     &cThe ISNPC ifcheck is used to determine if
						 the target is a Non-player character. (MOB)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISNUISANCE'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif isnuisance($n)
						  '$n is a bit of a pest.

		  &GDESCRIPTION:    &cThe ISNUISANCE ifcheck is used to determine
						  if the PC is nuisanced.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISOPEN'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:      &cif isopen($n) == 6
						'The northeast exit is open.

	  &GDESCRIPTION:      &cThe ISOPEN ifcheck is used to determine if
						an exit is open in the specified direction.
						(HELP DOORDIRS)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISPACIFIST'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif ispacifist($n)
						 '$n will not fight.

		&GDESCRIPTION:     &cThe ISPACIFIST ifcheck is used to determine
						 if the target is flagged pacifist. (MOB)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISPASSAGE'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif ispassage($n) == northeast
						 'There is a passage leading northeast.

		&GDESCRIPTION:     &cThe ISPASSAGE(dir) ifcheck is used to
						 determine if there is an exit in the 
						 specified direction. (HELP EXITS)
						 Do NOT use doordirs. Use the exit name.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISPC'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif ispc($n)
						 '$n is a Player Character.

		&GDESCRIPTION:     &cThe ISPC ifcheck is used to determine if
						 the target is a Player Character. (PC)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK ISPKILL'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif ispkill($n)
						 '$n is a deadly character.

		&GDESCRIPTION:     &cThe ISPKILL ifcheck is used to determine
						 if the target is a deadly character. (pkiller)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK ISSHELLED'~
&r*-------------------------------------------------------------------*
		
		&GEXAMPLE:       &cif isshelled($n)
					   mpat 0.$n 'Tsk, tsk.

	&GDESCRIPTION:       &cThe ISSHELLED ifcheck is used to determine 
					   if the target is helled.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK LCK'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif lck($n) < 5
						 'Betcha don't feel very lucky, $n.

		&GDESCRIPTION:     &cThe LCK ifcheck is used to direct a command
						 based on the luck stat of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK LEADER'~
EXAMPLE:         if isleader($n)
				 $ is an order, guild, or clan leader
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

52 'IFCHECK LEVEL'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:      &cif level($n) < 5
					  'You're just a wee baby, $n!

	&GDESCRIPTION:      &cThe LEVEL ifcheck is used to determine the
					  level of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK MANA'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:   &cif mana($n) > 100
					 'You're low on mana, $n.

	  &GDESCRIPTION:   &cThe MANA ifcheck is used to determine the
					 amount of mana the target has.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK MOBCOUNT'~
&r*-------------------------------------------------------------------*
 
		  &GEXAMPLE:    &cif mobcount(21000) > 10
 
	  &GDESCRIPTION:    &cMOBCOUNT ifcheck counts the number of mobs
					  in the specified room. This example returns TRUE if
					  there are more than 10 mobs in room 21000.
					  You can use this form in room or mob programs and
					  you can have one room program check the number of
					  mobs in a different room.
 
 
		  &GEXAMPLE:    &cif mobcount(0) > 10
 
	  &GDESCRIPTION:    &cUse a zero room number if you want to have
					  a mob check the number of mobs in its room.
					  Note that if the mob changes rooms, the ifcheck
					  applies to whatever room the mob is in.
					  You should use this form in mob programs only.
 
&r*-------------------------------------------------------------------*
 
	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3
 
~

51 'IFCHECK MOBINAREA'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:         &cif mobinarea(3) == 1
						 'The SuperMob is here working.  

	&GDESCRIPTION:         &cThe MOBINAREA(vnum) ifcheck is used to
						 determine if the target is in the area.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK MOBINROOM'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:         &cif mobinroom(3) > 1
						 'We only need one SuperMob!

	&GDESCRIPTION:         &cThe MOBINROOM(vnum) ifcheck is used to 
						 determine if, and/or how many, of target
						 are present in the room.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK MOBINVIS'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif ismobinvis($n)
						  '$N is mobinvis

		  &GDESCRIPTION:    &cThe ISMOBINVIS ifcheck determines if the
						  target MOB is flagged mobinvis.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK MOBINVISLEVEL'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:       &cif mobinvislevel($i) == 50
					   'I'm invisible to all under lvl 50 

	&GDESCRIPTION:       &cThe MOBINVISLEVEL is used to determine
					   the level the target is invisible to. 

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK MOBINWORLD'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif mobinworld(21044) < 1
						 'Who killed Harakiem?

		&GDESCRIPTION:     &cThe MOBINWORLD(vnum) ifcheck is used to
						 determine if the specified MOB is anywhere
						 in the realms.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK MORTAL'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif mortal($n)
						 'Greetings Mortal.

		&GDESCRIPTION:     &cThe MORTAL ifcheck is used to determine
						 if the target is level 50 or lower.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK MORTCOUNT'~
&r*-------------------------------------------------------------------*
 
		  &GEXAMPLE:    &cif mortcount(21000) > 10
 
	  &GDESCRIPTION:    &cMORTCOUNT ifcheck counts the number of mortals
					  in the specified room. This example returns TRUE if
					  there are more than 10 mortals in room 21000.
					  You can use this form in room or mob programs and
					  you can have one room program check the number of
					  mortals in a different room.
 
 
		  &GEXAMPLE:    &cif mortcount(0) > 10
 
	  &GDESCRIPTION:    &cUse a zero room number if you want to have
					  a mob check the number of mortals in its room.
					  Note that if the mob changes rooms, the ifcheck
					  applies to whatever room the mob is in.
					  You should use this form in mob programs only.
 
&r*-------------------------------------------------------------------*
 
	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3
 
~

51 'IFCHECK MORTINROOM'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif mortinroom(Fred)
						  ruffle fred

		  &GDESCRIPTION:    &cThe MORTINROOM ifcheck returns true everytime
						  the mortal is in the room. MORTINROOM will
						  work for link dead as well as link live players.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK MORTINWORLD'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif mortinworld(Fred)
						  mpat 0.Fred say Hi Fred!
 
		  &GDESCRIPTION:    &cMORTINWORLD ifcheck returns true if the
						  mortal is in the game. MORTINWORLD will
						  work for both link dead as well as link 
						  live players.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK MULTI'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif multi($n) > 4
						  '$n has more than four characters logged in.

		  &GDESCRIPTION:    &cThe MULTI ifcheck is used to determine if/
						  how many PCs the target has logged in. Also
						  applies to MOBs, objects, rooms.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK NAME'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:      &cif name($n) == haus
						bow 0.$n

	  &GDESCRIPTION:      &cthe NAME ifcheck is used to determine
						the name of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK NORECALL'~
EXAMPLE:
DESCRIPTION
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

52 'IFCHECK NUISANCE'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif nuisance($n)
						  'How much of a pest are you....

		  &GDESCRIPTION:    &cThe NUISANCE ifcheck is used to determine
						  at what level the target is nuisanced.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK NUMBER'~
EXAMPLE:
 
DESCRIPTION
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
EXAMPLE:
DESCRIPTION
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

51 'IFCHECK OBJTYPE'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:      &cif objtype($o) == 19
					  'Yummy! Food!
 
	&GDESCRIPTION:      &cThe OBJTYPE ifcheck is used to determine the
					  type of object the target is. (HELP OBJTYPENUMS)
 
 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OBJVAL0'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif objval($0) = 10
						  (and the object is a drink container)
						  This container has 10 units of fluid in it

		  &GDESCRIPTION:    &cThe OBJVAL0(name) ifcheck returns the numeric
						  value of the val0 field of the object referenced
						  by name.  See 'help ITEMVALUES' for what val0 
						  can be used for.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OBJVAL1'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif objval($1) == 20
						  (and the object is an armor)
						  The AC of the armor is 20 

		  &GDESCRIPTION:    &cThe OBJVAL1(name) ifcheck returns the numeric
						  value of the val1 field of the object referenced
						  by name.  See 'help ITEMVALUES' for what val1
						  can be used for.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OBJVAL2'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif objval($2) == 12
						  (And the item is a drinkcon)
						  This container holds coffee 

		  &GDESCRIPTION:    &cThe OBJVAL(name) ifcheck returns the numeric
						  value of the val2 field of the object referenced
						  by name. See 'help ITEMVALUES' for what val2
						  can be used for.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OBJVAL3'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif objval($3) == 12
						  (And the object is a weapon)
						  This is a suction type weapon

		  &GDESCRIPTION:    &cThe OBJVAL(name) ifcheck returns the numeric
						  value of the val3 field of the object referenced
						  by name. See 'help ITEMVALUES' for what val3
						  can be used for.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OBJVAL4'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif objval($4) == 135
						  (And the object is a salve)
						  The 1st spell this salve casts is poison

		  &GDESCRIPTION:    &cThe OBJVAL(name) ifcheck returns the numeric
						  value of the val3 field of the object referenced
						  by name. See 'help ITEMVALUES' for what val4
						  can be used for.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OBJVAL5'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif objval($4) == 135
						  (And the object is a salve)
						  The 2nd spell this salve casts is poison

		  &GDESCRIPTION:    &cThe OBJVAL(name) ifcheck returns the numeric
						  value of the val3 field of the object referenced
						  by name. See 'help ITEMVALUES' for what val4
						  can be used for.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OTYPEHERE'~
EXAMPLE:



DESCRIPTION
The OTYPEHERE(name)/OTYPEHERE(number) ifcheck is used to determine
if an object of the given objecttype is in the room.  See
'help OBJECTTYPES.'

SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

51 'IFCHECK OTYPEINV'~
EXAMPLE:



DESCRIPTION
The OTYPEINV(name)/OTYPEINV(number) ifcheck is used to determine
if an object of the given objecttype is in the checker's inventory.
See 'help OBJECTTYPES.'

SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

51 'IFCHECK OTYPEROOM'~
EXAMPLE:



DESCRIPTION
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
The OTYPEROOM(name)/OTYPEROOM(number) ifcheck is used to determine
if an object of the given objecttype is in the checker's room.


See 'help OBJECTTYPES.'
SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

51 'IFCHECK OTYPEWEAR'~
EXAMPLE:



DESCRIPTION
The OTYPEWEAR(name)/OTYPEWEAR(number) ifcheck is used to determine
if an object of the given objecttype is worn by the checker.
See 'help OBJECTTYPES.'

SEE ALSO: mpedit, opedit, rpedit, ifchecks.
~

51 'IFCHECK OVNUMCARRY'~
&r*-------------------------------------------------------------------*
 
	  &GEXAMPLE:   &cif ovnumcarry(1200) > 1
				 'Why do you have so many general imm boards?
 
  &GDESCRIPTION:   &cThe OVNUMCARRY(vnum) ifcheck is used to determine
				 if an object with the given vnum is worn OR carried
				 by the CHECKER.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OVNUMHERE'~
&r*-------------------------------------------------------------------*

	  &GEXAMPLE:         &cif ovnumhere(1200)
					   'Reading Imm Sam, I see.

  &GDESCRIPTION:         &cThe OVNUMHERE(vnum) ifcheck is used to
					   determine if an object is:
					   - in the room of the checker
					   - in the inventory of the checker
					   - being worn by the checker
					   - carried by the checker

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OVNUMINV'~
&r*-------------------------------------------------------------------*

	  &GEXAMPLE:         &cif ovnuminv(1200) < 1
					   'Where's my Imm board?

  &GDESCRIPTION:         &cThe OVNUMINV(vnum) ifcheck is used to
					   determine if an object is in the checker's
					   inventory.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OVNUMROOM'~
&r*-------------------------------------------------------------------*
 
	  &GEXAMPLE:         &cif ovnumroom(1200) > 1
					   'Why are there so many general Imm boards here?

  &GDESCRIPTION:         &cThe OVNUMROOM(vnum) ifcheck is used to determine
					   if an object is in the room the checker is in.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK OVNUMWEAR'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:   &cif ovnumwear(1200)
						 'Why am I wearing the general imm board?

		  &GDESCRIPTION:   &cThe OVNUMWEAR(vnum) ifcheck is used to
						 determine if the specified object is being
						 worn by the checker.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK POSITION'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:         &cif position($i) == 6
						 stand 

	&GDESCRIPTION:         &cThe POSITION ifcheck is used to determine 
						 the position of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK RACE'~
&r*-------------------------------------------------------------------*

		&GEXAMPLE:           &cif race($n) == drow
						   ,eyes the Drow suspiciously

	&GDESCRIPTION:           &cThe RACE ifcheck is used to determine the
						   race of the target.(HELP NPCRACES)

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK RAND'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:    &cif rand(25)
					  'I will say this 25% of the time, or less.

	  &GDESCRIPTION:    &cThe RAND ifcheck is used to vary command
					  strings given to the same trigger.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK SEX'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:      &cif sex($n) == 2
						'Greetings M'Lady!

	  &GDESCRIPTION:      &cThe SEX ifcheck is used to determine the
						gender of the target.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK STR'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:    &cif str($n) < 5
						'You need to work out, $n.

		&GDESCRIPTION:    &cThe STR ifcheck is used to direct a command
						based on the target's strength stat.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK TIME'~
&r*-------------------------------------------------------------------*

		  &GEXAMPLE:      &cif time($n) == 1201
						'Noon, and all is well.

	  &GDESCRIPTION:      &cThe TIME ifcheck is used to determine the
						time of day in military time. <,>, ! and ==
						also apply in any combination.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK TIMESKILLED'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:     &cif timeskilled($n) > 200
						 'Try an easier MUD, $n :)

		&GDESCRIPTION:     &cThe TIMESKILLED(name) ifcheck is used
						 to base a command on the specified number of
						 times the target has been killed.

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK WAITSTATE'~
&r*-------------------------------------------------------------------*

			  &GEXAMPLE:    &cif waitstate($n) > 5
						  '$n is a bit lagged.

		  &GDESCRIPTION:    &cThe WAITSTATE ifcheck is used to check
						  the amount of "wait" a PC has. Does not
						  apply to NPCs.

&r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 'IFCHECK WASINROOM'~
&r*-------------------------------------------------------------------*

	 &GEXAMPLE:   &centry_prog 100
				if ispc($n)
				if wasinroom($n) == 1200
				mpe $n was in room 1200

 &GDESCRIPTION:   &cThe WASINROOM ifcheck is used to determine if the
				target was in a specified room. NOTE: wasinroom checks
				for the 'last' room the target was in only.

&r*-------------------------------------------------------------------*

  &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

52 'IFCHECK WIS'~
&r*-------------------------------------------------------------------*

			&GEXAMPLE:    &cif wis($n) > 20
						'You're a wise person, $n.

		&GDESCRIPTION:     &cThe WIS ifcheck is used to direct a command
						 based on the wisdom stat of the target. 

 &r*-------------------------------------------------------------------*

	&YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3

~

51 IFCHECKS~
VALUE CHECKS (If check == #/string/vnum)
Ifcheck        Question                      Ifcheck    Question
&r------------   ---------------------------   ---------  ------------------
&GHitprcnt       &cPercentage of hit/max_hit?    &GSex        &cSex?
&GDeity          &cName of deity?  (STRING)      &GName       &cName?  (STRING)
&GLevel          &cExperience level?             &GInroom     &cRoom #?  (VNUM)
&GObjtype        &cType of Object?               &GStr        &c# of strength?
&GObjval#        &cValue# equal to this?         &GInt        &c# of intelligen
&GNumber         &cIs its vnum equal to this?    &GWis        &c# of wisdom?
&GPosition       &cPosition #?                   &GDex        &c# of dexterity?
&GClan           &cClan name?  (STRING)          &GCon        &c# of constituti
&GRace           &cRace name?  (STRING)          &GCha        &c# of charisma?
&GMobinarea      &cIs mob in area?               &GMobinworld &cDoes mob exist?
&GMobinroom      &cHow many of mob?  (VNUM)      &GLck        &c# of luck?
&GGuild          &cGuild name?  (STRING)         &GGoldamt    &c# of gold ya go
&GClass          &cClass name?  (STRING)         &GFavor      &c# of favor?
&GMobinvislevel  &cLevel of invis?               &GEconomy    &c# of economy?
&GCouncil        &cMember of council?            &GHps        &c# of hps?
&GMana           &c# of mana?                    &GMortal      &c*Not In Use*
&r------------   ---------------------------   ---------  ------------------
 
&wValue checks can use == (equals) > (greater than) < (less than) 
and ! (not).  Combine for:  != (not equal) >= (greater than or equal).

&YSee individual help files for each ifcheck: &Whelp 'ifcheck mortcount'
 
&YContinued on: IFCHECKS2, IFCHECKS3 
&rSee Also:     MPSTAT RPSTAT OPSTAT MPEDIT RPEDIT OPEDIT TRIGGER MPTRIGGERS
			  RPTRIGGERS OPTRIGGERS MPCOMMANDS RPCOMMANDS OPCOMMANDS VARIABLES
			  AFFECTEDBY (for a list of affect types)&w
~

51 IFCHECKS2~
&r----------  ------------------------    -----------  ------------------
&GIsgood      &cAlign +350 or higher?       &GIsdevoted    &ctarget devoted?
&GIsneutral   &cAlign < 350 and > -350?     &GIsimmort     &cImmortal?
&GIsevil      &cAlign -350 or lower?        &GIsmounted    &cMounted?
&GIsfollow    &cFollow master in room?      &GIsnpc        &cMob?
&GRand (#)    &cEqual to or less?           &GIspc         &cPlayer character?
&GIsaffected  &cAffected_by name?           &GIspkill      &cPkill?
&GCanpkill    &cPkill lev>4 and age>17      &GIsfight      &cFighting?
&GIsmobinvis  &cMobinvis? (versus invis)    &GIscharmed    &cCharmed?
&GNorecall    &cIs target's room norecall?  &GIspacifist   &cPacifist?
&GMortinworld &cIs mort anywhere?           &GMortinarea   &cin area?
&GMortinroom  &cIs mort in room?            &GIspassage    &c(DIR)Exit exists?
&GWasInRoom   &cWas target in X room?       &GIsMulti      &cMulti-playing?
&GIsopen      &c(DIR)Exit open?             &GIslocked     &c(DIR)Exit locked?
&GTime        &c(Military)Time of day?      &GWeight       &cTarget's weight?
&GMortCount   &cMortals in room?            &GMobCount     &cNPCs in room?
&GCharCount   &cNPCs + Mortals in room?
&r----------  ------------------------    -----------  ------------------
 
&wValue checks can use == (equals) > (greater than) < (less than)
and ! (not).  Combine for:  != (not equal) >= (greater than or equal).
 
&YSee individual help files for each ifcheck: &Whelp 'ifcheck mortcount'
 
&YContinued on: IFCHECKS, IFCHECKS3
&rSee Also:   MPSTAT RPSTAT OPSTAT MPEDIT RPEDIT OPEDIT TRIGGER MPTRIGGERS
			RPTRIGGERS OPTRIGGERS MPCOMMANDS RPCOMMANDS OPCOMMANDS VARIABLES
			AFFECTEDBY (for a list of affect types)&w

~

51 IFCHECKS3~
.
&GTimesKilled
&c        If timeskilled($* OR vnum) == amount
For character checks only, can use any normal mobprog operator
		   
&GOvnumHere  OvnumRoom  OvnumCarry  OvnumWear  OvnumInv
&c        If ovnum<place>(vnum) == amount
For objects only, counts how many objects of vnum 'vnum' exist in <place>
 
&GOtypeHere  OtypeRoom  OtypeCarry  OtypeWear  OtypeInv
&c        If otype<place>(type OR value) == amount
For objects only, counts how many objects of type 'value' are in <place>
Will convert the type names (light is 1, for example)
 
&gDefinitions: 
Room  In the room the mobile is in.  Wear   Worn by the mobile as equipment.
Inv   In the mobile's inventory.     Carry  Worn or in inventory
Here  All of the above
 
&YContinued on: IFCHECKS, IFCHECKS2 
&rSee Also:     MPSTAT RPSTAT OPSTAT MPEDIT RPEDIT OPEDIT TRIGGER MPTRIGGERS
			  RPTRIGGERS OPTRIGGERS MPCOMMANDS RPCOMMANDS OPCOMMANDS VARIABLES
			  AFFECTEDBY (for a list of affect types)&w
~

54 IFCHECKS4~
&GThe following are ifchecks available to port 4000 immortals only:

&Yifcheck           syntax                 usage
&Wisasupressed      if isasupressed($n)    is the target asupressed?
ismorphed         if ismorphed($n)       Is the target morphed? (not in use)
isnuisance        if isnuisance($n)      Is the target nuisanced?
ishelled          if ishelled($n)        Is the target currently helled?
ismulti           if ismulti($n) (value) Is the target multying?
waitstate         if waitstate($n) (val) Is the target in waitstate?
 
&YAdditional help on each of these subjects is available through
'IFCHECK (IFCHECK NAME)'.

&WSee Also: IMMPROGS
~

1 IGNORE~
Syntax:  ignore
Syntax:  ignore <character>
Syntax:  ignore reply/none
 
Ignore allows you to ignore other characters in the Realms.  All tells,
says, socials, and emotes from these characters will be blocked (gagged
out).  You will still see their communications through public channels,
however.
 
Simply typing ignore will give you a list of all the characters you are
currently ignoring.
 
Ignore <character> allows you to add or remove a character from your list
of ignored players.  If the name is already on the list it will be removed.
If the name is not on the list it will be added.  Note that only the names
of actual characters will be accepted and that it is not necessary for
them to be logged on at the time.
 
Ignore reply will cause you to ignore the last person to send you a tell.
This can be used to prevent invisible people from spamming you.
 
Ignore none will set you to ignoring no one.
 
~

1 'ILL FORTUNE'~
Syntax: c 'ill fortune' <victim>
 
Ill Fortune reduces the victim's luck by three.
~

51 IMM~
This immortal list of rules and regulations is currently under construction.
 
The helpfiles that are available are:
 
'help immrules'
'help imm invis'          'help imm echo'          'help imm recho'
'help imm auth'           'help imm forceclose'    'help imm force'
'help imm snoop'          'help imm freeze'        'help imm bodybag'
 
'help immortal'           'help creator'           'help savior'
'help demi god'           'help lesser god'
~

51 'IMM BODYBAG' 'IMM CR'~
Associated help files: Bodybag && CR
 
- You are never required to do a CR for a mortal.
- If you do perform an Immortal CR, you are required to take at least one
  item as charge, this item should be one of the best items the player has.
  ** The only exceptions are a CR for a person under level 10 or if you are
  ** running a quest, and the player died in that quest or you have the
  ** approval from a Council of Elders member.  These qualify for a free CR.
- You may never give free CRs to your friends or for your own mortals.
- You may choose more then one item or gold for a CR, but _must_ inform the
  player of your intent prior to bodybagging them.
- You are never allowed to do a cr for a deadly character.
- Corpses should be at least "crawling with vermin" prior to receiving an
  Immortal CR, i.e. a corpse timer of less then 20.

You may never CR for your own mortal unless _all_ the following apply:
   - There is no other Immortal online to do it for you.
   - You have tried to get your corpse on your own, with mortal assistance.
   - Your corpse is in "the last stages of decay", meaning you cannot wait
	 any longer, i.e. a corpse timer of less than 8.

If you perform a CR for one of your -own- mortal characters, you must:
   - Take at least one of the better/best items from your mortal, and eat it.
   - Post a note on 1220 stating that you cr'd your own mortal's corpse.
 
***** See 'help timer' to get a list of corpse decay timer and messages.
~

51 'IMM DAILY' IMMDAILY~
.
					  &YLook, More Immspam!
 
	 &WHey! No one's posted anything except Jade. What's with you people.
I want dirt, trash, filth, and good clean fun. Gimme something to work
with. I'm dying here.
 
	 Well, in any case, you can read and enjoy Jade's version of the
70's Queen hit, Bohemian Rhapsody. If you don't read it, she'll
mess you up, bigtime.
 
More on &YHelp Imm Daily2
~

51 'IMM DAILY2' IMMDAILY2~
&CMudder's Rhapsody &W(Sung to the tune of Bohemian Rhapsody, of course)
 
Is this the RealLife (tm), or a virtual reality
Caught in a MUD slide, no escape from this fantasy
Open your eyes, look up at your CRT
I'm just a MUDder, I need no topology 
Because I'm easy come easy go
'cause I've got a macro 
Any way the link goes, doesn't really matter to me... to me
 
Wizard, I just killed a girl
She had TinySex with me, then I found out she's a he
;And Wizard, he was logging it
And now he's posted it on rec.games.mud
;Wizard, ooh ooh ooh oooh,
Didn't mean to make you @toad me
If I'm not logged on this time tomorrow
@recycle me, @recycle me, and @recycle all my objects
 
Too late, my account's run out
Gonna kick me off the net, I have no client to connect
Goodbye, everybody, I've got to go
Gotta leave you on this MUD and face RealLife(tm)
Wizard, ooh ooh ooh ooh
I don't want to go;I sometimes wish I'd never logged on at all
 
Continued on &YHelp Daily3
~

51 'IMM DAILY3' IMMDAILY3~
I see a silly @description of a man
Gotta MUD!  Gotta MUD!  Will you do the BONK-OIF thing
Whisper-bombs and killing, very very thrilling, OIF!
;TinyTalk, FooTalk, TinyFugue, TinyWar
TinyWar does not exist.
Where did it go-o-o-o?
I'm just a MUDder, I need no topology
He's just a MUDder sitting at a CRT
Spare his eyes from radioactivity
Easy come, easy go, 'cause I've got a macro
Harakiem, No!
We will not let you go
Let it go!
Harakiem, No!
We will not let you go
Let it go!
Never, never, never let it go, go, go
No, no, no, no, no, no, no!
It is sinking, it is sinking, it is sinking, let it go.
Realms is sinking beneath the sea, the sea, the sea!
 
So you think you can BONK me and slap me HIGH5.
So you think you can spoof me, pretend you are I.
Oh, mucker.  Don't do this to me mucker.
Just gotta log out, just gotta get off of this port.
 
Nothing really matters
Anyone can see
Nothing really matters to me.
Any way the link goes.
 
&P Jade
~

51 'IMM DAILY4' IMMDAILY4~
Subject: Did you know that ...

&W* &GA cat has 32 muscles in each ear.
&W* &GA dime has 118 ridges around the edge.
&W* &GA dragonfly has a life span of 24 hours.
&W* &GA duck's quack doesn't echo, and no one knows why.
&W* &GA goldfish has a memory span of three seconds.
&W* &GA shark is the only fish that can blink with both eyes.
&W* &GAl Capone's business card said he was a used furniture dealer.
&W* &GAll 50 states are listed across the top of the Lincoln Memorial on 
  the back of the $5 bill.
&W* &GAll of the clocks in the movie "Pulp Fiction" are stuck on 4:20.
&W* &GAll porcupines float in water.
&W* &GAlmonds are a member of the peach family.
&W* &GAn animal epidemic is called an epizootic.
&W* &GAn ostrich's eye is bigger than its brain.
&W* &GBlueberry Jelly Bellies were created especially for Ronald Reagan.
&W* &GCamel's milk does not curdle.
&W* &GCats have over one hundred vocal sounds, while dogs only have about 
  ten.
&W* &GCats urine glows under a black light.
&W* &GDid you know that there are coffee flavored PEZ?

Continued on immdaily5
~

51 'IMM DAILY5' IMMDAILY5~
&W* &G"Dreamt" is the only English word that ends in the letters "mt."
&W* &GEmus and kangaroos cannot walk backwards, and are on the Australian 
  coat of arms for that reason.
&W* &GFacetious and abstemious contain all the vowels in the correct 
  order, as does arsenious, meaning "containing arsenic."
&W* &GHang On Snoopy is the official rock song of Ohio.
&W* &GIf you bring a raccoon's head to the Henniker, New Hampshire town 
  hall, you are entitled to receive $.10 from the town.
&W* &GIn England, the Speaker of the House is not allowed to speak.
&W* &GIn every episode of Seinfeld there is a Superman somewhere.
&W* &GIn most advertisements, including newspapers, the time displayed on 
  a watch is 10:10.
&W* &GIn the 1940s, the FCC assigned television's Channel 1 to mobile 
  services (two-way radios in taxicabs, for instance) but did not re-number 
  the other channel assignments. That is why your TV set has channels 2 and 
  up, but no channel 1.
&W* &GIt's impossible to sneeze with your eyes open. 
&W* &GJohn Lennon's first girlfriend was named Thelma Pickles.
&W* &GLorne Greene had one of his nipples bitten off by an alligator while 
  he was host of "Lorne Greene's Wild Kingdom."
 
Continued on immdaily6
~

51 'IMM DAILY6' IMMDAILY6~
&W* &GLos Angeles's full name is "El Pueblo de Nuestra Senora la Reina de 
  Los Angeles de Porciuncula"--and can be abbreviated to 3.63% of its size: 
  "L.A."  
&W* &GMaine is the only state whose name is just one syllable.
&W* &GMr. Rogers is an ordained minister.
&W* &GMurphy's Oil Soap is the chemical most commonly used to clean 
  elephants.
&W* &GNo word in the English language rhymes with month, orange, silver or 
  purple.
&W* &GNon-dairy creamer is flammable.
&W* &GOn a Canadian two dollar bill, the flag flying over the Parliament 
  Building is an American flag.
&W* &GOn an American one-dollar bill, there is an owl in the upper left-
  hand corner of the "1" encased in the "shield" and a spider hidden in the 
  front upper right-hand corner.
&W* &GPamela Anderson Lee is Canada's Centennial Baby, being the first 
  baby born on the centennial anniversary of Canada's independence.
&W* &GPeanuts are one of the ingredients of dynamite.
&W* &GPinocchio is Italian for "pine head."
&W* &GRubber bands last longer when refrigerated.
&W* &G"Stewardesses" is the longest word that is typed with only the left 
  hand.

Continued on immdaily7
~

51 'IMM DAILY7' IMMDAILY7~
&W* &GTexas is also the only state that is allowed to fly its state flag 
  at the same height as the U.S. flag.
&W* &GThe "save" icon on Microsoft Word shows a floppy disk, with the 
  shutter on backwards.
&W* &GThe airplane Buddy Holly died in was the "American Pie." (Thus the 
  name of the Don McLean song.)
&W* &GThe average person falls asleep in seven minutes.
&W* &GThe average person's left hand does 56% of the typing.
&W* &GThe characters Bert and Ernie on Sesame Street were named after Bert 
  the cop and Ernie the taxi driver in Frank Capra's "Its A Wonderful Life."
&W* &GThe combination "ough" can be pronounced in nine different ways. The 
  following sentence contains them all: "A rough-coated, dough-faced, 
  thoughtful ploughman strode through the streets of Scarborough; after 
  falling into a slough, he coughed and hiccoughed."
&W* &GThe giant squid has the largest eyes in the world.
&W* &GThe longest one-syllable word in the English language is 
  "screeched."
&W* &GThe Main Library at Indiana University sinks over an inch every year 
  because when it was built, engineers failed to take into account the 
  weight of all the books that would occupy the building
&W* &GThe microwave was invented after a researcher walked by a radar tube 
  and a chocolate bar melted in his pocket.

Continued on immdaily8
~

51 'IMM DAILY8' IMMDAILY8~
&W* &GThe name for Oz in the "Wizard of Oz" was thought up when the 
  creator, Frank Baum, looked at his filing cabinet and saw A-N, and O-Z, 
  hence "Oz."
&W* &GThe national anthem of Greece has 158 verses. No one in Greece has 
  memorized all 158 verses.
&W* &GThe only 15 letter word that can be spelled without repeating a 
  letter is uncopyrightable.
&W* &GThe only nation who's name begins with an "A", but doesn't end in an 
  "A" is Afghanistan.
&W* &GThe only real person to be a Pez head was Betsy Ross.
&W* &GThe reason firehouses have circular stairways is from the days of 
  yore when the engines were pulled by horses. The horses were stabled on 
  the ground floor and figured out how to walk up straight staircases.
&W* &GThe United States has never lost a war in which mules were used.
&W* &GThe verb "cleave" is the only English word with two synonyms which 
  are antonyms of each other: adhere and separate.
&W* &GThe word "Checkmate" in chess comes from the Persian phrase "Shah 
  Mat," which means "the king is dead".
&W* &GThere are more chickens than people in the world.
&W* &GThere are only four words in the English language which end in "- 
  dous":  tremendous, horrendous, stupendous, and hazardous.
&W* &GThere are 293 ways to make change for a dollar.

Continued on immdaily9
~

51 'IMM DAILY9' IMMDAILY9~
&W* &GThere are 336 dimples on a regulation golf ball.
&W* &GTigers have stripped skin, not just stripped fur.
&W* &GTwo-thirds of the world's eggplant is grown in New Jersey.
&W* &GWhen opossums are playing 'possum, they are not "playing." They 
  actually pass out from sheer terror.
&W* &GWhen the University of Nebraska Cornhuskers play football at home, 
  the stadium becomes the state's third largest city.
&W* &GWho's that playing the piano on the "Mad About You" theme? Paul  
  Reiser himself.
&W* &GWinston Churchill was born in a ladies' room during a dance.

~

51 'IMM ECHO'~
Associated help files: echo

Echos should generally be medieval in nature, and their use confined
primarily to administrative functions, weddings, quest, role-playing
and the like.  Role-playing should be used rarely, however.
 
Though there is some leeway within these guidelines, some practices
are frowned upon and should be avoided.  Do not use your name in an echo
unless necessary.  Avoid comical phrases or 'cutsey' terms.  Do not use
:) or other symbols/punctuations at all.
 
If any of the above are necessary, there exist a sufficient number of
public channels via which the task can be accomplished while still
reaching a wide audience -  without forcing it onto the screen of
every character in the game.
~

51 'IMM EQUIP~
.                       Equipment Usage
					   ---------------
**  All equipment worn by an immortal must be made from vnum 1222.
**  No stats or affects may be added to vnum 1222.
**  If you need to test your mobs, you may make a weapon with the
	stats needed to test your mob.
~

51 'IMM FORCE'~
Associated help files: force
 
This command allows you to make someone execute a command.  Forcing
someone can often be looked at as high-handed.  Most common use of
force is to make someone do something as you are snooping, to check
problems or bugs, without waiting having to tell the character exactly
what to type.  It is always best to ask the person before you begin
forcing them.  You may also use force to make a player quit, drop,
or read something when you are punishing them.  
 
Force all <command> can be done, but causes excessive lag because it
causes every player lower than you to attempt the command.  This should
be reserved to "force all save" in times of numerous crashes.  You should
never force all to use a channel.
~

51 'IMM FORCECLOSE'~
Associated help files: forceclose
 
This command will force a certain descriptor to close.  To use, you
must first look for the number listed under Desc on the user list.
Then type: forceclose <Desc #>
 
You can use forceclose to knock a trouble player offline, as well as
knock off someone who it stuck online.
~

51 'IMM FREEZE'~
Associated help files: help freeze
 
Syntax: deny         <character>
Syntax: disconnect   <character>
Syntax: freeze       <character>
 
DENY denies access to a particular player and throws them out of the game.  
Deny is permanent (persists across reboots) and is not undoable from within
the game.  Only someone with access to the player files directory may repeal
a DENY by editing the appropriate player file.
 
DISCONNECT <character> immediately disconnects that character.
 
FREEZE <character> is a toggle which prevents a character from issuing any
commands at all.
~

51 'IMM GOTO'~
Syntax: goto <name>

This is a reminder to use common courtesy when using such commands
as goto.   Not only is it considered inappropriate to goto higher
level immortals without asking permission, the same could be said
when wanting to visit any player on the mud.  A quick tell requesting
to visit would suffice.  For those of you who frequent headquarters,
either Clans, Guilds or Orders, requesting permission, though not
necessary, is certainly welcome.  Note that if a mortal requests that
you leave their hq, and you have no pressing business, you are obligated
to abide by their wishes.  (This does not apply to high ranking immortals.)
 
~

51 'IMM INVIS'~
Associated help files: invis and wizinvis
 
Those Immortals between levels 51 and 54 may invis to level 51 when they
are running or preparing a quest, involved in a building projects that
requires you to be uninterrupted, or you are actively watching a mortal.
At all other times, the Immortal should be visible to all levels of mortals
and Immortals.  Wizinvis is to be used as a tool to assist you in your duties
as an Immortal, it is not a means to spy on others or hide.
 
Immortals of level 55 and above may use wizinvis beyond 51 to work on
projects or monitor another person.  It is mandatory to be visible to all
other immortals whenever reasonably able to do so.  Keep the use of
"Someone" to a minimum on channels.  Exceptions are when you need to answer
a question, make a comment, or pass on some information, but are too busy
to become visible.
~

51 'IMM RECHO'~
Associated help files: recho
 
Rechos should generally be medieval in nature, and their use confined
primarily to administrative functions, weddings, quest, role-playing
and the like.  Recho can be seen by all players in one room.  Do not 
use recho to "scare" mortals.  Recho is seen on logs, be cautious in
using them in social/private situations.
~

51 'IMM SNOOP'~
Associated help files: snoop

The snoop command is a very valuable tool, when used appropriately.  Snoop
not only allows you to watch another person, but to see the world through
their eyes, helping to track down problems the person may be experiencing.
The reasons for snooping are too varied to mention here, but the reasons
NOT to snoop are easily listed.
 
-- Do not snoop people being intimate. <i.e. Mudsex, voyeurism, etc...>
-- Do not repeat information learned in snoop casually, especially to mortals
-- Only snoop a person talking to a higher level Immortal with the higher
   Immortals "Express Permission".
-- If a higher level Immortal begins communication with someone you are
   snooping, inform that higher Immortal immediately of the snoop.
-- If a higher level Immortals requests you to stop snooping, do so quickly.
-- "Spot check" snooping of lower level Immortals is part of being a higher
   level immortal.  All Immortals may be snooped at any time, for any reason.
-- Do not snoop for the purpose of gaining information for personal reasons.
-- Any incidental references learned in snoop should be disregarded.
	** For example, you learn someone is having a mud affair from snoop.
	** This information has nothing to do with the reason you are snooping
	** and should not affect your judgement.  It should not be passed on.
-- Being an Immortal is a privilege and a job.  Snoop is a tool to assist
   you do your job properly.  Snoop is neither a toy nor a right.
~

51 IMMAUTH AUTH AUTHORIZE~
Associated help file: Authorize
 
Syntax: authorize <name> <yes|name|no/deny>
 
Authorize is used to allow a new player to start his or her character.
Names must not be offensive or similar to an existing immortal (within a
letter or two).  Names like "Braveheart" are acceptable even though they
are not normally considered "proper" names.  Players are allowed to use
names of mobs ... but not extremely popular mobs.
Use your best judgement when authorizing a name.
 
You may use the abbreviation "a" for authorize and the abbreviation "n" 
for name.  In addition, you only need to type as much of a name to uniquely
identify it.
 
So, for example, if Goixetoika is awaiting authorization,

a                shows pending authorizations
a g              allows the name
a g n            requires player to change name
a g no           denies name and forces player off (offensive name)
~

55 IMMHOST~
Syntax:  immhost add    <name> <host>
Syntax:  immhost delete <name> <host>
Syntax:  immhost save
Syntax:  immhost
This command is for setting the hosts allowed for immortals that are added
with this command.  Wildcards are allowed (*), so *edu, would allow any domain
from edu connect and 127*, would allow any local domain to connect.
IMMHOST without arguments will show a list of names and what domains they are
allowed to connect from.
To delete a command you need to provide the name and the host, this allows
for multiple hosts for a certain name.
This file won't be saved until the immhost save command is issued.
~

51 IMMLAW2 IMMLAWS2 IMMRULES2~
. -- Continued from immlaws1
6) Auths
* Names should sound medieval and not be offensive to a sex, religion, race etc
 
7) Helling
* Do not abuse.  Talk to the offender and use as necessary.
* Accessive abuse of mortal rules.
* Comment
 
8) Snooping
* Not for personal reason, and any personal information received is private
* Snoop only for the time needed to accomplish objective.
 
9) Disputes Between Immortals
* Handle them privately and not on public channels.
 
10) DO NOT share your password/account with any other.
 
   See also, "Immlaws1, hell, snoop, password, bodybag," and
the new immortal guidebook as well as board 1214 for more info.
~

51 IMMLAWS IMMLAW IMMLAWS1 IMMRULES IMMRULES1~
1) Equipment
* All eq must be made from vnum 1222.
* No stats or affects can be added to the item.
* No immortal should possess Glory or over 50000 Gold

2) Invis
* Levels 54 and under should be visible at all times.
 
3) Corpse Retrievals
* Mortals should attempt to get mortal help first
* Must eat a minimum of one item if the player is above level 10
 
4) Silencing
* Insulting of an individual which is witnessed by an Immortal.
* Usage of foul language beyond minor offenses (under imms discretion)
* Prolonged discussion of sexual acts requires one public warning that 
  further communication will result in silencing.
 
5) Giving Mortal aid/information
* Not Tolerated
* You can NOT: give eq; info on areas, mobs, and items; spelling; transing
  to areas; act as spy; give out mortal stats.
 
 See also help IMMLAWS2 
~

54 IMMPROGS~
These mpcommands are restricted knowledge to port 4000 immortals.
 
&Ympcommand          syntax                  basic description
&Wmpapply/mpapplyb   mpapply 0.$n            For use in pre-auth.
mpbodybag          mpbodybag 0.$n          Not currently in use.
mpfillin           mpfillin <dir>          Closes off exits
mplog              mplog <text>            Logs mob activity
mposet/mpmset      mp$set <field> <value>  Osets and Msets objs mobs.
mpnuisance         mpnuisance $n <val>...  Sets player to nuisance (in use?)
mpscatter          mpscatter $n vnum vnum  Do not use.
mpstrew            unknown                 unknown
mppeace            mppeace <victim>        Performs an immortal peace.
mpasurpess         mpasupress $n val       Not in use.
mpdelay            mpdelay <victim><time>  Delays a victim for * rounds
 
&WNOTE: &CIf flagged "not in use" or "do not use", then &YDON'T USE &W:P
&WFor more on individual mpcommands, type "Help (mpcommandname)".
 
&YSee also: &WIFCHECKS4
~

51 IMMPROMPT~
In addition to the normal prompt tokens, the following are available for
immortal use only:
 
  %r  - 'vnum' of current room           %i  - '(Invis Lv) ' wizinvis 
  %R  - '<#vnum> ' of current room       %I  - 'Lv' wizinvis
		(with config +vnum set) 
 
See also PROMPT
~

51 IMMQUEST~
This help file will contain the current status as well as the expectations of
what is to be followed of Immortals questing.
  Currently imms &YARE&G allowed to quest.
 
&WRules for imm's questing:&G
 
 &W*&G It is expected that no Imm will be multi-playing their imm while they
   are questing.  This includes multi-playing while invis/afk/etc.
 
 &W*&G It is expected that no imm will log off their imm character in order to
   quest.  We don't want the situation arising where everyone logs off and the
   QC imm is stranded running the quest and fielding everything else.
 
 &W*&G You may &CNOT&G quest if you log in with your imm at any time during
   the quest.
 
&WSo when can you quest?&G
 
 &W*&G It's somewhat limiting, but you can quest &CIF&G you happen to be 
   morting when a quest begins, &COR&G if you are given the explicit
   permission of the imm running the quest. &CPlease do not pressure them.&G
 
 
Immortals can apply once a month for a rename scroll or twenty glory.
Phalanx, on behalf of the Quest Council, and Elcid on behalf of the
Symposium are responsible for the distribution of the monthly 'payments.'
To apply for your monthly rename or share of glory, post a note on 1203
stating the month, the form in which you'd like to receive your payment
(scroll/glory), and the mortal's name that will be receiving the payment.
 
~

51 IMMTALK :~
Syntax: immtalk <message>

IMMTALK sends a message to all immortals.  : is a synonym for IMMTALK.
~

50 IMMTALK :~
Syntax: immtalk <message>

IMMTALK sends a message to all avatars.  : is a synonym for IMMTALK.
~

51 IMOTD~
This is where you may post messages to imms only
 
 
To edit it.. type hedit imotd
 
then hset save
~

57 IMOTS~
~

1 'IN THE AIR'~
Recommended level range: 5 - 10

The skies above Darkhaven are unpopulated save for the amusing
faerie dragons. Wild rumors say that a portal to the Astral Plane
exists at the end of a rainbow high above the city.
~

1 INCONNU~
The ancient Inconnu strive endlessly to attain Golconda, the personal
perfection of knowledge, ability, and control over the bestial self.
The mastery of one aspect serves only to mark a beginning anew of the
trek for perfection down new paths.  Largely indifferent to joy or
sorrow, pleasure or pain, and choosing to live in relative seclusion
from the world they often despise, the Inconnu care little for their
lesser brethren yet harbor no inherent desire to bring harm.  Slow to
anger, but formidable when aroused, their elder status and power
affords them an uncommon respect.
 
~

50 INDUCT OUTCAST~
Syntax:  induct  <player>
		 outcast <player>
 
Induct and outcast are clan commands.  The leader and number 1 of the 
clan receive the induct commands, while the deity, leader, number 1 and 
number 2 all receive outcast.  Induct will bring a new player into the 
clan, while outcast will remove them.
~

1 INFORMATION~
SLIST   - a command that lists all your spells and skills and the level at
		  which you may practice them.
AREAS   - Typing AREAS will get you a list of all areas.  You may get more
		  information on each area by typing HELP <full area name>.
WIZLIST - This is a list of all Immortals of the game.
COMMANDS- This is a list of all commands available to you.
SOCIALS - This is a list of all socials available. 
TIME    - This will tell you the current times inside the Realms, the time
		  the Realms was last rebooted, and the current time in Toronto.
WHERE   - Where will give you a list of other players in the same area.
SAVE    - After level two, typing SAVE will save your process.
QUIT    - If you want to leave the game, type QUIT.
WHO     - A list of other players visible to you in the Realms.
TITLE   - Once you reach level five, you may make your own title.
PASSWORD- Your password can be changed with PASSWORD <new> <new>
DESC    - You may set up a personal description, type DESC to edit.
 
This is only a brief list of commands that will help you do things with your
character.  More detailed information on each command can be found in the
HELP files.  You may also read sections 1 and 20 in your Adventurer's Guide
book to learn more about these commands.
~

1 INFRAVISION INFRARED~
Syntax:  c infravision
Syntax:  c infravision <character>
 
This spell enables the character to detect the heat signatures of other
players and creatures in the room with them.  This spell will also allow
you to find items in corpses, containers, etc. but will not allow you to
view the actual contents.
 
You must have a light source to actually see items, room descriptions,
the contents of corpses or containers, room exits and the like inside
a darkened area.
 
Infravision is not the same as "night vision".
~

0 'INNER WARMTH' INNER WARMTH~
This spell makes you more resistant to all forms of coldness.
~

59 INSTALLAREA~
Syntax: installarea <area filename> <full area name/title>

Installs a prototype area into the mud as a non-prototype area.
The filename can be fixed with aset, (don't forget to foldarea the new name.)

Currently the builder should quit and have his/her vnums cleared manually.
(This should be fixed soon).
~

1 INT INTELLIGENCE~
Intelligence (INT in your 'score') represents your character's mental
capacity.  Among other things, it affects:
 
 - heavily influences the amount of mana a character gains at level
 
 - affects the amount of mana regenerated or recovered at each tick
   if a character is resting or sleeping
 
 - the rate at which a character learns a new skill or spell
 
 - the percentage rate at which a character practices a new language
 
Intelligence is an important factor in learning between combatants.  If
a character fights a creature several times, the more intelligent of the
two opponents will gain an advantage over time...
 
Intelligence is the prime attribute of the mage.
 
~

0 INVIS 'MASS INVIS'~
Syntax: cast invis <character>
Syntax: cast 'mass invis'

The INVIS spell makes the target character invisible.  Invisible characters
will become visible when they attack.

The MASS INVIS spell makes all characters in the caster's group invisible,
including the caster.
~

65 IPCOMPARE~
Syntax: ipcompare <name>
		ipcompare <site>
		ipcompare <name or site> <room|area|world> <#>
 
This takes * as a wild card.
Ipcompare will compare online users to search for multiplayers. A positive
match using ipcompare does not always mean it is a multiplayer..but shows
that there are more than one user from a site on simultaneously.
Ipcompare <field> <#> will limit the output to x number of lines based on #.
* may be used as a wild card, for example ipcompare 207.18.3.* will return
matches from any that begin with the ip prior to the asterisk.
Ipcompare <field> <room|area|world> will limit the search based on that
criteria.  The room|area|world limitation will be judged on the room that
the immortal issued the command in.  So if you are in a different area
than the victim, it will show only players matching the site in the area
you are in.
~

53 ITEMVALUES~
In these values, 'sn' is a spell number;  a negative value means 'no spell'.
Item Type |V0         |V1          |V2         |V3         |V4       |V5
----------|-----------|------------|-----------|-----------|---------|-------
armor     |current AC |original AC |           |           |         |
container |capacity   |flags       |key vnum   |condition  |         |
drinkcon  |capacity   |quantity    |liquid #   |poison?    |         |
food      |food value |(condition) |           |poison?    |         |
herb      |           |charges     |herb #     |           |         |
key       |(lock #)   |            |           |           |         |
keyring   |capacity   |            |           |           |         |
lever     |leverflags |vnum/sn     |vnum       |vnum/value |         |
light     |           |            |hours left |           |         |
money     |# of coins |coin type   |           |           |         |
pill      |spell level|sn 1        |sn 2       |sn 3       |food val |
pipe      |capacity   |# of draws  |herb (sn)  |flags **   |         |
potion    |spell level|sn 1        |sn 2       |sn 3       |         |
projectile|           |            |           |           |         |
salve     |spell level|charges     |max charges|delay      |sn       |sn
scroll    |spell level|sn 1        |sn 2       |sn3        |         |
staff     |spell level|max charges |charges    |sn         |         |
switch    |leverflags |vnum/sn     |vnum       |vnum/value |         |
trap      |charges    |type        |level      |flags      |         |
treasure  |(type)     |(condition) |           |           |         |
wand      |level      |max charges |charges    |sn         |         |
weapon    |condition  |num dice    |size dice  |weapontype |         |
missiles  |condition  |            |dam bonus  |weapontype |range    |
quiver    |capacity   |flags       |key vnum   |condition  |         |

** pipe flags : see help pipeflag
See OBJECTTYPES, WEAPONTYPES, SLOOKUP, LIQUIDTYPES, LEVERFLAGS, OSET,
ARMORCLASS, WEAPONCONDITION and MISSILES.
~

1 JAB~
Syntax:  jab
 
Jab is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 JADE~
.&Y
		 ::;;;;;;;;;;;;;;;;:::.
		::;;;;;;;;;;;;;;:::::,;;.
	  ,::;;;;;;;;;;;;;::::,;;;;;;::,
	 ::;;;;;;;;;;;;;;;;;;;;;;;;;;;,;;::,
   ,::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;::,
  ,::;;;;;;;;;;;;;;;;;;;;;::,&wvvvvvvvvv,&Y;;;::,
:,;;;;;;;;;;;;;;;;;;;;::,&wvvnnnnnnnnnnnnvv,&Y;;::.
,;;;;;;;;;;;;;;;;;::,&wvv;;;;vvnnv,vnnnvv;;;vv,&Y::
;;;;;;;;;;;;;;;;::,&wvvvv''';;;vvnv,vv,v;;vvvvv,'
;;;;;;;;;;;;;;::##'vvv,&ga@@@@a&w;;vv,v,v;a&g@@@&Yavv,
;;;;;;;;;;;;::'###'vv,a&g@@@@@@@,&wvvnnv&g,@@@@@@&Y;v;
;;;;;;;;;::'###'vvvv&g,@@@' `@,&wvvnnvv' &g`@@&Y,;
;;;;;;;;;::'####&w'vvn;;vvvvvv;;nnnnnnnnmv;;vv,&Y
;;;;;;;::'######&w'vvnnnn;;;;nnvmnnnnnnnnnm,%vv,&Y     ^X&B*&Y^x
;;;;;::',######&w'vvnnnnnnnnnv;mnnnnnnnnnnnnm,v'&Y
;;;;'::,####%##&w'vvnnnnnnnn;nv;mnnnnnnnnnnnn,&Y
;;'::::,###%###&w'vvnnnnnn;nnnnvvv;mnnnnnnnnm&Y       &B^X* &Y^x
;':::::,###%###&w'vvnnnn;v nnnnnnvvv;mmmmmmm'&Y
;':::::,##%####&w'vvnn;vvnn `nnnnnnnvvvvvv&Y
;;;;;:::,######&w'vvn;vvnnnn&x.,,,,.   &w'vv'&Y#
::;;;;;;,#####&w'v;vvn;vnnnn&x;;;;;;; &w,v'&Y###
::::;;;;,#####&w'v%%;vvnnnnnnnnnnnnvv,&Y##%#  Jade has a nice
,::::;;;,#####&w'vvv%%%%%;vvvnnnnnnnvv&Y;###  apple for you.
;,::::;;,#####&w'vvvvvv%%%;vvvvvvvvvv'&Y###%           
;,::::;;,##%###&w'vvvvvvvv%%%%%%%';;;&Y####%       &o\&Y
;;,::::;;#######;;;;;;,::::;;;::,:,#####  &r,sSSSSssSSSSsSSss
&Y;,::::;###;###;;,:::::;;;;;;;,::,####' &r SSSSS@SS.v,vvssSSsss
&Y;;,::::##;;###;;;;;;;;;;;;;,::::,####  &rSSSSSS@@S;vvvvssSsssss
&Y;;;,:::##::###;;;;;;;;:,::::::::,#### &r SSSSSS@@S;vvvsssSssss
&Y;;;;;,::#:;###;;;;;;;;;;;;;;;:::,####&r  sssss;vvvvvvssSSSSSSs
~

58 KHISTORY~
Syntax: khistory <player>
 
This command will display a list of mobs recently killed by the
character in question.
This is an imm only command.
~

1 KICK~
Syntax:  kick
 
Kick is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
 
~

1 KILL MURDER~
KILL MURDER
Syntax:  kill     <character>
Syntax:  murder   <character>   -- must be level 5 or higher to murder
 
KILL starts a fight, and, hopefully, kills something.
 
MURDER is used to initiate attacks on other player characters (WARNING:
see 'laws pkill' for restrictions on attacking other players).  You must
be level 5 or higher to be able to use the murder command.
 
~

2 KILLER KILLERFLAG KILLERFLAGS~
&WThe mud will automatically assign you a &PKiller &Wflag if you cause the
death of another player. Only situations which involve peacefuls being
killed by mortals, or &RDeadlies &Wkilling fellow clanmembers will result
in the assignment of this flag. You will receive a &PKiller &Wflag if:
 
  1. You caused the DEATH of another player, regardless of who attacked first.
  To help prevent yourself from acquiring a &PKiller &Wflag after being
  attacked, set yourself to &YConfig +Nice &W(See &CHelp Config &Wfor info).
 
  2. You were the Master of a mobile which killed another player while
  under the influence of your charm. PLEASE NOTE that you will receive a
  &PKiller &Wflag even if the player that died attacked the charmed
  mobile without the Master's permission. Charmers and Pet Owners are held
  responsible for the actions of their Pets/Charmies. (See &CHelp Charm
  &Wand &CHelp Pets &Wfor more info on these topics).

  3. You are a &RDeadly &Wplayer and caused the death of a fellow Clanmember.
 
&WDarkhaven Guards, shopkeepers and special function mobs now respond
differently to illegal flags. You may find yourself barred from making
puchases, placed before Judge Kendra for a hearing, sentenced to
jail, or SLAYED by Harakiem.  You may apply to Judge Kendra in person to
seek removal of the flag. She is located one west of the Main Lobby in 
the Townhall. (See &CHelp TOwnhall &Wfor info)
Kendra in person if you wish. Her Honour is located one west of the
Main Lobby in Townhall (See &CHelp Townhall &Wfor info).
~

1 KILLSTEAL KILLSTEALING~
Don't do it.
Kill stealing occurs when a player attacks a mob that is already being
fought. This is both annoying and illegal. If someone should do this to
you please inform them of the rules. If they continue, seek an immortal
but do not take the law into your own hands.
~

1 'KINDRED STRENGTH'~
Syntax:  cast kindred <character>
This spell increases the strength of the target character.
~

0 KING 'KING CASTLE' 'KINGS CASTLE' 'THE KING CASTLE' 'THE KINGS CASTLE'~
Recommended level range: 25 - 40
 
The castle of Good King Welmar was built ages ago near the city of Thalos. 
Upon the city's destruction, it lay empty for many years, many claiming it 
was cursed along with Thalos. However, when our King Welmar united the five 
great cities and thus created hope in the battle against Darkness, he found 
himself without a keep. Risking death, he and his troups crossed through the 
ruins of Thalos, eventually reaching the magnificent, impregnable fortress. 
The castle now stands as a tribute to honor, good and law.
~

1 'KINGDOM OF JUARGAN'~
Recommended level range: 10 - 25

The mighty dwarven Kingdom of Juargan was once a powerful influence
in the battle against Darkness. Sealed within their impregnable city,
any attack against them was scoffed at. However, one day centuries
ago, the great mountain kingdom sealed its gates and refused to
communicate with any of the other races. The reason for their desertion
is still unknown, but many have found hidden entrances into their vast
underground complex.
~

1 KNEE~
Syntax:  knee
 
Knee is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 'KNOCK'~
Syntax:  cast 'knock'  <direction>
 
This spell enables one to unlock doors.
~

0 'KNOW ALIGNMENT'~
Syntax: cast 'know alignment' <character>

This spell reveals the alignment of the target character.
~

1 KONTAUR~
Recommended level range:  25 - 50
 
 
Among the most corrupt of the lands of Despair, is Kontaur, which lies
south of the Old Marsh. Once a lush forest filled with wild vegetation
and beautiful sylvan and elven races, it is now the heart of evil in the
southern lands. The cause of the land's devastation is not completely
known. Sages believe that either Laschte or Vl'arescht opened a gate to
a race of astral travelers known as the Carnifex, which brought legions
of balrogs to Despair long ago. The balrogs waged war against all sentient
races, seeking to destroy at the leisure of their masters. The avatars of
Darkhaven were truly oppressed and fought for their very lives against
this evil army. After years of war, the Carnifex were finally driven across
the Pits of Banishment and into a legendary castle from which they could not
escape. Without their masters' guidance, the balrogs lost their edge and
began losing the war. They retreated to Kontaur, the first realm they had
conquered, and erected a castle. Although there have been many attempts to
destroy the Balrog race, none have succeeded. Many new races have come to
the forests of Kontaur recently, and made the Realms even more perilous.
Foul pixie that were corrupted by Laschte, savage beastmen and, Vl'arescht's
creation, the moblins; allguard the paths to and from the Kontaur castle.
Yet there lies a shining hope in this foul land, for A'enaar lifted her
hand and protected a tribe of forest elves known as the Misinkii. 
 
~

1 'LAND OF THE FIRE NEWTS'~
Recommended level range: 5 - 20

The Land of the Fire Newts lies beneath a portion of Moria known as the
obsidian hills. This strange race is very secretive, attacking all
who intrude upon their home. Due to their reclusiveness, it has never
been known how they came to be or what their true goals are. Also, as they
remain neutral in the battle between Light and Darkness, none have ever
made an attempt to exterminate them.
~

1 LANGUAGES~
Syntax: languages
Syntax: language learn <language name>

Languages alone shows which languages you know, and "language learn 
<name>" will add to your percentage of language knowledge.  To learn a 
language, a scholar who is knowledgable in that tongue must be present.

If someone is speaking in a language, and you know it, you will 
understand what they are saying.  However, to change the language in which 
you are speaking, you must change that manually.  (See help on SPEAK).

See also LANGUAGE , SPEAK
~

1 LASCIVIAS~
.
	&O8888888888888888888888&w:::::::::M&O8888888888888888
	 8888888888888888&w::&O88888&w::::::M&O8888888888888888888
   88888888888888888&w:::&O88888&w:::::M&O888888888888888   8888
  88888888888888888&w:::&O88888&w::::M::;&Bo*M*o;&O888888888    88
 88888888888888888&w:::&O8888&w:::::M:::::::::::&O88888888    8
88888888888888888&w::::&O88&w::::::M:;:::::::::::&O888888888     
888888888888888888&w:::&O8&w::::::M::aAa::::::::M&O8888888888       8
8   8888888888&w::&O88&w::::&O8&w::::M:::::::::::::&O888888888888888 8888
  88888888888&w:::&O8&w:::::::::M::::::::::;::&O88&w:&O88888888888888888
 8888888888888&w:::::::::::M::&r"@@@@@@@"&w::::&O8W8888888888888888
8888888888&w:&O888&w::::::::::M:::::&r"@a@"&w:::::M&O8i888888888888888
88888888&w::::&O88&w:::::::::M&O88&w:::::::::::::M&O88z88888888888888888
8888888&w:::::&O8&w:::::::::M&O88888&w:::::::::MM&O888!888888888888888888
88888&w:::::&O8&w:::::::::M&O8888888&wMAmmmAMVMM&O888*88888888   88888888
888 &wM:::::::::::::::M&O888888888&w:::::::MM&O88888888888888   8888888
8   &wM::::::::::::::M&O88888888888&w::::::MM&O888888888888888    88888
8   &wM:::::::::::::M&O8888888888888&wM:::::mM&O888888888888888    8888
88  &wM::::::::::::M&O8888&w:&O888888888888&w::::m::Mm&O88888 888888   8888
88  &wM::::::::::::&O8888&w:&O88888888888888888&w::::::Mm&O8   88888   888
88  &wM::::::::::&O8888&wM::&O88888&w::&O888888888888&w:::::::Mm&O88888   88
8   &wMM::::::::&O8888&wM:::&O8888&w:::::&O888888888888&w::::::::Mm&O8     4
	8&wM:::::::&O8888&wM:::::&O888&w:::::::&O88&w:::&O8888888&w::::::::Mm&O
   88&wMM:::::&O8888&wM:::::::&O88&w::::::::&O8&w:::::&O888888&w:::M:::::M
~

1 LASOMBRA~
"An excellent decision.  I applaud.  Did you actually manage to reach it all
by yourself?"
 
	 Elegant yet predatory, the Lasombra honestly think of themselves as the
apex of Cainite existence.  Firm believers in Divine Right and the rule of
the superior, they have little patience, though often much pity, for those
Cainites who are (through no fault of their own) inferior.
	 The Lasombra character is a curious mix of noblesse oblige and healthy
contempt.  They actively seek power wherever is may be found, from the halls
of the cloisters to the corridors of palaces, yet they do not seek the titles
and glory that come along with rule.  Instead of chasing command for its own
sake, Lasombra take the reins of power out of a firm belief that no one can
hold them better.  The appearance of power is unimportant; what matters is
that the decisions are being made by those most suited to make them.  Indeed,
most Lasombra prefer the role of kingmaker to the title of king.
	 Hand in hand with this determination to be the final arbiters of all
decisions comes a healthy contempt for those who the Lasombra feel are
inferior to them in mind, body or breeding.  In essence this means the rest
of Cainite society, and while some of the various clans have been accorded a
modicum of respect, there are none the Lasombra will acknowledge as equals.
A Lasombra will work with other Cainites, and even go so far as to consider
members of other clans to be friends, but one will never, ever consider a
member of another clan to be an equal.
	 Unfortunately, there are those Lasombra whose delight in the great game
of politics blinds them to all but the game itself.  Master manipulators,
these Cainites view all of the Realms as but a chessboard that they and their
opponents play upon, the fall of kingdoms being only abstract interest to
them.  It is these Lasombra whom the other clans fear most, and their talents
and tastes have been attributed to the clan as a whole.
~

-1 'LAW ASSIST'~
.
&GA non-deadly may give, sell or trade scrolls, potions and equipment
with a deadly character.
 
A non-deadly character may spy for a deadly character.
 
A non-deadly may _not_ shield, heal, summon, help, hinder, portal or
otherwise assist a deadly character (this includes charm).
 
~

-1 'LAW CHANNELS'~
.
&GSpam (repeating the same message repeatedly or otherwise purposely causing
the screen to scroll), harassment (including sexual) and abusive behavior are
not permitted on any channel (this includes in 'say' or 'tell').  Do not
continue to 'tell' to someone after they have asked you to stop.
 
Profanity is not permitted on any public channel, which is a channel seen by
those other than yourself and the person to whom you are speaking.  If you
use profanity in a private conversation and the other party asks you to stop,
please respect their wishes.  The difference between '****, I'm having a bad
day' and 'what is your ****** problem' should be obvious to everyone.
 
If any level of Immortal asks you to desist on a subject, or to move the
subject to an appropriate channel, do so immediately.  Continuing on a
subject or channel after you are requested to stop may result in your
character losing its access to channels through silencing.  An Immortal's
decision on subject matter and/or channel use should be obeyed.
 
&WWarning:  &GArguing with or flaming immortals on channels _will_ get you
silenced or worse, and this may extend to your other characters as well if
you push the matter.  The Realms provides ample avenue for complaint without
resorting to public baiting and name-calling.
 
~

-1 'LAW CHARM'~
.
&GDo not bring aggressive mobs into or near Darkhaven, as when their charm
wears off (either naturally or by attack) their aggressive nature will
return.  Also do not bring aggressive mobs into areas which are lower in
level than the area from which the mob originally came.  You can use the
'areas' command to check an area's level.  See 'help charm' for more.
 
~

-1 'LAW CHEATING'~
.
&GCheating is a very serious offense and subjects _all_ characters involved
to a slay, purge (loss of all equipment), freeze, balzhur (destruction of
all equipment and public demotion to level 2), deny or even a site ban.
 
What is considered cheating?
 - exploiting (intentionally using) a bug to gain equipment or gold
 - intentionally causing the system to crash
 - intentionally duplicating equipment or gold
 - knowingly accepting illegal equipment (see above) from others
 - attempting to duplicate equipment or gold -- * even if not successful *
 - using or making profit from equipment that was accidentally duplicated
 - using gold that was accidentally duplicated
 
Cheating hurts the game, and every player in the game.  Protect yourself
and report any bugs you find, and inform the Immortals if you have strong
cause to believe someone is engaged in any of the above. 
 
If you find you have accidentally duplicated an item, turn the item over
_immediately_ to an Immortal or drop and sacrifice the item.
 
~

-1 'LAW HARASSMENT'~
.
&GHarassment is giving a person unwanted attention, whether you perceive it
as negative or positive attention.  If a person is made to be uncomfortable
by your attention or comments, you are harassing that person.  If a person
asks you to desist in talking to them or performing socials on them, and
you do not stop, you are harassing that person.  If you act in an intimate
manner to a character, without their permission, you are harassing that
person.
 
No form of harassment is tolerated in the Realms.  We especially frown upon
unwanted comments or actions with a sexual nature or explicit content.  If
you do not have an intimate relationship with the person, whether in real
life or within the Realms, you should refrain from using suggestive actions
and/or comments.
 
If you are caught harassing another player in any way, you can be silenced,
helled, frozen, denied, and/or site banned.  Harassing another player is a
serious violation of the rules and will not be permitted.  If you choose
to harass an immortal, you will simply be deleted.
 
~

-1 'LAW KILLSTEAL'~
Don't do it...
 
Kill stealing occurs when a player attacks a mob that is already being
fought.  This is both highly annoying and illegal.  If someone should do
this to you please inform them of the rules (ask them to read 'laws
killsteal').  If they continue, seek an immortal but do not take the law
into your own hands.
 
~

-1 LAW LAWS~
.
&GThe Realms are governed by a set of laws, most of which are simple common
sense and courtesy, and all of which must be followed to ensure everyone
the opportunity to enjoy the game.  As with any mud, a player's presence
here is a priviledge, not a right, and is something we reserve the right
to deny at any time at our discretion.
 
The Immortals of the Realms are responsible for enforcing these laws, and
their decisions these matters should be abided.  If you feel an Immortal
has treated you unfairly, you may petition directly to a level 56 (God)
or higher or you may petition via a note at the Oracle.
 
The decisions of a God or higher are final.  To see which Immortals are
online and visible, type "who 51" at any time.
 
To read the laws, type "laws <topic>" for any of the following:
&W 
	   |  CHANNELS      |  PKILL     |  STORES  |  HARASSMENT  |
	   |  MULTIPLAYING  |  SHARING   |  STAKE   |  CHARM       |
	   |  OBJECTS       |  CHEATING  |  MURDER  |  ASSIST      |
 
&GFor further explanation, see section 2 of the Adventurer's Guide...
~

-1 'LAW MULTIPLAYING'~
.
&GMulti-playing is permitted within the Realms, with the following rules:
 
 - you may only have &Wone&G character link-live if it is a deadly character
   (if it appears under the "who deadly" section of the who list).  You may
   have more than one character online as long as &Wnone&G of your characters
   are listed under the "who deadly" section of the who list.
 
 - using multiple characters to spam any player or channel via making all
   characters say/tell/chat/avtalk a same message or series of messages
   is highly frowned upon and may earn each character a silence.
 
&WNOTE:&G  Link-dead characters are not considered to be "online."
 
~

-1 'LAW MURDER'~
.
&GPlayer killing is decided the instant you cast any hostile spell or make
any aggressive action against a non-deadly player.  Actually killing the
target means little.  The only form of player killing allowed is between
players whose names appear on "who deadly" section of the who list.  A
battle between non-deadly characters is still illegal even if those who
are involved have agreed to the combat.
 
Being involved in an illegal pkill is a serious violation of law, and can
result in a stay in hell, slay, loss of all equipment, freeze and/or deny
or site ban. 
 
~

-1 'LAW OBJECTS'~
.
&GIf you notice an item on the ground and there is a player in the room with
it, do _not_ pick it up without first getting permission from the person<s>
in the room.  Taking such items may be considered stealing if you do not
first obtain permission from those present.
 
Do not simply take an item to identify it without asking permission.  If
you are asked to drop an item you picked up, do so immediately.
 
Do not take items laying next to a corpse, even if no one is present,
without asking the owner of the corpse if the item(s) belong to them.
 
Do not take items from a mob corpse unless you made the kill yourself or
you have specific permission from the character who made the kill.  This
includes removing gold from a corpse.
 
* &WWarning:&G  It is never wise to leave items or containers unattended and
  expect them to be there when you return.  If there is an item on the
  ground and there is neither a corpse nor a player in the room, the
  object is considered abandoned and free for the taking.
 
~

-1 'LAW PKILL'~
.
&GDeadly Characters are those which appear on the who list under the section
titled "Deadly Characters" (type 'who deadly').  A character must be level
5 _and_ 18 years of age to officially become deadly; if you are a pkill
character who doesn't fill these criteria yet, you will not appear under
'who deadly' and are _not_ yet able to pkill.
 
Deadly characters may &Wnot&G:
 a) multi-play while using a deadly character
 b) be shared
 c) receive help (healing, shielding, portaling, etc.) from non-deadlies
 d) receive Immortal corpse retrievals or reimbursements - no exceptions
 e) attack players more than 5 levels outside their own
	- includes picking up disarmed weapons from someone outside your range
	- includes healing a fighting character outside your range
	- includes looting the corpse of someone outside your level range
 
Deadly characters are allowed to:
 a) pkill another player who appears on the deadly
	list (who deadly) who is within 5 levels of their own.
 b) loot the corpse of the fallen deadly player, provided they were
	the tank or delt the killing blow.
 c) use mobs within or lower than the pkill level range of the victim
 
&WWarning&G:  Going AFK or link-dead in a non-safe area leaves you open to
attack; a deadly is open to attack every second online, link-live or not.
 
~

-1 'LAW SHARING'~
.
&GCharacter sharing (when allowed) is always done at the risk of the players
involved.  Immortals will &Wnot&G recover any character lost to trading or
sharing.  Whoever owns the password owns the character.
 
A character may &Wnot&G be shared if:
 - the character is a deadly character
 - the character holds any leadership position in a Guild or Order
 
~

-1 'LAW SPAM'~
No, we are not talking about a luncheon meat here.  Spam is the repeated use
of a phrase, command, or channel that causes screen scroll for others.  Not
only is spam considered rude, but excessive screen scroll can interfere with
the game play of anyone seeing it (not to mention combat situations).  The
game will also tell you to PUT A LID ON IT and force-quit you after the 20th
repeat of a single command
 
It is also considered spam to use the same phrase over several different
channels.  The use of all-caps can also be considered spam.  Only use
capitals to add emphasis to key words in a sentence.
 
Moving a large number of items into and out of a container in a crowded, 
non-store room is considered spam.  Using multiple characters to chat the
same message at the same time is considered spam.  Making charmed mobs
or pets to cause screen scroll through movement or orders is considered
spam. ANYTHING that causes excessive or irritating screen scroll can be
considered spam.
 
~

-1 'LAW STAKE'~
.
&GThe first player to attack a mob has the rights to the kill.  Others should
not get involved without being requested to do so.  Those receiving aid are 
under no obligation to reward their benefactors.  Monopolization of a mob and
its repops will not be tolerated.
 
Any disputes brought to the attention of an immortal for resolution will be
handled according the the immortal's discretion.  All such decisions are final.
~

-1 'LAW STORES'~
.
&GShopkeepers inside Darkhaven are protected by the laws of the city's Lord,
Duke Luther.  As the gods have pledged their favor to Darkhaven, they have
imbued these shopkeepers with the powers necessary to carry out retribution
against those who defy these laws.  In short, anyone who chooses to attack
a Darkhaven shopkeeper will die brutally.  In addition, they may find
themselves facing the direct wrath of the gods in hell...
 
Those caught stealing from these shopkeepers will be incarcerated by the
guards of the Duke until such time as their release is granted by the gods.
 
A Darkhaven shopkeeper is any mob inside Darkhaven at which you can type
'list'.  If you are given a list of items for sale, or are told to try
back later, it is a shopkeeper.  This also applies to guild shopkeepers
and the blacksmith.
 
~

58 LAWS PKILL~
~

52 LAYERS~
.
&gLayers are currently available on the following wear locations:
 
&GAbout, Arms, Body, Feet, Hands, Legs, Waist.
 
&gLayers are set with a numeric value, or combination of values. The lower the
value, the lower the layer, or thinner the item of clothing/armor is. Valid
numeric values are:
 
&G0, 1, 2, 4, 8, 16, 32, 64, 128.
 
&gOr any combination of the above. A value of zero means no other items came
be layered with this item. Items of clothing can be layered over one another
as long as their layer values do not overlap. ie, if leather armor were set
to a value of 56 (8, 16, and 32), it could not layer with, say, a set of
heavy chain that is set to a value of 96 (32 and 64), as they overlap on the
layer value of 32.
 
It is suggested that only those items that will occupy the highest value 
slots, or a slot of 0, have any special affects added to them. Underclothing
should only have a.c. settings.
 
See also OSET, AFFECTTYPES, WEARFLAGS, OBJECTFLAGS, OBJECTTYPES, ITEMVALUES,
WEAPONTYPES, VARIABLES, ARMORCLASS, LAYERS2, and OMENU.
 
~

52 LAYERS2~
.
&gLayer Bit Vectors 
&G|1              |       |
|2|6|3|1        |       |
|8|4|2|6|8|4|2|1| Layer | Suggested Armor Type                   
+-+-+-+-+-+-+-+-+-------+---------------------------------------------
|0 0 0 0 0 0 0 0|   0   | (Default - Nothing Layers)
|0 0 0 0 0 0 0 1|   1   | silk shirt, light cloth tunic (Lowest Layer)
|0 0 0 0 0 0 1 0|   2   | leather vest, heavy cloth
|0 0 0 0 0 1 0 0|   4   | light chainmail, padded gambeson
|0 0 0 0 0 1 1 0|   6   | padded chainmail
|0 0 0 0 1 0 0 0|   8   | leather jacket, reinforced chainmail
|0 0 0 0 1 1 0 0|  12   | platemail, similarly rigid armor
|0 0 0 1 0 0 0 0|  16   | light cloak, loose robes
|0 0 0 1 1 0 0 0|  24   | heavy fur cloak
|0 0 1 0 0 0 0 0|  32   | loose cloaks, surcoats
|0 1 0 0 0 0 0 0|  64   | capes
|1 0 0 0 0 0 0 0| 128   | magical effects (auras, clouds of dust, etc)
|1 1 1 1 1 1 1 1| 255   | (Highest Layer - Nothing Layers)
+-+-+-+-+-+-+-+-+-------+---------------------------------------------
&g* Thick or bulky items may need to occupy more than one layer.
  (example; padded chain covers 2 layers)
* Any items with layer bit(s) should NOT have any/many magical effects
  as they will be overpowerful when mixed with other layered equipment.
* Lower layers (thinner layers) should have a lower AC than higher layers.
* A "body" wear position will have more layers than other positions such
  as "arms", "hands", "legs", and "feet".
  (example for "hands"; silk gloves | leather gloves | chain gauntlets)
 
See also OSET, AFFECTTYPES, WEARFLAGS, OBJECTFLAGS, OBJECTTYPES, ITEMVALUES,
WEAPONTYPES, VARIABLES, ARMORCLASS, LAYERS, and OMENU.
~

1 LCK LUCK~
Luck (LCK in your 'score') represents the tendency of a character to succeed
or prosper through chance or good fortune.  As in life, the exact extent of
this factor remains and will always remain shrouded in uncertainty...
 
Also as in life, however, it can be said with surety that its influence on a
character is pervasive.  Though it affects some aspects of life here in a
very direct manner, it can affect nearly every aspect to at least a degree.
 
~

1 LEAP~
Syntax:  leap
 
Leap is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 LETHARGY~
Syntax:  c lethargy <victim>
 
Lethargy reduces the victim's dexterity by two.
~

52 LEVERFLAGS SWITCHFLAGS BUTTONFLAGS PULLCHAINFLAGS DIALFLAGS~
 FLAG NAME     |  BITVECTOR  |  DESCRIPTION
----------------------------------------------------------------------
UP            |          1  |  Trigger is UP
UNLOCK        |          2  |  Trigger unlocks something
LOCK          |          4  |  Trigger locks something
D_NORTH       |          8  |  Affects the north exit
D_SOUTH       |         16  |  Affects the south exit
D_EAST        |         32  |  Affects the east exit
D_WEST        |         64  |  Affects the west exit
D_UP          |        128  |  Affects the exit up
D_DOWN        |        256  |  Affects the exit down
DOOR          |        512  |  Affects a door
CONTAINER     |       1024  |  Affects a container
OPEN          |       2048  |  Opens something
CLOSE         |       4096  |  Closes something
PASSAGE       |       8192  |  Creates a passage
OLOAD         |      16384  |  Loads up an object
MLOAD         |      32768  |  Loads up a mobile
TELEPORT      |      65536  |  Teleports the puller
TELEPORTALL   |     131072  |  Teleports everyone in the room
TELEPORTPLUS  |     262144  |  Teleports everything in the room
DEATH         |     524288  |  Causes instant death
CAST          |    1048576  |  Casts a spell (sn in value1) (level in value2)
FAKEBLADE    *|    2097152  |  Lever is a wax covered sword blade (OUCH)
RAND4         |    4194304  |  Randomizes the exits N, S, E, W
RAND6         |    8388608  |  Randomizes the exits N, S, E, W, U, D
TRAPDOOR     *|   16777216  |  Opens a trap door, everthing falls down
ANOTHERROOM  *|   33554432  |
USEDIAL      *|   67108864  |
ABSOLUTEVNUM *|  134217728  |
SHOWROOMDESC  |  268435456  |  When used with TELEPORT(s) it will show the room's description.
AUTORETURN    |  536870912  |  Will prevent returning the device to its original position when set.

See OSET and ITEMVALUES.  * = not yet implemented.
~

1 LIGHT~
Syntax:  light <pipe>
 
This lights the herb in your pipe.  Once lit, the herb will continue to
burn until it burns itself out, is smoked out, or you tamp your pipe.
~

1 LIMBO~
The limitless void known as Limbo is a strange plane fabricated by
the Gods to hold mortals who have been rendered unconscious or have
been mortally wounded. It is a well known fact that only Gods may travel
here of their own volition.
~

52 LIQUIDTYPES~
Value | Liquid Type
------------------------------
  0   | water
  1   | beer
  2   | wine
  3   | ale
  4   | dark ale
  5   | whiskey
  6   | lemonade
  7   | firebreather
  8   | local specialty
  9   | slime mold juice
 10   | milk
 11   | tea
 12   | coffee
 13   | salt water
 14   | cola

See OSET and ITEMVALUES.
~

52 LITTERBUG~
Syntax: litterbug <player>

Places/removes the litterbug flag, allowing/prohibiting a player from
dropping any objects.
~

-1 LIZARDMAN LIZARDMEN LIZARD-MAN LIZARD-MEN 'LIZARD MAN' 'LIZARD MEN'~
Lizardmen are semi-aquatic, breathing air but often dwelling totally
underwater.  They are often noted to use underwater caves as their
lair, and are typically found in swamps, marshes, and similar places.
Members of this race band together in rough tribal form; they are
omnivores, and are likely to prefer human flesh to other foods.
Due to this taste for humans, they suffer if their alignment strays
too much towards the honorable side of the spectrum.

This race, of course, has the innate ability to breath under water.

Lizard men gain experience on a scale of normal rate * 0.91
~

65 LOADUP~
Syntax:  loadup <player>
 
LOADUP allows one to load up a player's character (playing or not), to do
whatever needs be done to the character.  (Modifying a flag, changing a
password... etc).  Use FORCE to make the character do your bidding.
 
If we make any changes to the char, we comment the char and place a note in
their inventory explaining who loaded them up and what changes were made.
The character is transed to room 99 and forced to quit there (unless they
are going to be left in hell).  If we don't make any changes to the char, we
trans them back from where they came and force quit them there.  Loadup is
used primarily when a player quits to avoid dealing with immortals or if
they quit before you finish writing a comment.  But it is also used to
investigate chars for duping and other allegations made against them.
 
So... there is actually a wide range of reasons to use loadup and you are
encouraged to use your discretion in this area.
 
If you load up a character to slay or purge them, you must post in 1205.
 
See FORCE
~

0 'LOCATE OBJECT'~
Syntax: cast 'locate object' <name>

This spell reveals the location of all objects with the given name.
~

55 LOG SNOOP~
Syntax: log   <character>
Syntax: log   all
Syntax: snoop <character>

LOG <character> causes all of a character's commands to be logged into
the server's log file.  Like FREEZE, it is a permanent character toggle.

Certain commands (PASSWORD) are protected against LOG.  Conversely, certain
commands (especially immortal commands) are always logged.

LOG ALL logs all character commands.  It is a server-wide toggle; it does not
persist across reboots.

SNOOP shows you a copy of all the input and output going to a character.
The character must have an open channel.  You may snoop more than one
character at a time.
The input from the player will be displayed with a header of the players 
name and a percentage sign (i.e. Mudder%)
SNOOP yourself to cancel all outstanding snoops.
-- Do not snoop people being intimate. <i.e. Mudsex, voyeurism, etc...>
-- Do not repeat information learned in snoop casually, especially to mortals
-- Only snoop a person talking to a higher level Immortal with the higher
   Immortals "Express Permission".
-- If a higher level Immortal begins communication with someone you are
	 snooping, inform that higher Immortal immediately of the snoop.
-- Any incidental references learned in snoop should be disregarded
	** For example, you hear someone is having a mud affair, it is not
	** important to the reason you are snooping.  Do not judge or pass
	** on information learned in this manner.
-- "Spot check" snooping of lower level Immortals is part of being a higher
   level immortal.  All Immortals may be snooped at any time, for any reason.
-- Do not snoop for the purpose of gaining information for personal reasons.
-- Being an Immortal is a privilege and a job.  Snoop is a tool to assist
   you do your job properly.  Snoop is neither a toy nor a right.
 
~

1 LOYAL LOYALTY~
The item flag 'loyal' reflects a weapon's loyal status to its deadly owner.
Such a weapon will return to a player's inventory when disarmed by another
deadly character.
 
Note that a weapon will only be loyal to a deadly character, and it will be
loyal when disarmed by another deadly.  Non-deadly characters will gain no
advantage with a loyal weapon.
 
~

1 LUNGE~
Syntax:  lunge
 
Lunge is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 'MACHINE DREAMS'~
Recommended level range: 1 - 5

The eerie machine dream is a strange alternate dimension that only the
wisest of sages comprehend. Once entered, the only way to escape is
through magic.
~

0 MAGICUSER MAGE MAGES~
A mage is one of the weakest classes when it comes to body, but the mage
is a being of pure magic.  Their minds are by far the sharpest, retaining
the knowledge of some of the worlds most powerful spells.  When one begins
as a mage the body is weak.  As they grow in knowledge, experience and
power.  They will become a powerful fighting force.  Armed with an
arsenal of various spells, with the main focus in combat spells.  Their
vast repertoire of spells makes them a sought after commodity in the
Realms for their spells can mean victory or defeat for others.  A mage
must constantly study their spells for they are quickly forgotten, ruled
by the three moons, the silver moon of good, the red moon of neutrality
and the fabled black moon of evil.  A mage has a choice of either using
their powers for good or for evil.
~

1 MAGIC_MISSILE~
Syntax: Cast Magic <mob>
 
Magic Missile  enables the caster to hit a victim with a blast of magic from a
distance. In order to work, the conditions must be right and the victim must be
visible to the caster. Attempting to hit a player with a missile will cause
the caster to be branded an Attacker. 
Ex: If an orc were one room to the west, you could hit the orc by typing
cast magic orc .
~

1 'MAGNETIC THRUST'~
'Magnetic Thrust,' much like 'Sonic Resonance,' allows the casting
Mage to control the nature of space and time in the immediate locale
of his victim.  In this sorcery, the Mage forms a wedge of magnetic
energy within the body of the victim.  As the spell progresses, the
victims organs are violently rent and internal tissues are torn.  The
resulting pain and damage are formidible, indeed.
~

1 MAHN-TOR~
Recommended level range: 5 to 35

The Keep of Mahn-Tor, located in the frozen wastelands, is home to the
mighty minotaurs of Despair. Invaders seeking the city should beware,
for the champions of the Keep are always alert and on guard, and Mahn-Tor
himself is said to be one of the greatest fighters in the land.
~

1 'MAIDENSTONE HQ'~
Recommended level range: 0 - 60

The Order of Maidenstone is a coven of women who come together
for strength, freedom and to avoid sexual persecution. They work
with the males who respect them often and hold unbridled contempt
for the wastrels who jest at them. The location of their hidden fortress
is a secret which onnly the most informed know...
~

59 MAIDENSTONE.ARE~
~

0 MAILING~
The mailing list is up.  If you are not on the mailing list:
 -> send a message to  :  despair-request@realms.game.org
 -> containing the line:  subscribe
 -> the list address is:  despair@realms.game.org
 
If you ever want to remove yourself from this mailing list:
 -> send a message to  :  despair-request@realms.game.org
 -> containing the line:  unsubscribe despair [your email address]
~

1 'MAJOR INVOCATION'~
Syntax: cast 'major invocation'
 
The spell MAJOR INVOCATION lays upon the members of the casters group
a strong, but short-lived Sanctuary of The High Gods.
~

50 MAKE~
Syntax:  make <object>
 
For use by clan, Order or guild leaders only to make one of the three
clan, Order or guild objects.
 
See SETCLAN
~

61 MAKECLAN~
MAKECLAN
-----------------------------------------------------------
 
	 SYNTAX: makeclan <clan name>
 
DESCRIPTION: The MAKECLAN command is used to create a
			 new clan, order, or guild which may then
			 be customized with the SETCLAN command.
 
-----------------------------------------------------------
 
SEE ALSO: SETCLAN, SHOWCLAN
~

61 MAKECOUNCIL~
MAKECOUNCIL
-----------------------------------------------------------
 
	 SYNTAX: makecouncil <council name>
 
DESCRIPTION: The MAKECOUNCIL command creates a new council
			 that may then be customized with the SETCOUNCIL
			 command.
 
-----------------------------------------------------------
 
SEE ALSO: SETCOUNCIL, SHOWCOUNCIL
~

61 MAKEDEITY~
-----------------------------------------------------------
 
	 SYNTAX: makedeity <deity name>
 
DESCRIPTION: The MAKEDEITY command creates a new deity
			 that may then be customized with the SETDEITY
			 command.
 
-----------------------------------------------------------
 
SEE ALSO: SETDEITY, SHOWDEITY, DEITIES 
~

57 MAKEREPAIR~
Syntax:  makerepair <mobvnum>
 
Automatically gives the mobile the ability to repair damaged equipment.
Use 'repairset' to set the parameters by which the shop will function.
 
See REPAIRSET, REPAIRSTAT, REPAIRSHOPS
~

54 MAKESHOP~
Syntax: makeshop <mobile vnum>

Creates a new shop and assigns it to a mobile.

The levels of the items in the shop are picked randomly based on item type:

--------------------------------------------
|Item Type | Level Range                   |
--------------------------------------------
| default  | 0                             |
| pill     | 0 to 10                       |
| potion   | 0 to 10                       |
| scroll   | value[0] of the scroll object |
| wand     | 10 to 20                      |
| staff    | 15 to 25                      |
| armor    | 5 to 15                       |
| weapon   | 5 to 15                       |
--------------------------------------------

See SHOPSTAT, SHOPSET and SHOPS.
~

57 'MANA'~
Mana is the living inner power used by Druids, Clerics, Mages, Rangers and
even Thieves to cast their magic.  Warriors also have mana, but do not cast
spells.  As undead beings, Vampires neither have nor need mana.
~

1 MANOR 'TULLFUHRZKY MANOR'~
Recommended level range:  1 - 15
 
Deep inside the Pixie Forest, in it's northern portion to be exact, is an
immense manor belonging to Joseph Tullfuhrzky.  None know where he came
from, or how he accumulated the gold to erect such a mansion.  In fact,
most information about the manor and this man are mere rumors...
 
~

0 MAP~
Town of Darkhaven:
Ocean                   Plains                         (Guilds Houses)
Keep \===PATHWAY=========='`====================.    1 Clerics (Good)
	 |    (23)            ||                    |    2 Clerics (Evil)
	 |  +===JUSTICE=ST====||=================+  |    3 Druids
	 |  |                 V|                 |  |    4 Warriors
	 |  F    Notre        E|    Duke's       H  |    5 Rangers
	 |  A    Dame         R|    Castle(4)    A  |    6 Mages
Pixie|  L   (1)|(2)       T|      |          W  |    7 Thieves
For.-+  C (9)  |          I|    .-+-\        K  |    8 Vampires
	 |  O  .+--+--------. C| .-/     (5)     |  |    9 Augurers
Dark |  N (3)  Portal    \||/                |  |   23 Paladins
For.-+== =================[]===HORIZON=ST==== ==+-X-   10 Scrolls
	 |  | Bar   Inn  Hall || NOTES (6) Acad  |  |Road  11 Potions
	 |  | (10) (11) (12)  || (16) (17) (18)  |  |      12 Magic Items
	 |  +===MARKET=ST====='`=================+  |      13 Jewelry
	 |  | (13) (14) (15)  || (19) (20) (21)  |  |      14 Courier/Post Office
	 |  |       (7)  Ware ||                 |  |      15 Notes/Quills
	 |  +--thieves'-alley- |                 |  |      16 Butcher
	 |  |  (8)  (22)  Art || Cult Pawn  Pets |  |      17 Baker
	 |  +================='`===LAW=ST========+  |      18 Dairy
	 |                    ||                    |      19 Blacksmith
	 +===================='`==+==PATHWAY========'  N   20 Armour
	 |             South      |                   w+e  21 Weapons
   Graveyard      Bridge    Marina-Coral Depths    S   22 Tailor
 
NOTES: Archive second floor, all south.  Oracle second floor, all south, east.
~

51 MAPOUT~
Syntax: mapout <write/stat/clear/show/create>

mapout write: create a map in edit buffer.
mapout stat: get information about a written, but not yet created map.
mapout clear: clear a written, but not yet created map.
mapout show: show a written, but not yet created map.
mapout create: turn a written map into rooms in your assigned room vnum 
range.

Example of a map:
[I]-[C]

This would create two rooms, the first would have the sector type inside 
while the second would have the sector type city. They would be linked east
and west by a normal exit.

[Letter to use] [Sector type given to room]
	  I         SECT_INSIDE
	  C         SECT_CITY
	  f         SECT_FIELD
	  F         SECT_FOREST
	  H         SECT_HILLS
	  M         SECT_MOUNTAIN
	  s         SECT_WATER_SWIM
	  S         SECT_WATER_NOSWIM
	  A         SECT_AIR
	  D         SECT_DESERT
	  U         SECT_DUNNO
	  O         SECT_OCEANFLOOR
	  u         SECT_UNDERGROUND
	  U         SECT_UNDERWATER
	  L         SECT_LAVA
	  W         SECT_SWAMP
	[ELSE]      SECT_DUNNO

[Exits to use] [Direction it gives]
	  ^        UP or DOWN
	 = :       Used in all directions except UP and DOWN
				 Makes a closed door in the direction its used in.
	  /        NORTHEAST or SOUTHWEST
	  \        NORTHWEST or SOUTHEAST
	  |        NORTH or SOUTH
	  -        EAST or WEST
~

53 MCREATE OCREATE~
Syntax: mcreate <vnum> <keywords>
Syntax: ocreate <vnum> <keywords>

Create and new mobile / object.
A prototype monster or object will be created with the selected vnum, and
set up with the plainest of default values.  A material image of the magical
prototype will appear before you, for you to futher modify with MSET or OSET.

See MSET or OSET.
~

1 'ME I AM A MORON'~
Please send a tell to Herne, he'll be more than happy to tell 
you everything you need to know to be a master mudder!
~

56 'ME I'M A MORON'~
We all know this, but put up with you anyways!
~

1 MEDITATE MEDITATION~
Syntax:  meditate
 
A character in possession of this skill may use it to briefly focus its
energies toward restoring a small burst of mana.
 
~

57 MEMORY~
Syntax: memory

MEMORY reports the current counts of objects, mobiles, affects, rooms,
areas, etc, etc.
~

-1 MENTALSTATE MENTALSTATES 'MENTAL STATE' 'MENTAL STATES'~
.
&gYour mental state is your current frame of mind, and how clearly and
realistically you view your surroundings.  Mental states can be affected
by prolonged combat, hunger, thirst, or poison.  If you are affected by
one of the above for a period of time, your mental state will begin to
deteriorate, and you will not view your surroundings as they truly are.
You may begin to hallucinate, or become too lethargic to function, and
your general abilities will be affected.  In extreme cases you may
collapse from exhaustion or enter a delirious coma.
 
To restore your mental state, you may need to rest (resting and sleeping
will speed your recovery), eat, cure whatever poison afflicts you, etc.
Note that if you are malnourished your state will &wnot&g improve, even with
sleep, until you have fed and/or quenched your thirst.
 
Your mental state is by the text line in 'score' which describes your state
of mind (You feel great, etc.)  The 'group' display contains a less accurate
reading of your and your group-mates' mentalstates as well.
 
Note:  Changing your deity now affects your mental state.
 
See also 'GROUP DISPLAY'
~

53 MENU~
When in one of the menu systems (RMENU, OMENU, MMENU), to switch from one
page to another, type '- <letter>'.  (For example, '- a' will bring you to
the first page in the current menu system).

'- h' will bring up a help file in any menu system.

'+ <name>' in OMENU or MMENU will change the object or mobile being edited
if it exists in your inventory/room respectively.

See RMENU, OMENU, MMENU.
~

-1 MERC FUREY KHAN HATCHET~
SMAUG was originally based on the Merc 2.1 code which was created by Furey,
Hatchet, and Kahn.
This original code base is available as Merc_21.tar.gz via FTP from:
ftp.tcp.com, ftp.math.okstate.edu and ftp.game.org.
E-mail to 'merc-request@kpc.com' to join the merc mailing list.

Merc would like to thank ...
  ... Diku Mud for their code base.
  ... The Free Software Foundation and DJ Delorie for kick-ass tools.
  ... Copper Mud and Alfa Mud for releasing their code and worlds.
  ... Aod of Generic for ... well, everything.  You're a hoopy frood, Aod.
  ... Alander for many ideas and contributions.
  ... John Brothers of Silly for permission to use Silly code and worlds.
  ... Zrin for administering the mailing list.
  ... Abaddon for proofreading our comm.c.
  ... Hind, Quin, Vic, Diavolo, Oleg, Trienne, and others for porting help.
  ... Diavolo, Grodyn, Morgenes, and others for code and bug fixes.
  ... Raff, Doctor, VampLestat, Nirrad, Tyrst, PinkF, Chris, Glop for worlds.
  ... the players and imps of Mud Dome, Final Mud, Mud Lite, Vego Mud, Rivers
	  of Mud, Ruhr Mud, and Mystic Realms for bug reports, ideas, new code,
	  and hours of enjoyment.
								Share and enjoy.
~

51 MFIND OFIND~
Syntax: mfind <name>
Syntax: ofind <name>

MFIND finds all mobile types with a particular name.

OFIND finds all object types with a particular name.
~

1 'MIDAS TOUCH' 'MIDAS'~
MIDAS TOUCH:
Syntax: cast 'midas touch' obj
 
[where obj is in your inventory]
 
Turns an object in your inventory into gold.
~

1 MIDEN'NIR~
Recommended level range: 5 - 15

The Miden'nir is a dark, stunted forest populated by a tribe of goblins.
The goblins have been steadily suffering losses to Darkhaven's
adventurers and now roam the forest more rarely (to the relief of many
peasants). In the western part of the forest is an inn where a bard plays
regularily to the amusement of the inn's patrons. Some trails near the inn
have recently become dangerous due to a group of marauders who call
themselves the Black Riders.
~

65 MIND~
~

1 'MIND FORTRESS'~
Syntax: Cast mind
 
This spell works well for a group who can merge their minds to create
a fortress against magic.
It affects intelligence and save vs. spell.
~

1 'MINOR INVOCATION'~
Syntax:  cast 'minor invocation'
 
This spell improves the to-hit roll and saving throw versus spell of all
members of the caster's group by 1 each.
~

53 MINPOS~
Minimum Positions affect both spells and skills. For example, if the minimum
position for a spell was 8, it would work while sitting, fighting or any
position higher than that. The same spell would not work in the resting
position as it's ranked at 6.
0 POS_DEAD
1 POS_MORTAL
2 POS_INCAP
3 POS_STUNNED
4 POS_SLEEPING
5 POS_BERSERK
6 POS_RESTING
7 POS_AGGRESSIVE
8 POS_SITTING
9 POS_FIGHTING
10 POS_DEFENSIVE
11 POS_EVASIVE
12 POS_STANDING
13 POS_MOUNTED
14 POS_SHOVE
15 POS_DRAG
See also : Help STYLE
~

54 MINVOKE OINVOKE~
Syntax:  minvoke <vnum>
		 minvoke <keyword of mob>
Syntax:  oinvoke <vnum>
		 oinvoke <keyword of obj>
		 oinvoke <vnum/keyword of obj> <level>
 
MINVOKE invokes an instance of the mobile specified.
 
OINVOKE invokes an copy of the object specified.  It accepts an optional
parameter for the level of the object to be invoked.
 
~

1 MISSILE~
Missile weapons have the unique ability to fire at one's opponent
from a distance.  In order to be successful, the attacker must have a 
weapon missile wielded (Only certain weapons are able to be missile wielded)
and must have an appropriate ammunition in inventory.

Example: To use a bow and arrow, one must have a bow missile wielded and
have an arrow in inventory.
 
See help &Wfire and help &Wfletch
~

53 MISSILES~
Creating a projectile is basically the same as making any other
weapon. The exception to this are its Values (see ITEMVALUES)
and the need to have missiles which match missileweapons.
 
&GFollow this basic proceedure to make a set of projectiles&W:
  1) Create a firing mechanism, for instance, a long bow.
  2) Set the itemtype to 'missileweapon'.
  3) Set the wearflags to 'take missile'
  4) Set the projectile values from the HELP ITEMVALUES table.
  5) Set the Value3 (V3) from the table in HELP WEAPONTYPES.
 
&G Now the wielded weapon is done, but you need something to fire...&W
  1) Create a shootable object, for instance, an arrow.
  2) Set the itemtype to 'projectile'
  3) Set the wearflags to 'take'.
  4) Set the projectile values from the HELP ITEMVALUES table.
  5) Set the V3 to match the V3 on the firing mechanism you created.
 
Don't forget to finish the items with weight, cost, long, short etc.
You now have two objects in inventory which are ready to fire.
Lastly, you may create a quiver for certain objects. To do this,
set the itemtype to 'quiver', and use v0 to set its capacity.
Be sure not to set the capacity too high, as quivers should be small.
 
See also: PROJECTILES, ITEMVALUES, WEAPONTYPES and OSET.
~

1 MISTFORM~
Syntax:  mistform
 
The vampire may assume a form of lucent mist, capable of traveling
through many barriers otherwise unpassable.
 
~

1 MISTWALK~
Syntax:  mistwalk <victim>
 
The vampire may become a fine mist, capable of traveling with great speed
and precision through the smallest of cracks and crevices to to reach its
intended victim.
 
Due to the nature of this skill, it only works in darkest night (between
the hours of 9 o'clock in the night and 5 o'clock in the morning).
 
~

1 'MITHRIL HALL'~
Recommended level range: 35 - 50

Mithril Hall's creation is, like many other Realms of Despair, rooted
to Vl'Arescht's whim. Long ago, the Lord of Darkness created a shadow
dragon, which he named Shimmergloom, unleashing havoc upon the races
of Light. The fearsome beast, aided by might shadow hounds and dread
clerics, brought about thirty years of pain and sorrow. It was then
that the legendary Daskyn arose. This heroic man, whose name will be
forever remembered in song, drove back the dragon, tracking it back
to its lair in Garum's Gorge. There, the hero magically sealed
Shimmergloom in it's lair, unable to kill it as Vl'Arescht had blessed it
with eternal life. The dragon's rage was unending however, and it
summoned forth a torrent of servants, sending them to destroy the
peaceful settlements nearby. Our good King Welmar dispatched a legion
of dwarven berserkers to end this shadowy obstacle. With the aid of
the human Cattie-Brie, the dark elf Drizzt Do'Urden, the barbarian
Wulfgar and many others, the keep of Mithril Hall was founded, resting
near the steep cliff face of Garum's Gorge. The battleragers of the keep
maintain a vigilant guard, ensuring that the followers of Shimmergloom
shall never arise from the canyon.
~

54 MLIST~
Syntax: mlist
	  :	mlist <first mob>
	  :	mlist <first mob> <last mob>

This command will list all of the prototype mobs in your area, when used 
with no arguments.  When used with a single argument it will list all 
mobs including and after the argument, and when used with two arguments, 
it will list all mobs including and between the two. 
~

53 MMENU~
Syntax: mmenu <mob name> [menu page] (defaults to 'a' if none given)

Mmenu will bring you into a menu system of editing mobiles.  To use mmenu,
the mobile that you are editing should be in the same room as you.  To
choose an option in the menu, type the number of the section followed by the
desired letter, and any variables that may follow.

See MENU for generic menu commands.
~

58 MOBLOGSTATS~
October 22nd through 12/19
  ... 74 kills on Lord Xyranthas
  ... 102 kills on Onyx Golem
  ... 45 kills on Jagr -  5 Destiny loaded, 20 sacced for 0 Uncertainties
  ... 12 kills on Lord Seth - one Genesis, one Blasting Oblivion
  ... 28 kills on Dracula
  ... 52 kills on Emerald
  ... 337 kills on Bahamut - 35 Justices loaded
  ... 3 kills on Divine Retribution
  ... 52 kills on Froghemoth
~

-1 MOBPROG MOBPROGRAMS OBJPROG ROOMPROG MUDPROG~
.
		 The MOBprograms have been contributed by N'Atas-ha.

		 Haus hacked together room && obj programs 'cause
		  he got sick of failing to add lever bitvectors,
			   and cause he thought Carnage was a
				  Trancendentally Cool Mud.
~

51 MOBTRIGGERS MUDTRIGGERS MPTRIGGERS~
Trigger Optnl Triggering Variable Explanation
------- ----- ------------------- -----------
Act      {p}  <keyword / phrase>  [emotes, socials, actions, bamfs]
Speech   {p}  <keyword / phrase>  [says or tells from same room as mob]
Rand          <percentage>        [randomly triggered based on percentile]
Fight         <percentage>        [random, within a fight, based on percentile]
Hitprcnt      <percentage>        [percent is % of mob's max H.P.]
Greet         <percentage>        [entry that mob can see, by mob/player]
Allgreet      <percentage>        [entry by a mob/player, regardless if seen]
Entry         <percentage>        [when the mob itself enters a room]
Bribe         <amount of gold>    [when a player gives the mob money]
Death         <percentage>        [when the mob dies]
Script {hour}                     [loops a line at a time. Hour triggers start]
Time          <hour>              [script prog, runs once on hour specified]
Hour          <hour>              [loops as Script for an hour from start hour]

*NOTE* {hour}/<hour> is in military time. ie, 15 hours is 3p.m. mud time.
*NOTE* The mpcommand MPDONOTHING currently only works in Script progs,
	   NOT in Time or Hour progs.

For mobs, see also: MPSTAT, MPEDIT, TRIGGER, MPCOMMANDS, IFCHECKS, VARIABLES.
~

1 'MORGUL VALE'~
Recommended level range: 35 - 50

No race has plagued the battle for Light more than the orcs of Morgul
Vale. The orcish population ever-swelling, their incredible numbers
made it impossible to banish them all to their land, as was done with
many other singular beings of Darkness. After a dozen years of war, it
was discovered that an entity of pure darkness named Sauron led the
orcs with the aid of nine minions known as Nazguls. Further research
proved that this entity was very chaotic. A plan was made and executed,
where a party of orcs was led into some clerics of the Dread Lord Seth.
Without hesitation, the orcs slaughtered the dark priests. Lord Seth
took this as a personal offence. His fury was brief but deadly as fire
rained from the sky and Sauron was imprisoned in a strange, tangible
darkness. The orcish population was utterly devastated and the race
no longer has the numbers to wage war. The majority of orcs have
sought refuge in Morgul Vale, and the races of Light have grudgingly
given them ownership of this realm. Many adventurers go hunting there
for sport, yet very few who enter the Vale leave with their body, or
soul, intact.
~

1 MORIA~
Recommended level range: 5 - 15

The vast mountain range of Moria lies to the northeast of Darkhaven,
spanning much of the northern landscape of Despair. Its twisting tunnels
and caverns house dozens of vile races who seem engaged in a perpetual
war to conquer this dark realm. These dread mountains also surround the
hated Morgul Vale, providing an excellent defence for what remains of the
orcish race.
~

51 MORPH UNMORPH~
Syntax:  morph <vnum> <target>
Syntax:  unmorph
 
Morph is an immortal command used to morph into various
things, while unmorph reverts the effect.
 
See also:  polymorph, morphcreate, morphdestroy, morphstat
~

51 MORPHCREATE MORPHDESTROY~
These commands are used for the creation or deletion of
polymorph data.
 
See also:  polymorph, morph, morphstat
~

51 MORPHSTAT~
Syntax:  morphstat <vnum|name> [help|desc]
 
Stats a morphed target by name or vnum.
 
See also:  polymorph, morphcreate, morphdestroy, morph
~

-1 MOTD~
.
This space made available  via  Thoric and the Realms of Despair
 
 
To create your own .. use hedit motd
~

0 MOUNT DISMOUNT~
Syntax: mount <mob>
Syntax: dismount

Mount is a skill, which allows you to mount certain mobs.  Being mounted 
on a mob cuts down on movement points that are used whenever you move.
 
New water sectors allow a person mounted to traverse them without damage
from drowning.  If you are in an area where your movement points begin
to drop suddenly and/or you begin to lose hps <hitpoints> quickly, you
should try to mount immediately.
~

1 MOVE MOVEMENT~
This discusses the process of moving your character from one place in the
Realms to another.  The common movements are north, east, south, west, up
down, northeast, southeast, southwest, and northwest.  You may also move
in these directions by the use of n, e, s, w, u, d, ne, se, sw, and nw.
If you need to pass through a door, at times they require being unlocked
and opened. To unlock a door, you type UNLOCK <direction or door name>.
To open a door, you type OPEN <direction or door name>.
 
At times, you may run out of movement points or require healing.  To allow
for faster recovery, you may SIT, REST, or SLEEP.  When are finished with
your recovery, and wish to continue adventuring, type WAKE or STAND.
 
For more detailed information on movement and doors, read sections 7 and
8 of your Adventurer's Guide book.
~

53 MPADVANCE~
Syntax: MPADVANCE <name> <level>

Advances the level of a player (not functional in prototype programs).
~

52 MPAPPLY MPAPPLYB~
Syntax:  mpapply <victim>
Syntax:  mpapplyb <victim>
 
These commands are used in the pre-auth area to signal a new character's
authorization status.  When a character first enters the game, it will
be targeted by an 'mpapply <victim>' which will inform the immortals that
the character is waiting for authorization.  Once the character is
authorized, a mob will attempt to 'mapplyb <victim>' the character, and
the character will be sent into the actual game.
 
~

53 MPASOUND~
Syntax: MPASOUND <phrase>

Displays a phrase to all surrounding rooms.
~

53 MPAT~
Syntax: MPAT <vnum> <command>

Lets the mobile perform a command at another location.
~

53 MPCOMMANDS RPCOMMANDS OPCOMMANDS~
The following commands can be used for Room, Mob and Object progs.  The
commands listed at the bottom are for mob progs only.  Each command also
has its own help file.  Type HELP <COMMAND>.
 
MPCOMMAND       PARAMETERS            MPCOMMAND      PARAMETERS
--------------  --------------------  -------------  --------------------
MPASOUND        <phrase>              MPJUNK         <name/var>
MPECHOAROUND    <name/var> <phrase>   MPECHOAT       <name/var> <phrase>
MPECHO          <phrase>              MPMLOAD        <mob vnum>
MPOLOAD         <object vnum>         MPPURGE        <object/mobile name>
MPADVANCE       <player name> <level> MPTRANSFER     <name/all>
MPFORCE         <name/all> <actions>  MPSLAY         <victim>
MPDREAM         <name> <phrase>       MPDAMAGE       <name> <#hps> 
MPCLOSEPASSAGE  <room> <direction>    MPOPENPASSAGE  <origin> <dest> <dir>
MPPRACTICE      <victim> (skill|spell) (max_percent)
MPFAVOR         <victim> <favor>
 
Mobs only:
MPKILL           <name>                 MPGOTO <vnum>
MPAT             <vnum> <command>
 
See also: MPSTAT, RPSTAT, OPSTAT, MPEDIT, RPEDIT, OPEDIT, TRIGGER, MPTRIGGERS,
		  RPTRIGGERS, OPTRIGGERS, IFCHECKS, VARIABLES.
~

52 MPDAMAGE~
Syntax:  mpdamage <victim> <amount>
 
This command inflicts a specified amount of damage on the victim.
This damage will be affected by sanctuary, but is not affected by
protect, saving throws or resists.
 
A mob should _never_ mpdamage itself.
~

52 MPDEPOSIT MPWITHDRAW~
Syntax:  mpdeposit <amount>
Syntax:  mpwithdraw <amount>
 
This command orders the mobile to deposit or withdraw a specified number
of gold coins from an area.  These can be used in conjunction with mpat
to tell the mob which area to withdraw/deposit money in.
 
Example:  mpat 21000 mpwithdraw 5000000
 
This would cause the mob to withdraw 5 million coins from the new Darkhaven
area, as that is the area vnum 21000 is in.
 
If no mpat is used, the mob will withdraw or deposit the gold from the
area in which it is located at the time.
~

53 MPDREAM~
Syntax: MPDREAM <name> <phrase>
Sends a message to a sleeping character.
~

53 MPECHO~
Syntax: MPECHO <phrase>

Displays a phrase to the entire room.
~

53 MPECHOAROUND~
Syntax: MPECHOAROUND <name> <phrase>

Displays a phrase to all in the room except victim.
The abbreviation "mer" may be used for mpechoaround.
~

53 MPECHOAT~
Syntax: MPECHOAT <name> <phrase>

Displays a phrase to only the victim.
The abbreviation "mea" may be used for mpechoat.
~

51 MPECHOZONE~
-----------------------------------------------------------
 
	 SYNTAX: mpechozone <color> <string>
 
DESCRIPTION: The MPECHOZONE mpcommand works much like
			 the ECHO and RECHO comands do except the
			 specified string is only displayed within
			 the area. 
 
-----------------------------------------------------------
 
SEE ALSO: COLOR, MPCOMMANDS
~

55 MPEDIT~
Syntax:  mpedit <mobile> <command> [number]  [program] [arguments]
Syntax:  mpedit <mobile> add       <program> <arguments>
Syntax:  mpedit <mobile> insert    <number>  <program> <arguments>
Syntax:  mpedit <mobile> edit      <number>  [program] [arguments]
Syntax:  mpedit <mobile> delete    <number>
Syntax:  mpedit <mobile> list
 
Add, insert and edit will put you into the line editor to edit your
program.  The arguments consist of a trigger, plus any arguments
associated with that trigger.
 
For complete infomation, reference the mob program documentation available
via FTP on realms.game.org:  (building.tar.gz/building.tar.Z/building.zip )
 
See MPSTAT, TRIGGER, MPTRIGGERS, MPCOMMANDS, IFCHECKS, IFCHECKS2, VARIABLES
~

51 MPFAVOR~
-----------------------------------------------------------
 
	 SYNTAX: mpfavor <target> -#
			 mpfavor <target> +#
			 mpfavor <target> #
 
DESCRIPTION: The MPFAVOR mpcommand is used to take, give,
			 or set a PCs favor by/to the specified amount.
 
   EXAMPLES: 
 
mpfavor 0.$n -10 -> decrease $n's favor by 10
mpfavor 0.$n +10 -> increase $n's favor by 10
mpfavor 0.$n 10  -> set $n's favor to 10
 
	   NOTE: The current high/low settings for favor
			 can not be exceeded: 2500 and -2500
 
-----------------------------------------------------------
 
SEE ALSO: MPCOMMANDS, 'IFCHECK FAVOR'
~

65 MPFILLIN~
Syntax: mpfillin <exit>
 
New mpfillin, this simply sets a closed door bit, so can be used for
several things, quietly closing a door, closing an exit that was dug, etc...
~

65 MPFIND~
.  Display a maxiumu of n lines.
 
mpfind n mud text
   Search all the mobs in the mud for
   mob progs that contain an occurrence of text.
   Display a maxiumu of n lines.
 
Example:
mpfind 20 901 969 if isnpc
  Search all mob progs in Olympus (vnums 901 thru 969)
  and display all mob vnums that contain text "if isnpc". 
  Display a maximum of 20 lines.
Example:
mpfind 100 mud mpslay
  Search all mob pros in the entire mud
  and display all mob vnums containing text "mpslay".
  Display a maximum of 100 lines.
~

53 MPFORCE~
Syntax: MPFORCE <name/all>

Forces a player/mob to do a command (non-functional on immortals, all will
only force all in room).
~

53 MPGOTO~
Syntax: MPGOTO <vnum>

Goes to any room which is not private.
~

52 MPINVIS~
Syntax:  mpinvis
Syntax:  mpinvis <level>
 
This command controls a mob's ability to use a modified form of wizinvis.
 
Use 'mpinvis' alone to toggle the invisibility.
 
Use 'mpinvis <level>' to set the level at which the mob will be invis.
 
Mortals under the mobinvis level of the mob will be unable to see the mob
when it goes mobinvis; they cannot see it with any spell, it will be
completely invisible to them.
 
Be warned, however, that its programs will still function as normal, the
mortal will simply see a 'someone' if it performs an action or an echo
that they see, just as if a wizinvis immortal performed the action.
 
Also be warned that at the present time, area attacks _will_ hit a mobinvis
creature even if it is invisible.
~

53 MPJUNK~
Syntax: MPJUNK <name>

Destroys an object in inventory/being worn - can be used with all.object .
~

53 MPKILL~
Syntax: MPKILL <name>

Kills a player without using murder.
~

53 MPMLOAD MPOLOAD~
Syntax: MPMLOAD <vnum>
		MPOLOAD <vnum> <level> <timer>

Loads a mob or object. In the case of objects, the level must be set, or
supermob will end up setting the level. Timer is optional, and is the decay
timer for objects.
~

53 MPOPENPASSAGE MPCLOSEPASSAGE~
Syntax: MPOPENPASSAGE <origin> <destination> <direction>

Opens a passage to a room (does not affect pre-existing doors)

Syntax: MPCLOSEPASSAGE <room> <direction>

Closes a passage to a room (does not affect pre-existing doors that were
not created with mpopenpassage)
~

51 MPPARDON~
-----------------------------------------------------------
 
	 SYNTAX: mppardon <target> <flag>
 
DESCRIPTION: The MPPARDON mpcommand works just as the
			 immortal PARDON command does.
 
-----------------------------------------------------------
 
SEE ALSO: PARDON, FLAGS, 'IFCHECK ISATTACKER', 'IFCHECK
		  ISKILLER', 'IFCHECK ISTHEIF'
~

51 MPPEACE~
*-------------------------------------------------------------------*
 
	 SYNTAX:     MPPEACE <name>
 
DESCRIPTION:     Any target name within the room can be forced
				 to cease all fighting.
 
*-------------------------------------------------------------------*
See Also:  MPCOMMANDS OPCOMMANDS RPCOMMANDS OPTRIGGERS MPTRIGGERS
~

51 MPPKSET~
-----------------------------------------------------------
 
	 SYNTAX: mppkset <target> yes/no
 
DESCRIPTION: The MPPKSET mpcommand will set the 
			 PC to deadly or peaceful based on what is
			 specified regardless of their present state.
			 No = peaceful Yes = deadly
 
-----------------------------------------------------------
~

52 MPPRACTICE~
Syntax:  mppractice <victim> <skill/spell/language> <amount>
 
This command will set the victim's percentage of proficiency in the
specified skill/spell/language to the specified amount.
 
It cannot train a character in a skill/spell/language the character does
not have as a part of its class and that it does not already have as a
result of its level.  In other words, it cannot train a warrior in
fireball, or a level 1 thief in gouge.
~

51 MPPURGE~
Syntax: MPPURGE <object/mobile>

Purges the room, or a specified object/mobile.
-----------------------------------------------------------
 
	 SYNTAX: mppurge
			 mppurge <item name>
			 mppurge <mob name>
 
DESCRIPTION: The MPPURGE mpcommand works much like the
			 immortal command PURGE, but for one exception:
			 there must be something to purge. If there is
			 nothing to be purged, the command will log a bug.
 
-----------------------------------------------------------
~

52 MPRESTORE~
Syntax:  mprestore <victim> <amount>
 
This command restores a specified number of hitpoints to the victim.
~

51 MPSCATTER~
*-------------------------------------------------------------------*
 
	 SYNTAX:     MPSCATTER <target name> <low vnum> <hi vnum>
 
DESCRIPTION:     This command will send the victim to any one of
				 the rooms specified at random.
 
Example: mpscatter lascivias 1 50
		 Will transfer Lascivias to a room between 1 and 50.
		 The numbers you specify are inclusive in the formula.
 
*-------------------------------------------------------------------*
 
See also: MPCOMMANDS OPCOMMANDS RPCOMMANDS OPTRIGGERS MPTRIGGERS
~

51 MPSLAY~
-----------------------------------------------------------
 
	 SYNTAX: mpslay <target>
 
DESCRIPTION: The mpcommand MPSLAY works exactly as the
			 immortal slay command does, causing the
			 PC/NPC target instant death. NOTE: This is
			 a mob program command only.
 
-----------------------------------------------------------
 
SEE ALSO: MPCOMMANDS
~

53 MPSTAT~
Syntax:  mpstat <mob/mobvnum>
 
Mpstat will display all of the mobprograms that have been written for the
specified mob.  If an instance of that mob exists in the game, it can be
accessed with its vnum.
 
See MPEDIT, TRIGGER, MPTRIGGERS, MPCOMMANDS, IFCHECKS, IFCHECKS2, VARIABLES
~

58 MPTD~
~

53 MPTRANSFER~
Syntax: MPTRANSFER <name/all>

Transfers one or all in the room to a specified location.
~

54 MSET~
Syntax: mset <character> <field> <value>
		mset character on
 
MSET sets the properties of mobiles. If a mobile has the PROTOTYPE flag, 
modifying an instance of this mobile will also modify the index mobile, which 
all other instances of the mobile are based on.
 
MSET ON will lock you onto a particular mob/character. Once locked on, all
mset commands will imply 'mset <character>'. Hitting enter while in MSET ON
will give you an mstat of the mob/character you are working on. To get out
of MSET ON, simply type the word DONE. Example:
 
		mset gracca on
		long A large hulking figure stands here.
		sex 1
		done
 
See also: ACTFLAGS, SPECFUNCS, SAVINGTHROWS, RIS, NPC_RACES, ATTACKS,
		  DEFENSES, MCREATE, MMENU and MSTAT.
~

54 MSETPKILL~
mset <target> pkill
 
Before msetting a player to pkill, ensure the following conditions are met:
 
Player has read HELP DEADLY and LAWS PKILL
Player understands he/she/it may not return to the peaceful side
Player is config -nice
Player is in an area appropriate for pkill.
~

52 MSTAT OSTAT RSTAT~
Syntax:  mstat <character/mob or mobvnum>
Syntax:  ostat <object/object vnum>
Syntax:  rstat 
Syntax:  rstat <location>
 
MSTAT shows you statistics on a character or mobile.  If a copy of the mobile
is present in the game, you can access it using its vnum.
 
OSTAT shows you statistics on an object.  If a copy of the object is present
in the game, you can acces it using its vnum.
 
RSTAT shows you statistics on a location.  The location may be specified as
a roomvnum, as the name of a mobile, or as the name of an object.  Rstat
with no argument returns the statistics on your present room.
 
See MSET OSET and REDIT
~

0 MUDMAIL MAIL~
Syntax: mail list
Syntax: mail read    <number>
Syntax: mail read    all
Syntax: mail write
Syntax: mail subject <string>
Syntax: mail to      <to-list>
Syntax: mail take    <number>
Syntax: mail show
Syntax: mail post
Syntax: mail remove  <number>

The mail command is very similar to the note command.  To write mail, as 
in notes, you must have a blank note held in your hands, and a quill or 
pen in your inventory.  Mail can only be addressed to real players, or 
'all'.  There is a charge for reading and taking mail.

To post mail to more than one party, use 'note to <name> <name> <name>', etc.
Note that any of the named parties can remove the mail before the other
parties get a chance to read it.

See also 'HELP BOARDS', 'HELP NOTE'.
~

52 MWHERE~
Syntax: mwhere <name>

MWHERE shows you the locations of all mobiles with a particular name.
~

-1 M_ADVHERO_~
You suddenly feel a strange surge of power flow through your veins!
 
You have mastered yourself as far as mortally possible, and now
see immortality within your grasp...
 
Along with your new position you recieve a new channel, to use this
channel type ': <message>' or 'imm <message>'.
~

-1 M_BALZHUR_~
Suddenly out of nowhere, a hideous beast appears, bringing with it the
horrible smell of brimstone, death and decay!

The demon gives you the most evil and spine tingling sneer that makes you
fall to your knees, and release your bladder... 

The next second, the immense mass of slimey muscle and claws is all over you
...shredding you to a bloody mess!

Mercifully, everything goes black as it moves its widening maw towards your
head...
~

-1 M_GODLVL10_~
You are all powerful!
~

-1 M_GODLVL11_~
You suddenly feel much more powerful!
~

-1 M_GODLVL12_~
You suddenly feel much more powerful!
~

-1 M_GODLVL13_~
You suddenly feel much more powerful!
~

-1 M_GODLVL14_~
You suddenly feel much more powerful!
~

-1 M_GODLVL15_~
You suddenly feel much more powerful!
~

-1 M_GODLVL1_~
...Everything begins to fade to black.

You feel yourself leaving your body... rising up into the air, you feel
indeed much more free than you have ever felt before...

You float high into the heavens... a vortex of ever-changing curved beams
of colored light swirling around you faster and faster...

Your soul is bursting with emotions you can barely conceive...
You feel a burning inside... both cold and hot... a tingle of electricity
grows into a powerful buzzing surge jolting through every inch of your body.

A strange chorus of voices begins to sing indecipherable and long forgotten
words... the singing grows louder and louder... a million voices as one.

You feel yourself losing touch with reality... and all goes quiet.
~

-1 M_GODLVL2_~
...You suddenly feel more confident and sure of yourself and your new
powers...

You feel that you have earned some trust and respect among your peers,
yet you know that your jouney has only just begun.
~

-1 M_GODLVL3_~
...You begin to feel light-headed.

Your hands begin to tingle softly...
The feeling quickly grows into a strange radiating pulse of energy! 

The tingle rises up your arms and into your head, filing your mind with
visions of worlds of wonder, far off places, great towers, vast mountains,
oceans, seas, lush valleys, dark caverns and twisted passages...
 
You sense a feeling of wonderous potential and power in your hands...
Enough power to build and create these visions for yourself!

You feel much more powerful, eager and inspired!
~

-1 M_GODLVL4_~
...You feel slightly faint as your head begins to spin.

Your hands begin to tingle once more...
A vortex of energy starts to swirl throughout your hands, going faster
and faster... becoming almost painful! 

Beams of light break through your skin, one at a time, then more and
more until the light is almost to bright to bear...

As your squint your eyes, you perceive a vision of great beasts of wonder,
dangerous and unnatural fiends, pixies, faeries, tribes and clans, peoples
of all kinds, ancient forgotten artifacts, weapons of vast untapped powers,
crystal balls, magick rings, staves, wands, rods, arcane tomes of untold
secrets... your mind is bursting with inspiration...
 
You sense a new, reborn feeling of unlimited potential and power...
In your hands the power to build and create these visions for yourself!

The bright light from your hands fades away... but strange faint glow
remains always.
~

-1 M_GODLVL5_~
You suddenly feel much more powerful!
~

-1 M_GODLVL6_~
You suddenly feel much more powerful!
~

-1 M_GODLVL7_~
You suddenly feel much more powerful!
~

-1 M_GODLVL8_~
You suddenly feel much more powerful!
~

-1 M_GODLVL9_~
You suddenly feel much more powerful!
~

1 NAME NAMES~
&YSyntax:  name <newname>&W
 
This command allows a pre-authorization player to change their name to
a new one if their original choice has been denied.
  Example: A new player named Pete has his name denied. To change his
  name to 'Joe', Pete would simply type: &YName Joe&W.
 
When choosing a name, please try to choose one which is both medieval
and unique. Good names help add to gameplay and will allow you to forge
an identity for yourself. Simply put, your name should &YNOT &Wbe:&G

 - Nonsensical, unpronounceable or ridiculous.
 - Profane or derogatory as interpreted in any language.
 - Futuristic or common, such as 'Jill' or 'Laser'.
 - Similar to that of any Realms Immortal, major mob, or equipment.
 - Significant in history, mythology, or any religion.
 - Comprised of various capital letters, such as 'BrACkkA' or 'CORTO'.
 - Comprised of ranks or titles, such as 'Lord' or 'Master'.
 - Composed of singular descriptive nouns, adverbs or adjectives,
	as in 'Heart', 'Big', 'Flying', 'Broken', 'Slick' or 'Tricky'.
 - Any of the above in reverse, i.e., writing Jade as 'Edaj'.
 - Any combination of singular descriptive nouns/adverbs or adjectives, as
   in 'Metaljacket Heartbound Earthstone or Softheart'.
 
&WPlease keep in mind that names which were authed in the past do
not validate current name authing. Above are the guidelines
which all immortals follow. In addition, they may have their own
reasons for denying your name. The final determination as to the
validity of a name on the Realms is the discretion of the Immortals
and is NOT subject to debate or discussion. If your name is denied,
simply follow the guidelines and try a new one.
~

51 NAME2~
&YSyntax:  name <newname>
&W
This command allows a pre-authorization player to change their name to
a new one if their original choice has been denied.
  Example: A new player named Pete has his name denied. To change his
  name to 'Joe', Pete would simply type: &YName Joe&W.
 
When choosing a name, please try to choose one which is both medieval
and unique. Good names help add to gameplay and will allow you to forge
an identity for yourself. Simply put, your name should &YNOT &Wbe:&G
 - Nonsensical, unpronounceable or ridiculous.
 - Profane or derogatory as interpreted in any language.
 - Futuristic or common, such as 'Jill' or 'Laser'.
 - Similar to that of any immortal or major mob.
 - Significant in history, mythology, or any religion.
 - Comprised of various capital letters, such as 'BrACkkA' or 'CORTO'.
 - Comprised of ranks or titles, such as 'Lord' or 'Master'.
 - Composed of singular descriptive nouns, adverbs or adjectives,
	as in 'Heart', 'Big', 'Flying', 'Broken', 'Slick' or 'Tricky'.
 - Any of the above in reverse, i.e., writing Jade as 'Edaj'.
&W
Please keep in mind that names which were authed in the past do
not validate current name authing. Above are the guidelines
which all immortals follow. In addition, they may have their own
reasons for denying your name. The final determination as to the
validity of a name on the Realms is the discretion of the Immortals
and is NOT subject to debate or discussion. If your name is denied,
simply follow the guidelines and try a new one.
~

1 'NATION COUNCILS'~
.  Basically, the Council Positions in a Nation depend greatly on the Leader
and the Nation itself.  There are, however, a few basic positions that each
Nation should have.  Position names can, of course, be altered to suit the
Nation.  Each council should consist of 3-5 people of any level.

Ambassador - The Ambassador is a vital part of any Nation.  S-he is responsible
			 for the maintenance of internations relations and any commuication
			 between Nations.

WarLord    - The WarLord, also known occasionally as the BattleMaster, is the
			 Nation's fiercest and most experienced fighter.  S-he is the one
			 responsible for organizing monster runs in which the Nation
			 participates.

Second     - The Second is, in effect, the Leader's apprentice.  S-he should
			 always be prepared to step into the Leader's shoes in case the
			 Leader should meet an untimely demise or have to leave the Nation.

Scout      - The Scout is the one who seeks out possible Nation members and
			 recruits them.  The Scout should always be fully aware of the
			 Nation's rules, policies and procedures so they may be conveyed
			 to the recruit.
 
See also &WHelp Nations &w
~

1 NATIONS~
Nations has been set up as a venue for role playing throught the Realms.
A visit to the City of Darkhaven will reveal the Realms of Despair is truly
multi-national. It's not unusual to see a troll grunting at a pixie who is
flying over a human, or to see an ogre and orc communing over a mug
of beer. Halfling and Giths may be seen sharing conversations with Dwarves,
Elves and Half-Elves..as long as there is peace in the land. Each race
has its' own government complete with war councils. The government provides
quests and holds Nation summits to discuss international matters. Each
race speaks its' own language on the racetalk channel. 
 
The Nations came into being due to the efforts of the immortal Phalanx, in
April of 1997. 
 
Please see : HELP &BNations2&g for more information. &w
~

1 NATIONS2~
To become more involved with your race, contact any of
your race by typing 'who <name of race>' (ie  who elves).
The head of each nation has the rank "Nation Leader" in
front of their name, or visit the Nation's Meeting Rooms
for up-to-date happenings, history of races and a current
list of race leaders.
SEE: DWARVES, ELVES, GITHS,HALFLINGS, HALF-ELVES,
HALF-ORCS, HALF-OGRES, HUMANS, PIXES, TROLLS
RACETALK, ROLE-PLAYING
~

1 'NC' 'NEWBIE COUNCIL'~
Immortal Members and Associates:
Kwai   (Co-Head)      Stoney    (Co-Head) 
Blackmane (Assistant)  Julie  (Assistant) 
 
Mortal Members:
Aphrael        Aeriel         Alfador        Arminius       Arcum
Baltor         Belpolagra     Brin           Celia          Conran 
Cozen          Gallant        Glenn          Jarrel         Joe
Judy           Jyrbian        Kaarl          Kaarna         Kashee 
Korith         Krye           Kyrnia         Kurgon         Leon  
Liksani        Locke          Losac          Lyndor         Marchum 
Mikoliam       Minlas         Morvinia       Neotoyugh      Quixotic 
Raolin         Rosario        Seidan         Serina         Shonan
Sophie         Tyndale        Uthgart        Vach           Viracocha

 
Please contact any of the above players if you require assistance or need
some questions answered.  To speak directly to them, type: "tell 0.<name>
message".   (ex; tell Aeriel Could you please help me...)
These players have agreed to be available to newbies whenever possible, but do 
NOT abuse the service they are offering.  They will help direct you to areas, 
help with equipment choices, or assist with finding your corpse when you die
they will NOT help you gain levels.  Type:    WHO 'NEWBIE COUNCIL'
 
~

1 'NECROMANTIC TOUCH'~
Syntax:  c 'necromantic touch' <victim>
 
This spell drains hitpoints from the victim and returns some to the caster.
~

60 NEPHSPELLS~
.----------------------------------Spells----------------------------------
		animate dead   0%      antimagic shell   0%           black hand   0%
		   blasphemy   0%        burning hands   0%          create fire   0%
			   curse   0%            dehydrate   0%         demonic aura   0%
		   demonskin   0%            desecrate   0%          detect evil   0%
	   detect hidden   0%         detect invis   0%         detect magic   0%
	   detect poison   0%         detect traps   0%           disruption   0%
			   dream   0%       enchant weapon   0%         energy drain   0%
	   ethereal fist   0%             execrate   0%              fatigue   0%
		  feebleness   0%           fireshield   0%                flare   0%
		 flesh armor   0%        hand of chaos   0%                 harm   0%
			identify   0%          ill fortune   0%          infravision   0%
	  know alignment   0%             levitate   0%       lightning bolt   0%
	   locate object   0%        mind fortress   0%    occular explosium   0%
		   pass door   0%            pentagram   0%           pestilence   0%
			  plague   0%               poison   0%              possess   0%
	   psionic blast   0%           quickening   0%         remove curse   0%
	   sand of Hades   0%                 scry   0%   soul petrification   0%
			teleport   0%         umbral spear   0%      wine invocation   0%
	  word of recall   0%         zidros Wrath   0%
 
~

1 'NEW DARKHAVEN'~
Darkhaven, famed City of Hope, lies in the center of Despair's main
continent. The city has never fallen to the forces of Darkness and remains
one of Light's most fervent defenders. In fact, the greatest adventurers
of Despair originate from Darkhaven, certainly profiting from the Academy's
excellent teaching. The Darkhaven markets are always filled with objects
of wonder, and anyone wishing to join one of Despair's nine guilds will
certainly want to visit the City of Hope, for the guild halls are located
there.
~

1 'NEW OFCOL'~
Recommended level range: 5 - 35

The city of New Ofcol has grown so in recent years that it has been
reunited with its cousin, Ofcol. Now known under the common name
of Ofcol, the two cities form to make one of Light's stoutest defenders.
Guided by an ancient golden dragon and the Priestess of Ofcol and led by
Marshall Diana, the city's soldiers are feared by many of the darker races.
The only downside is the city's position. Located far to the northeast of
the Plains of the North, if any of the other cities of Light came under
attack, Ofcol would have great difficulty in sending aid quickly...
~

1 'NEW THALOS~
Recommended level range: 5 - 35

After the bloody destruction of Thalos, all of the citizens who had
survived banded together to create New Thalos. Far to the east of the city
of Darkhaven and north of the Ishtar river, the city stands to this day.
The Great Eastern desert lies to the south and if you are far enough east,
you can hear the tranquil waves of the Sea of Sorrows lapping against the
shore. New Thalos is one of the five great cities that dares to oppose the
forces of Darkness. Several shops attract many tourists from far away.
The Sultan of New Thalos has joined with Darkhaven and other cities in a
wholehearted effort to oppose the forces of Evil.
~

1 'NEW' 'NEWBIE' 'NEWBIECHAT' 'START' 'BEGIN'~
If you are new to the Realms, here are a few help files that will help you
get acquainted with our world. Please remember that during peak times
we host upwards of 300 players online, so we have tried to make the help
system as detailed as possible for everyone's benefit:
 
GUIDE -       Will help you learn to use your Adventurers Guide Book.
RULES -       Will lead you through the laws of the land.
SPAM -        Will explain what spam is, and why you should not do it.
CONFIG -      Will teach you about our configuration menu.
SCORE -       Will tell you about your character's personal score sheet.
MOVEMENT -    Will teach you various commands for moving about the Realms.
OBJECTS -     Will teach you various commands to use your equipment.
CONTAINER -   Will teach you about using containers to hold belongings.
CHANNELS -    Will teach you about communication with other players.
GROUP -       Will help you with grouping with other adventurers.
COMBAT -      Will teach you how to choose, start and stop a fight.
DEATH -       Will tell you about the death experience in the Realms.
PRACTICE -    Will teach you about training spells, skills, and weapons.
INFORMATION - Will cover ways to find certain types of information.
 
To use these files, type HELP <topic>.  Type 'help' for general commands.
~

58 NEWBIE~
Newbiechat is a channel created for and use by only low-level new
players.  It is designed to lessen the confusion of their transition
into the Realms, and can be used to gain answers to any questions
or problems the player may have.
~

51 NEWBIESET~
Syntax: newbieset <character>

NEWBIESET puts the default (i.e. Darkhaven Academy) equipment into the
character's inventory.  Recipient must be level 5 or lower.
~

50 'NEWCLAN APPLICATIONS'~
In all cases new clan applications would be taken the old way:
 
 - you find your three leaders (no shared leaders here)

 - you find at least two additional avatars
   ... need five avatars total start clan (3 leaders, 2 more)

 - your theme is approved by the conclave; approval is defined
   here as little more than a straining process for quality.
   If you have a theme you're willing to build on/around and
   play and it's not something like a clan that fights for the
   glory of Metallica you're probably okay
 
- you find a deity that's willing to help you in upkeeping
   the clan (i.e. be a mediator with other imms, help you get
   changes made, help you keep the theme of your clan going).
   You won't _have_ to have a deity all the time if it just
   really ends up that you can't keep one, but it's necessary
   to get started (though have pondered linking the function
   of certain clan bonuses such as healers, etc. to the clan
   having a deity, but that's a completely different matter)

NOTE:  This isn't to say an imm-created clan or clans may not be
	   introduced, but any such clans would have stipulations on
	   them and be for specific use, such as any assassin type of
	   clan.  This isn't being planned, just covering bases here
~

50 'NEWCLAN EQ2'~
Equipment option 2:  self-created
 
Created via purchase by the clan.  Either gold or glory or both used
to add affects to the items up to a cap.  Items would start off with
no affects, or perhaps a very, very low set of base stats
 - cap would be raised occasionally to allow more power to be added
   if stock item power overtakes it
   NOTE:  There are new areas coming in that are going to have stock
		  items better than existing stock items, and some will have
		  items that give unusual rewards.  The difficulty will be
		  astronomical, but the value is pretty high
 
Affects could also be removed and replaced at the will of the clan
(i.e. adjusting the item for a cost, remove hps and add some dr, etc.)
or even stripped completely by the clan I suppose if it really wanted
to screw everyone up who had their stuff.
 -  changes to affects could either be retroactive or new eq only,
	meaning when you change a bracer every bracer out there would
	receive that change, or that change would only affect new items
	made.  This is something that would be decided at inception.
 
Yes, cost would be high for affects, and we have not decided on a scale
yet.  It's very unlikely that even the existing clans could foot the
bill for a set of eq comparable even to old clan stuff in a short time.
It's meant that it'll be a slower process, though I'm sure someone will
surprise us.  The advantages are a rising cap over time, the control to
adjust stats as you want and can afford, and that the eq will likely
be more powerful when capped than the divinated eq would be.
~

-1 NEWS~
.&y &O
			  (O)
			  <M
   o          <M   
  /| ......  /:M\&c--------------------------------------------&O,,,,,,
(O)[]XXXXXX[]I:K+}=====<{H}>  Realms of Despair News=======------------>
  \| ++++++  \:W/&c--------------------------------------------&O''''''
   o          <W   
			  <W    
			  (O) &Y

  &W(&G-&W)  Deadlies set to &Y+gag &Wno longer receive eq damage messages-
  &W(&G-&W)  See help &Y build &Wfor new information -
  &W(&G*&W)  Advertisment and discussion of other muds needs to be done in
	private -- not in channels, titles, descriptions, bios, or unsolicited
	tells.  We have been exceedingly lenient on this, but too many people
	are taking advantage of it, aggravating us and annoying mortals-
  &W(&G*&W)  3 New races: &YLizardmen, Sea Elves &Wand &YDrow. &W
  &W(&G-&W)  See &YHelp Smaug &Wfor help with your personal version .
  &W(&G-&W)  Help &YFprompt &Wwill explain this new prompt option.
  &W(&G-&W)  The New Year will bring many new things to the Realms. 
  &W(&G*&W)  Try the commands &Yworth &Wand &Ywhisper &W<name> msg.
  &W(&G*&W)  If you think your char may be bugged, read the &WArchives

  **  Ignorance of the law is no excuse.... Type &Y'laws' &W  **
&Y
*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*<>*
&w
~

54 NEWZONES~
Syntax: newzones [low] [high]
Lists the vnum range for rooms/mobs/objects in prototype areas that have been
loaded.
~

-1 NEW_DEATH~
...Everything begins to fade to black.  You feel yourself leaving your body.
Rising up into the air, you feel more free than you have ever felt before...
 
However, before your deity comes to collect your soul, you feel a strange
pulling sensation as strange and colorful mists swirl around you...
 
&CA low voice fills your head with words of advice...
"When your character dies, you are reincarnated at the cathedral of Notre
 Dame de Sioux in New Darkhaven; should you one day become a member of a
 clan, guild or order you will be returned to your own altar."
 
"Your corpse, however, is left behind where you were killed, together with
 all of your equipment, so that you can attempt to return to the scene and
 loot your corpse.  Your gold stays with you.  Corpses decay after time,
 and when this happens the objects inside will decay with it."
 
"Once you have chosen a deity and gained sufficient favor, you may be able
 to supplicate to your deity for your corpse.  Type '&Whelp death&C' for more
 information.  This message will appear only on your first two deaths..."
~

1 NIVEK~
.&c
	   -""\
	.-"  .`)     (
   j   .'_+     :[                )      .^--..
  i    -"       |l                ].    /      i
 ," .:j         `8o  _,,+.,.--,   d|   `:::;    b
 i  :'|          "88p;.  (-."_"-.oP        \.   :
 ; .  (            >,%%%   f),):8"          \:'  i
i  :: j          ,;%%%:; ; ; i:%%%.,        i.   `.
i  `: ( ____  ,-::::::' ::j  [:```          [8:   )
<  ..``'::::8888oooooo.  :(jj(,;,,,         [8::  <
`. ``:.      oo.8888888888:;%%%8o.::.+888+o.:`:'  |
 `.   `        `o`88888888b`%%%%%88< Y888P""'-    ;
   "`---`.       Y`888888888;;.,"888b."""..::::'-'
		  "-....  b`8888888:::::.`8888._::-"Nivek--
			 `:::. `:::::O:::::::.`%%'|  Coder God! 
			  `.      "``::::::''    .'
				`.                   <
~

-1 NMOTD~
.
&B __________________________________________________________________________
/                                                                          \
				   &B[&w=&B] &w February 1998, the Ill Month &B[&w=&B]

  &W"&wYou will begin at the Spectral Gates, an area to explore while awaiting
   authorization.  You will pass into the Realms at this area's end...&W"
 
  &B[> &wConsult your Guide for detailed information on all topics
		&BPlease type: &Wlook book&B  to consult your copy of the Guide
	 &W\> &wSee '&Whelp start&w' for a list of helpful files
	 &BIf you need help, typing: &Whelp nc &Bwill put you in touch with
	   experienced players who can offer advice and assistance.
  &B[> &wSee '&Whelp pager&w' for screen pausing information
  &B[> &wSee '&Whelp deities&w' for information on devoting ('&Wdeities&w')
  &B[> &wSee '&Wnews&w' often to keep apprised of changes in the Realms
 
  &B[> &wEnjoy your stay within the Realms, but don't ruin it for the others:
	 &W\> &wEveryone must abide by the laws - no exceptions (type '&Wlaws&w')
&B\__________________________________________________________________________/
/                                                                          \
 &w... And in the time which passed, great tumult and misery was wreaked upon
 the stronghold of Darkhaven by the dark gods, and much change visited upon
 the carnage which remained by the gods of the light ...&B
&B\__________________________________________________________________________/
~

1 NORTH SOUTH EAST WEST UP DOWN~
Syntax: north or n
Syntax: south or s
Syntax: east or e
Syntax: west or w
Syntax: up or u
Syntax: down or d

Use these commands to walk in a particular direction.
~

1 NORTHEAST NORTHWEST SOUTHEAST SOUTHWEST~
Syntax: northeast or ne
Syntax: northwest or nw
Syntax: southeast or se
Syntax: southwest or sw
 
Use these commands to walk in a particular direction.
~

1 NOSTRUM~
Syntax:  c nostrum
 
A restorative spell of the Augurer which heals the caster of wounds.
The spell cannot be cast on others.
~

55 NOSUPPLICATE NOSUPP~
Nosupplicate as a room flag is only for use in hell, jails and some immortal
rooms. It should never be used in an area without fair warning given to mortals
and after extensive consideration and approval by the Area council.
~

1 'NOTE DATE'~
.
Also See Help note
 
~

1 NOTE NOTES~
USAGE - 'note (command) [number or text]'
   (command) can be any of the following:
	List, Read, Write, Subject, To, Show, Post, Remove, Take, Date.
   [number or text] can be left blank, be a number, or be words
	depending on what (command) you use.  Usage is explained below.

LIST - Lists the notes you can read. List [number] lists all the notes
 including, and after [number]. You must be at a note board to List.
 example: 'note list'    shows all notes on the board.
		  'note list 10' shows notes 10 and later on the board.

READ - Displays the contents of [number]. You must be at a note board to
 Read, and you must specify a [number].
 example: 'note read 5' displays note #5.

WRITE - Puts you in an editor where you can write a note. You must be
 holding a note, and have a quill in your inventory to Write.
 example: 'note write' puts you in the editor. See Help EDITOR.
 
See Also Help Note2
~

1 NOTE2~
SUBJECT - Sets the subject line of a new note to [text]. You must be
 holding a note, and have a quill in your inventory to set the Subject.
 example: 'note subject Hello World!' sets Hello World! as the subject.

TO - Sets the recipient(s) to [text]. ALL means all players. IMMORTAL
 means all immortals. You must be holding a note, and have a quill.
 example: 'note to Harakiem' sets Harakiem as the note's recipient.

SHOW - displays a note you are holding.
 example: 'note show' displays the note you're holding.

POST - takes a note you're holding and posts it to the board you are at,
 so others may read it.
 example: 'note post' puts it on the board.

REMOVE - erases note [number] from a note board. You must be at a note
 board and be the note's author or an immortal to use Remove.
 example: 'note remove 12' removes note #12, if you're its author.
 
TAKE - similar to 'Remove' but places the note in your inventory, rather
 than completely erasing it.
 example: 'note take 10' moves note 10 to your inventory from the board.

DATE - similar to 'list' but replaces who the message is to with the
 date that the note was written.
 
Also See Help &Wnote &w
 
~

51 NOTELL NOEMOTE NOTITLE SILENCE UNSILENCE~
Syntax: notitle <character>
Syntax: noemote <character>
Syntax: notell  <character>
Syntax: silence <character>
Syntax: unsilence <character>
 
NOTITLE, NOEMOTE, NOTELL, and SILENCE are used to muffle other characters, by
preventing them from setting their title, emoting, telling, and using
channels, respectively.  Characters who are notelled will also not recieve
those forms of communication.
 
Use UNSILENCE to remove a player's silence.  Simple use notell, noemote or
notitle on the character again to remove each of those restrictions.
~

53 NPCCLASSES~
CLASS #      CLASS              CLASS #      CLASS
-------      -----              -------      -----
  0          MAGE                 7          AUGURER
  1          CLERIC               20         BAKER
  2          THIEF                21         BUTCHER
  3          WARRIOR              22         BLACKSMITH
  4          VAMPIRE              23         MAYOR
  5          DRUID                24         KING
  6          RANGER               25         QUEEN
 
See also: ACTFLAGS, SPECFUNCS, BODYPARTS, SAVINGTHROWS, RIS, NPCRACES,
		  ATTACKS, LANGUAGES, DEFENSES, MSTAT, MCREATE, MMENU.
~

53 NPCRACES NPC_RACES~
A mobile may be any of the following races:
 
human         elf         dwarf        halfling     pixie        vampire   
half-ogre     half-orc    half-troll   half-elf     gith         ant       
ape           baboon      bat          bear         bee          beetle       
boar          bugbear     cat          dog          dragon       ferret    
fly           gargoyle    gelatin      ghoul        gnoll        gnome       
goblin        golem       gorgon       harpy        hobgoblin    kobold       
lizardman     locust      lycanthrope  minotaur     mold         mule 
neanderthal   ooze        orc          rat          rustmonster  shadow 
shapeshifter  shrew       shrieker     skeleton     slime        snake 
spider        stirge      thoul        troglodyte   undead       wight 
wolf          worm        zombie       bovine       canine       feline
porcine       mammal      rodent       avis         reptile      amphibian 
fish          crustacean  insect       spirit       magical      horse 
animal        humanoid    monster      god
 
See also: ACTFLAGS, SPECFUNCS, BODYPARTS, SAVINGTHROWS, RIS, NPCCLASSES,
		  ATTACKS, LANGUAGES, DEFENSES, MSTAT, MCREATE, MMENU.
~

54 'NUISANCE STAGES'~
Stages of nuisances are the affects that the victim picks up while in
that stage.  As time progresses and the victim progresses through the
stages, they pick up new problems and the old ones gradually strengthen.
So for example if they are in stage 3 and progress to stage 4.  They
will feel more affects from stage 1,2 and 3 and pick up the affects from
stage 4. Power level is how hard they get hit with the affect. So if in stage
1 the affect was 2% of the time at power level 1 it may be 4% of the time
in power level 2.  And in stage 2 the affect in stage 1 may be 4% of the
time at power level 1 and 8% of the time at power level 2.
So with that being said here are the current stages and their affects:
Stage 1:  The Thirst Stage 
		  This makes them become thirsty quicker.  The formula used is the
following: <current stage>*<power level> for how much more is added to your
following: <current stage>*<power level> for how much more is subtracted from
your thirst each time.  With 100 being not thirsty and 0 being dehydrated.
Stage 2:  The Hunger Stage
		  The hunger stage works exactly as above except, the formula
subtracts 1 from the current stage becoming: (<current stage>-1)*<power level>
Stage 3:  The Mentalstate Stage
		  In this stage each time your mentalstate worsens nuisance exagerates
the amount you worsen by. The formula used to compute how much more it 
adds or subtracts is: .4*(<current stage>-2)*<power level>.
Stage 4:  The Potion Stage
		  In this stage you can not stomach as many potions as you normally
could without the nuisance flag.  Normally if your thirst or hunger is above
48 you can't quaf anymore.  Nuisance makes this a much lower number.
The formula used is: (48-(3*<current stage>)+<power level>)
So at power level 10, stage 10 you could only quaf 8 potions on an empty
stomach.
Stage 5:  The Wait Stage
		  In this stage commands start taking longer to complete.  A
normal spell for example takes around 8-15 rounds of wait time.  With this
stage more wait time is added with the following formula:
(<current stage> -4 ) + <power level>    So at Stage 6 at power level 5,
each command would have an additionl 7 wait added to it.
Stage 6:  The Offensive Magic Stage
		   In this stage you have a chance of targeting yourself with 
offensive spells instead of whatever target is specified.  The formula
for the percentage or the time you do it is the following:
(<current stage>-5)*8 + <power_level>*6  So at first stage 6 with a power
level of 5 you would have a 38% chance to target yourself with offensive
spells.
Stage 7:  The Defensive Magic Stage
		  In this stage, if you are fighting someone you have a chance to
target them with any defensive spells you cast.  The formula used is the
following:  (<current stage>-6)*8 + <power_level>*6 
Continued in help 'NUISANCE STAGES2'
~

54 'NUISANCE STAGES2'~
Stage 8:  The Speech Stage
		  In this stage you have a chance to scramble your speech and
scramble other peoples speech (IE what you hear from them).  This works
on a percentage with the following formula:
(<current stage>-7)*10*<power level>  So at stage 9 with power level 2
speech is scrambled 40% of the time.
Stage 9:  The Movement Stage
			In this stage you start moving in random directions like a drunk
does.  This is worked out in a percentage as well. Which works of the 
following formula:  (<current stage>-8)*10*<power level>  So in stage 10
with a power level of 4 you would randomly choose an exit 80% of the time.
Stage 10:  The command Stage
		   In this stage your commands start failing (Like mentalstate).
This is done on a percentage of the following:
(<current stage>-9)*10*<power level>  So at stage 10, power level 10 the
character becomes utterly useless, as commands will fail 100% of the time.
Soon there will be more options, when they come in the help files you should
see are:  'NUISANCE' 'NUISANCE STAGES' 'NUISANCE OPTIONS'
~

51 NUISANCE UNNUISANCE~
&WSyntax:
	  &cunnuisance  <victim>
	  &cnuisance    <victim> [options]
&GUnnuisance will remove the nuisance flag from a player.
Nuisance will add a nuisance flag to the player specified by victim.
&wThis only works on pc's.  The optional parameters are as follows:
  &cmaxtime <#> <minutes/days/hours>&w
		 &wThe maxstage of nuisance. Default is 8 days.
  &ctime <#>&w:  The time in days that the nuisance flag will stay on the
		 player, once the time is expired the flag will automatically be
		 removed. If this option is not used it will default to a permenant
		 penalty.
  &cpower <#>&w:  A number from 1 to 10, 10 being the worst for the player.

&WNote the words before the options are not optional and must be used.

&RExamples:  &cnuisance mortal maxtime 5 days time 7 power 5
&GThis would nuisance mortal for 7 days with the maximum stage being
reached in 5 days, at a power level of 5.  Also note you can leave options
out:  &cnuisance mortal maxtime 5 days power 5 &Gfor example would set the
maximum time to reach the final stage at a power level 5 and use the default
value for the time.  Also options can be rearranged n like:
&cnuisance mortal power 5 maxtime 5 days time 7 &Gwould be the same as the
first example.
&GTo see info on nuisance level, power and set time of a player, use &WMSTAT.
&WFor information on stages see help 'NUISANCE STAGES'
&G
We are not to give mortals any info about nuisance.
If they notice something is wrong and ask for an explanation just
&Wtrans <name> nuisance &G
MORTS ARE NOT TO BE TOLD WHAT THE FLAG IS OR GIVEN OTHER INFO RE: IT>.
~

51 OBJECTFLAGS~
Flags that objects can have:
 
Flag        Affect                Flag        Affect
&r====        ======                ====        ======
&Gglow        &cn/a                   &Ghum         &cn/a
&Gdark        &cn/a                   &Gloyal       &cloyalty ('help loyal')
&Gevil        &cglow on det. evil     &Ginvis       &cinvisible
&Gmagic       &cprevents enchant      &Gnodrop      &ccannot drop
&Gbless       &c+20% resist dam.      &Gantigood    &czap if align +350
			&cdbl. duration poison
			&cweapon
&Gantievil    &czap if align -350     &Gantineutral &czap if align -350 to +350
&Gnoremove    &ccannot remove         &Ginventory   &cpurge upon char. death
&Gantimage    &czap if mage           &Gantithief   &czap if thief
&Gantiwarrior &czap if warrior        &Ganticleric  &czap if cleric
&Gantivampire &czap if vampire        &Gantidruid   &czap if druid
&Gorganic     &c+20% suscept. dam.    &Gmetal       &c+20% resist damage
&Gdonation    &cprevents get all      &Gclanobject  &cn/a
&Gclancorpse  &cn/a                   &Gprototype   &cn/a
&Gnolocate    &cnot visible on locate
 
&YAdditional flags:
&Gcovering      &cItems inside this are 'covered', use 'look under <object>' to
			  see 'inside'.  The object does not have to be a container to
			  be a covering object.  Use 'reset put' to indicate objects to
			  be covered by this object.&w
~

1 OBJECTS~
To see the objects you currently possess, type INVENTORY and EQUIPMENT>
INVENTORY is the items you are carrying, but are not currently wearing.
EQUIPMENT shows you the equipment you are currently wearing.
 
You may WEAR, WIELD, or HOLD equipment to use it.  To stop using a piece
of equipment, you REMOVE it.  Before you may wield a new weapon, you must
first REMOVE the old weapon. 
 
You can gain information on your objects by using LOOK or EXAMINE.  EXAMINE
tells you the condition of your item, as a more detailed form of LOOK.
 
To find out more information on objects, read sections 9, 10 and 17 of your
Adventurer's Guide book.
~

51 OBJECTTYPES~
Object types listed in bit order:
 
  None        Light     Scroll     Wand        Staff       Weapon
  Fireweapon  Missile   Treasure   Armor       Potion      Worn
  Furniture   Trash     Oldtrap    Container   Note        Drink_con
  Key         Food      Money      Pen         Boat        Corpse_npc
  Corpse_pc   Fountain  Pill       Blood       Bloodstain  Scraps
  Pipe        Herb_con  Herb       Incense     Fire        Book
  Switch      Lever     Pullchain  Button      Dial        Rune
  Runepouch   Match     Trap       Map         Portal      Paper
  Tinder      Lockpick  Spike      Disease     Oil         Fuel
  Short_bow   Long_bow  Crossbow   Projectile  Quiver      Shovel
  Salve
 
Not all are implemented.
 
See OSET ITEMVALUES ARMORCLASS.
~

51 OBJTRIGGERS OPTRIGGERS~
Trigger Optnl Triggering Variable Explanation
------- ----- ------------------- -----------
Wear          <percentage>        [when a player wears the object]
Remove        <percentage>        [when a player removes the object]
Speech   {p}  <keyword / phrase>  [says or tells from same room as mob]
Rand          <percentage>        [randomly triggered based on percentile]
Sac           <percentage>        [when a player sacrifices the object]
Zap           <percentage>        [when the player is zapped due to alignment]
Get           <percentage>        [when a player gets the object]
Drop          <percentage>        [when a player drops the object]
Damage        <percentage>        [when the object is damaged]
Repair        <percentage>        [when the object is repaired]
Greet         <percentage>        [when a mob/player enters the room]
Exa           <percentage>        [when the object is Examined or Looked upon]
Look          ** THIS TRIGGER IS NOT CURRENTLY IN USE **
Push          <percentage>        [when a player pushes an object]
Pull          <percentage>        [when a player pulls an object]
Use           <percentage>        [see 'help useprog' for details]
 
For objects see also: OPSTAT, OPEDIT, TRIGGER, OPCOMMANDS, IFCHECKS, VARIABLES.
~

52 OBJTYPENUMS~
.&r--------------------------------------------------------------------
  
				   &GNUMBER                 TYPE of OBJECT
  
					 &c1                       Light
					 2                       Scroll
					 3                       Wand
					 4                       Staff
					 5                       Weapon
					 9                       Armor
					10                       Potion
					15                       Container
					16                       Note
					18                       Key
					19                       Food
					23                       Mcorpse
					24                       Pcorpse
					26                       Pill
					34                       Book
   
 &r--------------------------------------------------------------------
 
	 &YSEE ALSO: &wMPEDIT, OPEDIT, RPEDIT, IFCHECKS, IFCHECKS2, IFCHECKS3
				 ITEMVALUES, OBJECTTYPES, VARIABLES,
~

1 'OCCULUTUS VISUM'~
Syntax:  occulutus visum
	or:  occu (or other unique abbreviation)
 
Triggers the vampire's innate ability to sense all manner of the unseen.
 
See DETECT INVIS, DETECT HIDDEN
~

1 'OCEAN KEEP'~
Recommended level range: 20 - 50

The city of Ocean Keep borders the Ocean of Storms, a sea whose waves
are in perpetual furor and whose skies are always dark. Ruled by the
Lord and Lady Willem, the city is a thriving seaport where justice
and peace rule. However, tales of pirates under the leadership of a
man named Faragut have been running wild, and it seems there is more
to the 'peace' in Ocean Keep than meets the eye.
~

1 OFCOL~
Recommended level range: 1 - 50

The original city of Ofcol has grown so in recent years that it has
been reunited with its cousin, New Ofcol. Now known under the name
of Ofcol, the two cities form to make one of Light's stoutest defenders.
Guided by an ancient golden dragon and the Priestess of Ofcol and led
by Diana, the city's soldiers are feared by many of the darker races. The
only downside is the city's position. Located far to the northeast of the
Plains of the North, if any of the other cities of Light were to come under
attack, Ofcol would have great difficulty in sending aid quickly...
~

1 'OGRE VILLAGE'~
Long ago, before the threats of Shimmergloom, Orcus or Lord Seth, the
barbaric ogres waged war against our ancestors. With their strange
shamans and fearsome strength and size, the ogres were often able
to destroy the smaller villages of Despair. Many years of war passed,
and the ogre population slowly dwindled, until only a handful of them
remained. The savage giants retreated to their sole remaining village and
awaited annihilation. However, pity overcame the avatars of Darkhaven
and they asked the mages of the Tower of High Sorcery to ensure that the
ogres lived in peace and no longer meant a threat to the Light. A maze of
mists was woven about the ogre village, simple to solve for any intelligent
race, yet confusing for ogres. The threat of the ogre race ended long ago and
very few visit, or attack, them.
~

51 OGRUB~
Syntax: ogrub <num of lines> <sort order> [keywords] [operands]
 
ogrub 20 level<8 avg>12
Display weapons below level 8 that do more than 12 average damage.
 
ogrub 20 +wear type=armor hp>100 dr>20
Display armor with more than 100 added hp and 20 added dam roll. Sort
by wear location.
 
ogrub 20 +type nm ng vnum>=900 vnum<=951 level>45 hp>0
Display all eq from Olympus that is above level 45 and affects hp.
Sort by object type in ascending order. Display only that eq held
by players - ignore any on mobs or on the ground.
 
ogrub 20 +name name<>gloves
Display all eq with the substring "gloves" in the name field. Sort
by object name. Note that often objects are named with two or three
keywords like "gauntlets steel gloves". The substring operator <>
is used to search fields for substrings.
 
ogrub 20 +cname np ng type=light int>0
Display lights on mobs that raise intelligence. Sort by character name.
Ignore any lights on players or on the ground.
 
ogrub 20 -dr np ng luck>0 level>=10 level<=20
Display eq that raises luck and is between levels 10 thru 20. Sort by
object damroll in descending order. Only display eq on mobs.
 
ogrub 20 +level or hr>25 dr>25 hp>100 mp>100 ac<-100
Display eq that raises hit roll more than 25 or dam roll more than 25
or hit points more than 100 or mana points more than 100 or lowers
armor class by more than 100 (remember the lower the AC the better)
Sort by object level in ascending order.
 
ogrub 20 or d2 sav0>1 sav1>1 sav2>1 sav3>1 sav4>1
Display equipment that have affects resulting in any saving throws that are
greater than one. Note that positive saving throws are bad for characters
and negative ones are good. The more negative the better. The d2 keyword
requests an alternate form of display which shows the saving throws.
 
ogrub 20 nm cname=joe type=weapon    Display Joe the player's weapons
ogrub 20 np cname=joe type=armor     Display Joe the mob's armor 
 
See Also: HELP OGRUB DATA
 
~

52 'OGRUB DATA'~
Syntax: ogrub <num of lines> <sort order> [keywords] [operands]
 
Here is some reference data you will need in order to use OGRUB.
 
FIELDS                      TYPES      WEAR     MODIFIERS
cname - chr name          1 light      1 take     or - select any
count - obj count         2 scroll     2 finger  +field - sort up
vnum  - obj vnum          3 wand       3 neck    -field - sort down
type  - obj type          4 staff      4 body     np - no players
name  - obj name          5 weapon     5 head     nm - no mobs           
level - obj level         9 armor      6 legs     ng - not on the ground
wear  - obj wear locn    10 potion     7 feet     d2 - display saving throws
avg   - obj avg dam      15 container  8 hands
hr    - obj hit roll     16 note       9 arms     OPERATORS
dr    - ojj dam roll     18 key       10 shield    = equals
hp    - obj hit pts      19 food      11 about    != not equal
mp    - obj mana pts     23 mcorpse   12 waist    >  greater than
ac    - obj armor class  24 pcorpse   13 wrist    >= greater than or equal
str   - obj str affect   26 pill      14 wield    <  less than
dex   - obj dex affect   24 book      15 hold     <= less than or equal
con   - obj con affect                16 dual     <> substring
wis   - obj wis affect                17 ears
int   - obj int affect                18 eyes
luck  - obj luck affect               19 missile
sav0  - save_poison
sav1  - save_rod
sav2  - save_para
sav3  - save_breath
sav4  - save_spell
 
Don't be scared by the fact that things like "pill" are referenced by
a number like 26. If you want info about pills, you can request the
info either by the name "pill" or the number "26".  ***SMILE***
 
See also: HELP OGRUB
 
~

52 OGRUB2~
Syntax: &Wogrub <num of lines> <sort order> [keywords] [operands]
&w 
Here is some reference data you will need in order to use OGRUB.
&GFIELDS                      
&gcname - chr name   wear - obj wear locn  ac  - obj a.c.
count - obj count  avg  - obj avg dam    str - obj str 
vnum  - obj vnum   hr   - obj hit roll   dex - obj dex 
type  - obj type   dr   - ojj dam roll   con - obj con 
name  - obj name   hp   - obj hit pts    wis - obj wis 
level - obj level  mp   - obj mana pts   int - obj int 
luck  - obj luck                                     
&GTYPES
&g1 light        2 scroll  3 wand  4 staff  5 weapon    9 armor    10 potion 
15 container  16 note   18 key  19 food  23 mcorpse  24 pcorpse  26 pill 
24 book
&GWEAR
&g 1 take   2 finger   3 neck     4 body    5 head    6 legs    7 feet   8 hand
 9 arms  10 shield  11 about   12 waist  13 wrist  14 wield  15 hold  16 dual 
17 ears  18 eyes    19 missile
&GMODIFIERS
&gor - select any.  +field - sort up.  -field - sort down.
np - no players.  nm     - no mobs.  ng     - not on the ground.
&GOPERATORS
&g = equals                   != not equal     > greater than  
>= greater than or equal     < less than    <= less than or equal
<> substring
&wDon't be scared by the fact that things like "pill" are referenced by
a number like 26. If you want info about pills, you can request the
info either by the name "pill" or the number "26".  ***SMILE***
~

1 'OLD MARSH'~
Recommended level range: 20 - 35

The old marsh lies far to the southwest of Darkhaven. Once a part of
Haon Dor, heavy rain and lack of drainage created the murky bog. It
is populated by trolls and other vile beings who enjoy such a climate.
~

1 'OLD THALOS'~
Recommended level range: 1 - 30

Those who travel back in time to see the Tree of Life often encounter
the very beginnings of Thalos, when it was far more powerful than
Darkhaven and was protected by Gordon the Brave, Defender of the
Light. The sights and wonders to see in this city are always too much
to tell by those who witness it, for it is a constant reminder of what has
been lost.
~

63 OLDCHANGES~
.*> Online building is now implemented.  This includes rooms, mobiles,
	objects and programs for each as well as resets.
 *> Clans are now in.
 *> Creatures will hunt you down if you flee.
 *> The experience system has changed significantly.  You now receive exp
	with every hit based on the damage you inflict.  (includes spells)
 *> You will only be able to practice your skills and spells so much, the
	rest must be learned through use of the spell or skill.
 *> Warning:  depending on your dexterity, drinking potions during combat
	may be difficult.  NOTE:  potions now count as a drink.
 *> Corpses are now saved across crashes and reboots, eliminating the need
	for most reimbursements for lost corpses. -- see 'help reimbursement'
 *> Major changes have been made to notes, and player mail has been added.
	Type 'help mail' and 'help note' for more information.
~

0 OLDSCORE~
Syntax: oldscore

Oldscore shows the score information in a different way than 'score'.
~

53 OLIST~
Syntax: olist
	  :	olist <first object>
	  :	olist <first object> <last object>

This command will list all of the prototype objects in your area, when used 
with no arguments.  When used with a single argument it will list all 
objects including and after the argument, and when used with two arguments, 
it will list all objects including and between the two. 
~

1 OLYMPUS~
Recommended level range: 10 - 50

At the Moment of Treason, the Lost Gods entered Es'Tilith and were
sentenced to an eternity of imprisonment.  To spite the Lost even
further, the Lord of Darkness forged two cities of the Gods, which he
named Olympus and Hades. Weakened forms of some of the Lost Gods
of Good were imprisoned in Olympus, while a number of the Evil Lost were
sentenced to Hades. Though these impersonations act like Gods, they
cannot even come close to matching the power of their true forms trapped
inside Es'Tilith. It has even been possible for these illusions to be killed
by powerful Avatars. 
~

53 OMENU~
Syntax: omenu <object name> [menu page] (defaults to 'a' if none given)

Omenu will bring you into a menu system of editing objects.  To use omenu,
you must be holding the object that you are editing in your inventory.  To
choose an option in the menu, type the number of the section followed by the
desired letter, and any variables that may follow.

See MENU for generic menu commands.
~

53 OPEDIT~
Syntax:  opedit <object> <command> [number]  [program] [arguments]
Syntax:  opedit <object> add       <program> <arguments>
Syntax:  opedit <object> insert    <number>  <program> <arguments>
Syntax:  opedit <object> edit      <number>  [program] [arguments]
Syntax:  opedit <object> delete    <number>
Syntax:  opedit <object> list
 
Add, insert and edit will put you into the line editor to edit your program.
The arguments consist of a trigger, plus any arguments associated with that
trigger.  Object programs are like mobprograms, with trigger differences.
 
To edit an Objprogram, you must be holding the object in your inventory.
 
See OPSTAT, TRIGGER, OPTRIGGERS, OPCOMMANDS, IFCHECKS, IFCHECKS2, VARIABLES
~

65 OPEN CLOSE LOCK UNLOCK PICK BOLT UNBOLT~
Syntax: open   <object|direction>
Syntax: close  <object|direction>
Syntax: lock   <object|direction>
Syntax: unlock <object|direction>
Syntax: pick   <object|direction>
Syntax: bolt   <direction>
Syntax: unbolt <direction>
 
OPEN and CLOSE open and close an object or a door.
LOCK and UNLOCK lock and unlock a closed object or door.  You must have
the requisite key to LOCK or UNLOCK.
PICK can open a lock without having the key.  In order to PICK successfully,
you must practice the appropriate skill.
 
BOLT and UNBOLT bolt and unbolt a closed door.  You must be on the side of
the door that has the bolt to BOLT or UNBOLT the door.
~

53 OPSTAT~
Syntax: opstat <object/object vnum>
 
Opstat will display all of the objprograms that have been written for the
specified object.  If a copy of the object exists in the game, it can be
accessed by its vnum.
 
See OPEDIT, TRIGGER, OPTRIGGERS, OPCOMMANDS, IFCHECKS, IFCHECKS2 VARIABLES
~

0 ORDER~
Syntax: order <character> command
Syntax: order all command

ORDER orders one or all of your charmed followers (including pets) to
perform any command.  The command may have arguments.  You are responsible
for the actions of your followers, and others who attack your followers
will incur the same penalty as if they attacked you directly.

Most charmed creatures lose their aggressive nature (while charmed).

If your charmed creature engages in combat, that will break the charm.
~

1 ORDERS~
Syntax:  orders
	or:  orders <order name>
 
This command will display a list of all currently existing Orders, as
well as their deities, leaders, mobkills and mobdeaths.
 
You can also use 'orders <order name>' to view information on the
specified Order.
 
See also GUILDS, ORDERS
 
~

0 ORDERTALK~
Syntax:  ordertalk <message>
 
Provided that you are in an Order, ordertalk will send the message to
all members currently online, as well as the deity if they are online.
~

51 OSET~
Syntax:  oset <object>    <field> <value>
		 oset object on
 
If the copy of the object you are currently modifying has the PROTOTYPE flag,
your modifications will also modify the index of that object, which all other
instances of the object are based on.  In the future, every copy of that obj
will reflect your modifications.
 
Also be aware that modifications to the object affect list (everything that
is listed after 'object values') will affect _every_ copy of that object in
the game, including old copies (even if they are not online).  Thus if you
change a prototype-flagged copy of a sword to +4 damroll, every copy of that
vnum ever made will reflect that change.  If you add a 'magic' flag to that
sword, however, only copies made after the change will be affected.
 
If the copy of the object you are modifying does NOT have the PROTOTYPE flag,
your modifications will affect only that copy.
 
OSET ON will lock you onto a particular object.  Once locked on, all commands
commands will imply 'oset <object>'.  Hitting enter while in OSET ON gives
you an ostat of the object you are working on.  To get out of OSET ON, simply
type the word DONE. Example:
 
		oset staff on
		long A long gnarled staff of burnished oak lies here.
		type staff
		done
 
See AFFECTTYPES, WEARFLAGS, OBJECTFLAGS, OBJECTTYPES, ARMORCLASS
ITEMVALUES, WEAPONTYPES, VARIABLES, OMENU, LAYERS and LAYERS2
~

53 OWHERE~
Syntax 'Owhere <object/keyword>

This command will allow you to search for a certain item by using its
keyword. This will list the name of the object, its' location, the name
of the player(s) carrying it and the number of the objects currently online.
are currently on-line.
 
~

0 PAGELENGTH~
Syntax: pagelength <number of lines>

This command sets your screen to only display a certain amount of lines.
After setting pagelength, type clear to reinitialize your screen.
~

0 PAGER~
Syntax:  Pager <# of lines per screen>
Syntax:  Config +pager       (turns page pausing on)
Syntax:  Config -pager       (turns page pausing off)
Syntax:  Pager               (toggles pager on/off)
 
Pager is a configurable item that will pause screen scrollage at the user
specified pager length.  To set it, first set a desired page length using:
 
Pager <# of lines>
 
Initially, page length is set to 24 lines.  Once page length is set, use
the Config command to turn it on and off, or simply type 'pager'.
 
Commands available within the pager are:
 
(C)ontinue, (R)efresh, (B)ack, (Q)uit.
 
With 'continue' being the default item.  When the screen pauses, hit the
enter key to continue, or type another choice and hit the enter key.
 
See also: CONFIG
~

-1 PALADIN PALADINS~
The Paladin
___________________________________________________________
"You are the most excellent of men and your lips have been anointed with
grace, since God has blessed you forever.  Gird your sword upon your side,
O mighty one; clothe yourself with splendor and majesty.
 
In your majesty ride forth victoriously in behalf of truth, humility and
righteousness; let your right hand display awesome deeds. 
 
Let your sharp arrows pierce the hearts of the king's enemies; let the
nations fall beneath your feet...
 
You love righteousness and hate wickedness; therefore God, your God, has 
set you above your companions by anointing you with the oil of joy...
 
I will perpetuate your memory through all generations; therefore the
nations will praise you for ever and ever..."
___________________________________________________________
 
Paladins are warrior priests who draw their power from acts of righteousness
and strict adherence to the Code of The Temple of Solomon.  Their strength
in battle, combined with the ability to perform limited miracles is offset
by the difficulty they experience in perfecting their craft, and the penalties
they suffer when they stray from the path of good.
~

61 PALADINSPELLS~
.        aqua breath  25%                armor  90%         benefic aura  85%
   bethsaidean touch  44%                bless  90%      continual light  69%
		 create food  80%         create water  71%           cure light  90%
		 detect evil  58%        detect hidden  60%        detect poison  18%
		 dispel evil  90%          expurgation  37%                float  54%
			 fortify  75%       hezekiahs cure  85%             identify  75%
	  know alignment  50%              refresh  80%         remove curse  69%
		  resilience  70%      sacral divinity  75%               shield  85%
solomonic invocation  95%           stone skin  75%       word of recall  90%
 
~

1 PARALYZE~
c 'paralyze' victim
 
This spell will drastically alter your opponents ability to fight back
for a brief time.
~

1 'PARANOIA'~
Syntax: c paranoia <victim>
 
This evil spell will cause the victim to suffer from an unholy terror,
making them more susceptible to attack, and less competent in the
use of the mystical arts.
~

51 PARDON~
Syntax: pardon <character> killer
Syntax: pardon <character> thief
Syntax: pardon <character> attacker

PARDON pardons a player for their crimes.
~

0 PARRY~
Syntax:  operates automatically
 
Parry is a skill which assists in warding off incoming attacks.  If you
successfully parry attack, you take no damage from it.  Parry is an
autonomic skill, but you must be wielding a weapon to use it.
 
~

53 PART BODYPARTS XFLAGS~
Misc body parts:
HEAD     ARMS    LEGS   HEART        BRAINS      GUTS        HANDS   FEET
FINGERS  EAR     EYE    LONG_TONGUE  EYESTALKS   TENTACLES   FINS    WINGS
TAIL     SCALES  HOOVES FORELEGS     HAUNCHES
 
Used for attacking:
CLAWS    HORNS   TUSKS  TAILATTACK   SHARPSCALES
~

0 'PASS DOOR'~
Syntax: cast 'pass door'

This spell enables the caster to pass through closed doors.
~

0 PASSWORD~
Syntax:  password  <new password>   <new password>
 
PASSWORD changes your character's password.  You repeat the new password only.
If you do not get it correctly it will not work.  This should end the typo
locking you out of your character.
The PASSWORD command is protected against being snooped or logged; it is
impossible for any immortal to in any way see, find or retrieve it.  It
is the responsibility of the player to ensure that the password of the
character is kept secure.
 
Passwords can not contain certain characters, or spaces.  We also advise
that you use an alphanumeric password (one containing both numbers and
letters) as they are harder to guess.  We also recommend that you choose
a password that is greater than 6 characters in length.  A good rule of
thumb is if it is in the dictionary, it is probably not a good password.
 
NOTE:  if you decide to trade a character, you do so at your own risk.
Immortals are not responsible for ensuring fair trades.  You may seek an
immortal to oversee a trade, but it is not their  responsibility.
 
&YThe password policy is:  password equals ownership.&w
 
See also PASSWORD_ZMUD
~

2 PASSWORD_ZMUD~
When you're using zMUD and want to change your password, remember to change
it in the zMUD character settings as well as on the mud.  The MUD's command
for this is:  password <new password> <new password>
In zMUD, click on 'File', then 'Another Character', or 'File', then 'Open'
to access the character settings - and change the password there.
If you have forgotten your character's password but can still log on with
the character, you can still find out what the password is.  Log on with
that character, click on 'View', then 'Preferences' and then click on
General Settings'.  Find the checkbox for 'Gag Password' and make sure the
box is not checked.  Click on 'Ok' to close the dialog box.
Type the command #say %pass [enter].  Your password will be shown on your
screen, but not sent to the mud.  Write it down, for future reference.

For more information, see HELP PASSWORD and the zMUD web site:
http://www.zuggsoft.com

See also PASSWORD
 
~

62 PATH~
~

0 PATH PATHS~
When you come the choices of the paths, there are 2 different paths
to choose from. The differences are stated below.

Peaceful:
If you choose the path of the peaceful, you are not allowed to kill
other players, and other players are not allowed to kill you. You are
allowed to kill mobs, and mobs are allowed to kill you.

Deadly:
If you choose the path of the deadly, you are allowed to kill other
players, and other players are allowed to kill you. You are allowed
to kill mobs, and mobs can kill you.
For more information on pkill and pkill laws, type 'help deadly' or
'laws pkill'.
~

60 PC~
Wedding renamer
Project list
High scores
~

0 PCOLORS 'PROMPT COLORS'~
The following are the tags used for adding color in your text.

Foreground text tag: &&
Tokens for foreground text are:

&&x - Black           &&r - &rDark Red&D  &&g - &gDark Green&D
&&O - &OOrange (brown)&D  &&b - &bDark Blue&D &&p - &pPurple&D
&&c - &cCyan&D            &&w - &wGrey&D      &&z - &zDark Grey&D
&&R - &RRed&D             &&G - &GGreen&D     &&Y - &YYellow&D
&&B - &BBlue&D            &&P - &PPink&D      &&C - &CLight Blue&D
&&W - &WWhite&D
&&v or &&V - &vReverse the colors.&D
&&u or &&U - &uUnderline the text.&D
&&i or &&I - &iItalicize the text.&D
&&s or &&S - &sStrikeover text.&D
&&D - Resets to custom color for whatever is being displayed.
&&d - Resets to terminal default color.

Blinking foreground text tag: }}
Tokens for blinking text are:

}}x - Black           }}r - }rDark Red&D  }}g - }gDark Green&D
}}O - }OOrange (brown)&D  }}b - }bDark Blue&D }}p - }pPurple&D
}}c - }cCyan&D            }}w - }wGrey&D      }}z - }zDark Grey&D
}}R - }RRed&D             }}G - }GGreen&D     }}Y - }YYellow&D
}}B - }BBlue&D            }}P - }PPink&D      }}C - }CLight Blue&D
}}W - }WWhite&D

When putting color in something, please try to remember to close your
colors with a &&D tag so that anyone viewing it won't have to deal with
color bleeding all over the place. The same holds for italic or underlined
text as well.

The &&d tag should only be used when absolutely necessary.

Background color tag: ^^
Tokens for background color are:

^^x - Black         ^^r - Red           ^^g - Green
^^O - Orange        ^^b - Blue          ^^p - Purple
^^c - Cyan          ^^w - Grey

If setting both foreground and background colors. The foreground must
be used before the background color. Also, the last color setting in your
prompt will wash over into the text you type. So, if you want a set
of colors for your typed text, include that at the end of your prompt set.
 
Example (assuming current h.p.'s of 43 and mana of 23): 
 
Prompt &&Y^^b<%h/&&x^^r%m>&&w^^x = <43/23>
		{A}     {B}       {C}

A) Yellow with blue background.
B) Black with dark red background.
C) Light Grey with black background.
 
See also: PROMPT, ANSI&D
~

55 PCRENAME~
syntax pcrename <oldname> <newname>
 
This command permanently changes a players name and should be used
sparingly. It does a check to ensure there is no other player by that
name already in the files.
~

51 PEACE~
Syntax: peace

PEACE causes all characters in a room to stop fighting.
~

0 PEEK~
This skill shows you a character's inventory when you look at a character.
Use of the skill is automatic when you 'look' at a character after you
have practiced the skill.
~

1 PENTAGRAM~
&YSyntax&W: cast pentagram
 
As you make the mark of the Pentagram, all that is evil is summoned forth
to provide you a circle of protection.
~

1 PESTILENCE~
Syntax: c pest
 
This spell requires a pentagram and a pixie wing and will utilize magic
to transform the pixie wing into a swarm of fun loving locusts.
~

0 PET PETS~
You can buy pets in the pet shop.  You may buy one more pet each time you
advance in level.  Your pet-buying opportunities do not accumulate; use
them or lose them.  This policy prevents wholesale abuse of pets.
 
You are responsible for the actions of your pets.
 
See also &WHelp PETSAVE &w
~

1 PETSAVE~
Petsaving is automatic in the Realms. When you purchase a pet, it is
loyal to you until its' death. Your pet will automatically save when
you save and quit when you quit. If you die, your pet may still live
and vice-versa. 
Pets remain loyal until they die or until you purchase a new pet. If
you lose link your pet may be killed without you around to protect it.
In no instances will pets be reimbursed. Do not even ask.
  *** You may only purchase one pet per level ***
~

2 PHHILOSTRATE~
.             ,   .-'"'=;_  , 
			  |\.'--`-.`-`;/|
			  \.` '.'--.` './
			  (\`,__=-'__,'/)
		   _.-'-.( &Rd&W\_/&Rb&W ).-'-._
		 /'.-'   ' .---. '   '-.`\
	   /'  .' (=    (_)    =) '.  `\
	  /'  .',  `-.__.-.__.-'  ,'.  `\
	 (     .'.   V       V  ; '.     )
	 (    |::  `-,__.-.__,-'  ::|    )
	 |   /|`:.               .:'|\   |
	 |  / | `:.              :' |`\  |
	 | |  (  :.             .:  )  | |
	 | |   ( `:.            :' )   | |
	 | |    \ :.           .: /    | |
	 | |     \`:.         .:'/     | |
	 ) (      `\`:.     .:'/'      ) (
	 (  `)_     ) `:._.:' (     _(`  )
	 \  ' _)  .'           `.  (_ `  /
	  \  '_) /   .'"```"'.   \ (_`  /
	  `'"`  \  (         )  /  `"'`
   ___        `.`.       .'.'        ___
 .`   ``"""'''--`_)     (_'--'''"""``   `.
(_(_(___...--'"'`         `'"'--...___)_)_)
~

1 PHRED~
.          / ;\`"`.       ,--------.     |:.     %|:.             |
		  ( /  ) / \      | *ULP*  |     |:.     %|:.             |
		/`/     /#\ `.     "``\/'''"     |:.     %|:.             |
	   /__|     "'" /`\/']               |:.     %|:.             |
	   `/```\       \@  @                |:.     %|:.             |
	   /_____\    ;-.,_,/                |:.     %|:.    Phred    |
	   ` /````|   -.___/                 |:.     %|:.             |
		/____.--.   \-.                 /:.     %/:.              "
		`/```|   \   \|        .____.``:.____.``:.                \
		/____|        \      /":.   %%/":.                         \
		`  ,,!    /    \    /:. /:. %/:. /:.                        \
		   \;\   /`     '   |:. |:. %|:. |:.                         |
		   / `  /        '  |:. |:. %|:. |:.                        /
		   \___/        @ } ``````-```````````````````````````
			  \          ,
~

57 'PICK LOCK'~
This skill enables you to pick open locked doors.
~

1 PICNIC~
. &W:o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):  
 
   &GEveryone in the Realms has been invited to Internet Direct's 6th Annual  
   Summer Picnic. On Saturday, July 18,  from noon to dusk, Areas 4 and 5 
   at High Park (Toronto, Ontario, Canada) will be filled with iDirect 
   staff and having a great time. 
 
   Last year the steel band was incredibly popular, so this year we'll be 
   featuring the Pantastix steel band. We'll have clowns, prize drawings,
   and as usual, the hotdogs and burgers are on us! 
 
   As always with our events, admission is free but we do need to
   know in advance how many are coming.  To RSVP, please email:
 
						   &Wtical@idirect.com
 
   &GOnce again, we ask that everyone bring along a donation of
   non-perishable food item to be given to a food bank to help
   those less fortunate.
 
&W:o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):o):&w

~

51 PIPEFLAG~
The following flags may be used with the item type pipe in the v3 item
value:
PIPE_TAMPEDPipe has been tamped (not really used yet)
PIPE_LITPipe is lit (required for smoking)
PIPE_HOTPipe is hot
PIPE_DIRTYPipe is dirty (not really used yet)
PIPE_FILTHYPipe is REALLY dirty (not used at all yet)
PIPE_GOINGOUTPipe is about to go out
PIPE_BURNTNot used yet.
PIPE_FULLOFASHPipe is full of ashes, and needs to be emptied.
 
~

1 PIT ETCH PITTING ETCHING~
Pitting and etching occurs when acid hits your armor, due to spells or
breath. It permanently reduces the armor class of the item and reduces
the value of the armor.
 
~

1 'PIXIE FOREST'~
Recommended level range: 1 - 5
 
When the balrogs and carnifex laid siege to the Realm of Kontaur, the land's
sylvan races fled to a portion of Haon Dor west of the city of Darkhaven.
The pixies and sprites now live in harmony due to the protection offered by
the strong city and its' neighbors. A quasit imp watches over the sylvan
races. Some say it is only a matter of time before these peaceful beings
are utterly destroyed.
 
~

0 PIXIE PIXIES~
Pixies are small Elfin creatures with gossamer wings.  They are very much
more intelligent than most other races, but their strength and constitution
suffers from their small size.  Because of this, the Pixie often choose the
calling of magic and excels especially in the arts of the Mage; the mind of
the Pixie knows no equal.  Pixies possess the obvious ability of flight.
 
Pixies are slight of stature, standing less than five feet in height.  Both
their skin and hair color varies from among all the colors of the rainbow.
 
Pixies gain experience on a scale of normal rate * 1.08.
~

0 PKMAP~
.                   (8) (7)   MAP OF PKILL TOWN                1)  Ocean Keep
(1)<-\    (*)  (11)-(9)-(6)-                                   2)  Haon Dor
	 |              (12) |                                     3)  Repairs
	  \    --------------|-----------                          4)  One W of
	   \                 |       (*)                               Crossroads
	   | |        (5)    |                                     5)  Potions
  (2)<-+-+-------------------------DAEMON WALK---------->(4)   6)  Gravoc
		W| (*)           |   (3)                               7)  Healer
		A|         |     |                                     8)  DH Board
		L----ASHEN------------ALLEY--------                    9)  Pkill Board
		L|               |           (*)  |                    10) Galaxy
		 |  MOLTEN FLUX                                        11) Practice 
		 -------------------------------B--------------------  12) Oracle Brd.
	   M |            H|          |     L|                  | M *) Mud
	   O |            E|          |-    A|   |              | O    Tunnels
	   L |            A|       ------   C|----              | L
	   T |            T|       |ZONE|   K|                  | T
	   E |        ----H-----------------M-------            | E
	   N |        |   E|               A_|                  | N
		 |            N|______________S|_ DIRGE             |
	  F  |              R O W        S_| |-----AL           | F
	  L  |                          T|   |   \|/ LE         | L
	  U  |                          R|   |   (10)  Y        | U
	  X  ---------------------------------------------------- X
			  MOLTEN FLUX
 
Note: There may be other, hidden exits from pktown.
Note: If walking to Pktown, say "I seek the ruins" at one of the following:
	  'Edge of Haon Dor forest', 'On a long, rusted bridge',
	  'The crossroads on the hilltop', 'Path in the plains',
	  'On a Slanted Path'
Note: To get to the Darkhaven Art Gallery, say 'the gallery' to Gravoc's
	  Pedagogic Spirit
Note: If you're under lev. 6, you may return to the Academy be telling
	  Gravoc "the academy".
~

1 PK_EQ~
[ 5  3005] A bone-encrusted cloak.
[ 5  2024] A coat of bone plate.
[ 5  2152] A gleaming bone buckler.
[ 5  6662] A guard's waistflesh.
[ 5  1625] A marble-chipped bracer.
[ 5  1697] Boots of taut hide.
[ 5  1445] Buckled hide sleeves.
[ 5  1380] Sinew-tied leggings.
[ 5  1795] Soft hide gauntlets.
As well as any items that can be purchased in clan headquarters.
If you are unsure about an item and wish verification, feel free
to ask.  But if you have any of these items on peacefuls, I'd remove
them as soon as possible.  Thanks for your time and cooperation
The following eq is for Pk only
~

1 'PLAINS OF THE NORTH'~
Recommended level range: 1 - 20

The Plains of the North stretch northward from Darkhaven, eventually
leading to Ofcol, Olympus and the Valley of the Elves. The plains are
large unpopulated and can be safely traveled at any time of day.
~

0 'PLANT PASS'~
Syntax:  cast 'plant pass' <victim>
 
This spell allows the caster to merge with nearby foliage, and flow through
it to emerge near the victim.
 
Obviously this spell requires a good deal of natural foliage in both the
caster's and the victim's location.
~

55 PLRSTATS~
The following results were obtained by leveling a character with maxed
attributes from 1 to 50 a total of 20 times.  The results were averaged
and are as follows:
 
  ---------------------------------------------------
 |   Class   |  Hitpoints  |    Mana   |  Movements  |
 |---------------------------------------------------|
 | Mage      |     560     |    335    |     600     |
 | Cleric    |     630     |    340    |     600     |
 | Warrior   |     850     |    100    |     600     |
 | Vampire   |     790     |    60 bp  |     600     |
 | Druid     |     775     |    347    |     600     |
 | Ranger    |     855     |    320    |     600     |
 | Theif     |     730     |    100    |     600     |
 `---------------------------------------------------'
 
A characters's armor class (AC) will vary in relation to its dexterity.
The higher the dexterity, the lower the AC will be.  In general, the base
AC on a character will vary between 60 and 100.  In the worst case, if the
character's dexterity is very low (3 - 5) its AC can drop to 130 or so.
 
Various races have been imbued by the gods with certain effects:
* detect magic --  Elves
* sneak        --  Halflings
* flying       --  Pixies
* infrared     --  Dwarves, Half-elves, Half-orcs, Half-trolls
* none         --  Humans
~

0 POISON~
Syntax: cast poison <victim>

This spell reduces the strength of the victim by two, as well as reducing the
victim's regeneration rate.
~

0 'POISON WEAPON'~
Syntax:  'poison weapon' <weapon>
Abbrev:  poison <weapon>
 
A skill unique to thieves which enables them to coat their weapon with a
deadly poison.  In battle, this poison will cause ill effects on its
recipient.  Be warned however, it has been told that poison has a strong
lessening effect on the lifetime of the weapon poisoned.
 
To poison a weapon you must have the weapon itself, the poisoning powder
and a full waterskin in your inventory.  Your intelligence and wisdom
must both also be relatively high, else you will be unable to complete
the poisoning process until they are raised to a sufficient level.
 
~

1 POLYMORPH~
Syntax:  c polymorph
 
A spell enabling the caster to morph into the desired
creature.  Varies by class and/or race according to the
machinations of the gods.
 
See also:  revert
~

1 PRACTICE~
Syntax: PRACTICE
Syntax: PRACTICE <skill|spell|weapon>

PRACTICE without an argument tells you your current ability level in all
the skills and spells available to you.  You can check this anywhere.

PRACTICE with an argument practice that skill or spell.  Your learning
percentage starts off at 0% (unlearned), and can be practiced once.  
After this initial practice, the skill/spell must be used to develop it 
to the level of 'adept' (Adept is not always necessarily 100%)  You must 
be at a guild master to practice.

The higher your wisdom, the more practice sessions you will have each time you
gain a level.  Unused sessions are saved until you do use them.
 
All characters may practice skills, spells, and weapons in the Academy.
 
For more information on spell, skills, weapons, and practicing, read section
15 of your Adventurer's Guide book.
~

51 PROJECT~
Syntax: project -- same as project list
		project save 
		project list [available]
		project code  --- Lists approved projects with no coders
		project mine -- Lists all projects that you own or are the coder
		project more --- Lists projects as well as coder/log info
		project add <name>
		project <number> coder  --- Assigns you as the coder of a project
		project <number> delete
		project <number> take
		project <number> log write
		project <number> log subject <subject>
		project <number> log post
		project <number> log list
		project <number> log <number> read
		project <number> log <number> delete
		project <number> description --- Buffer to describe the project
		project <number> show -- shows description of the project

You can remove yourself as a coder or owner by repeating the command.
Change status/post on other's projects, 60+, Code council, Vc heads.
List logs/read logs from others projects, 54+
Add/ delete logs  <Level 60+, Code council and VC heads)
~

1 PROJECTILES~
&YSyntax&W: fire <direction> <target>
 
Projectiles are wielded weapons which allow players to hit victims
without being in the same room. Projectiles have several forms, those
being bow & arrow; crossbow & bolt; sling & stone; peashooter & pebble:
tube & dart. All are used in a similar manner.
 
You must first be wielding the weapon which will perform the action
of firing the intended object. To do this, simply 'wield <weaponname>
missile'. This will place the bow, sling or other firing mechanism
in the location 'missile wielded', which you will see when you type 'eq'.
 
You must have a type of projectile in your inventory, this being an arrow,
rock, bolt, pebble or other projectile(s).
 
You must have practiced 'missile weapons' in order to wield a firing
mechanism. If you do not practice it, you will not be able to fire.
 
Lastly, provided you have a projectile in inventory, and a firing
weapon wielded in the 'missile wielded' position, you are ready to
try out your new projectile.
 
Note that firing a weapon at another player will result in a pkill
attempt, which can have severe consequences. If you and your mortal
target are not both listed under "Who Deadly", you will be confronted
by an immortal for your actions and flagged as a violater of Realms
Law. See &YLaws Pkill&W for more information on players vs. players.
~

0 PROMPT FPROMPT~
Syntax:   prompt  <string>
Syntax:   fprompt <string>
 
Sets your prompt to a given string.  The game automatically sets your prompt 
when your character is created, but you can use PROMPT to change your prompt
to more to your liking.  If you type 'default' as the string, your prompt
will be set back to the game default.

The fprompt sets your fighting prompt.  This is the prompt that is displayed
to you while you are fighting.  It follows the same format as the normal
prompt does.
Your prompt can be any string of characters that you wish. You can also embed
special characters and tokens into the string that you set. These special
characters are linked with specific groups of tokens. These tokens will add
specific sets of information to your prompt.
 
The first special character is:  %
Tokens for % are:
  %h  - current hitpoints                %m  - current mana (0 for vamp)
  %H  - maximum hitpoints                %M  - maximum mana (0 for vamp)
  %b  - current blood (0 for non-vamp)   %v  - current movement
  %B  - maximum blood (0 for non-vamp)   %V  - maximum movement
  %g  - gold held                        %x  - current experience
  %a  - your alignment                   %X  - experience needed to next level
  %A  - invisible/hide/sneak indicator   %S  - your current combat style
  
The other special characters are:
 &&  - Foreground color                  ^^  - Background color
 
Examples (assuming current hit points of 43, mana of 23, and movement of 120):
Prompt %h%m%v       =   4323120
Prompt <%h|%m|%v>>> =   <43|23|120>>>
Prompt %h %m %v     =   43 23 120
 
Please see HELP PCOLORS for a list of the color tokens. If you are immortal,
there are separate prompt options for your use. See HELP IMMPROMPT.
~

0 PROTECTION SANCTUARY~
Syntax: cast protection
Syntax: cast sanctuary  <character>

The PROTECTION spell reduces the damage taken from any attack by an evil
creature by one quarter.

The SANCTUARY spell reduces the damage taken by the character from any attack
by one half.

These spells may be used simultaneously for cumulative effect.
~

1 PUGILISM 'LONG BLADES' 'SHORT BLADES' 'FLEXIBLE ARMS' 'TALONOUS ARMS' BLUDGEONS~
These skills represent your proficiency with various type of weapons.
Each class has different maximum proficiencies with different types
of arms, i.e. the best choice for mages are 'short blades, while a
cleric's best choice is with 'bludgeons.'
 
Proficiency of less than 50% with a given weapon type means that damage 
inflicted is less than "average", while proficiency greater than 50%
increases your damage per hit.
 
These skills are automatic:  you need not type anything to invoke them.
 
"Pugilism" affects your proficiency with otherwise unclassified weapons.     
 
~

0 PULL PUSH LEVERS PULLCHAINS SWITCHES BUTTONS~
Syntax: pull <trigger>
Syntax: push <trigger>

Levers, switches, pullchains and buttons can do all sorts of interesting
things... open or unlock doors, change exits around, teleport you to another
location, cast a spell, summon a monster... you name it!
~

51 PULLTYPES~
&YSyntax&W: redit pushtype <direction> <type>
&YSyntax&W: redit push <direction> <force>
 
Where type is equal to Current, Wave, Whirlpool, Geyser, Wind, 
Storm, and Vortex, to name a few . These equal the 'pushforce'
Other types include Vacuum, Slip, Coldwind, Sinkhole, Landslide,
Quicksand, Earthquake, Undefined, Lava, Hotair and Breeze (objects only).
 
The frequency of the push is controlled by the value set in
redit push <force>, and may be anything from -100 to 100. Positive
and negative values represent pulling and pushing, respectively.
The more positive (or negative) the number is, the sooner the force
will push or pull you.
~

1 PUMMEL~
Syntax:  pummel
 
Pummel is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 PUNCH~
Syntax:  punch
Punch is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
 
~

1 PUNT~
Syntax:  punt
 
Punt is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

57 PURGE~
Syntax: purge
Syntax: purge <character>

PURGE is used to clean up the world.  PURGE with no arguments removes all the
NPC's and objects in the current room.  PURGE with an argument purges one
character from anywhere in the world.

PURGE will not get rid of PC's.
~

51 QPSET~
This command is used for giving/taking Glory from players.  The syntax 
is as follows:
 
	  qpset <player>  <give|take>  <amount>
 
Where one of give or take is used, and the amount is always a positive
integer.
 
Please see HELP GLORYIMM before affecting a player's Glory.
See also: GLORYIMM2, GLORY, GLORY RATES.
~

51 QPSTAT~
syntax ( qpstat target)
 
This command will show information regarding the amount of glory a
player has. The first number is their current glory, the second is
the amount of glory held over lifetime.
 
 See also : HELP GLORY, HELP GLORYRATES, HELP QPSET
~

1 'QUANTUM SPIKE'~
The 'Quantum Spike' is one of the Sorceror's most awesome attacks.  With
this spell, the casting Mage is able to form, within the body of his
victim, a sphere of Quantum probability optimized in such a way as to
cause the most bizarre contortion of bodily order imaginable.  Organs
and tissues are rendered into unrecognizable blobs interconnected in
fiendish, unknowable geometries.
 
Obviously, such an attack has astonishing effects on any physical
creature, as well as any entity which has an extention into the
physical world.
~

0 QUEST~
Syntax: QUEST <message>

The quest channel is one which is typically used when a quest is being 
run, to notify players who are involved as to new updates.
 
Quests are held at the whim of Immortals. If you are using the Quest channel
to ask if there is a quest, you are probably too late to enter. Simply keep
the channel on and wait for an Immortal's announcement, should there be one.
~

52 'QUEST AREA' 'JADE.ARE'~
. The Quest council is gearing up to begin work on the next Quest area.  The
Tourney area was just a small experiment to get warwmed up compared to the
new undertaking.  Imagine a tower trapped between dimensions that randomly
appears in different parts of the realms at differnet times of day.  Well,
it's going to happen, and Yes, it is kind of like that Castle in the movie
Krull, but it'll still be damn cool.
 
&YWhat does this mean to you?&G
  The Vnums in &WJade.are&G will be overwritten.  They are needed for the
impending construction.  There are 15 "reserved" mob vnums and 10 "reserved"
obj vnums that can be signed in/out on a temporary basis.  &WPLEASE&G ensure
that you are following the correct procedure when using the Quest area vnums.
It will prevent people from losing mobs and objs that they need.
 
&YHow to sign in and out vnums&G
  &W*&GDo an mlist/olist and pick a vnum that has the name/short Reserved.
  &W*&GPost a note on 1207, subject VNUM: <mob or obj> <vnum> Signed Out
  &W*&GIn the note, include the vnum you are signing out and the short desc
   of the object/mobile, and &Wthe date until which the vnum is needed&G.
  &W*&GWhen &Wfinished&G with the vnum reset the name/short to Reserved and
   take down the note.
 
 If everyone follows this simple and considerate procedure, construction will
be alot smoother, and there will be less heartache in the end. &WThanks&G
~

62 QUEST COUNCIL~
.
The Quest Council, composed of a group of immortals, is the council responsible
for the creation and running of the majority of quests in the Realms.  The QC
also handles issues related to the distribution and value of glory.  For more
information, please contact an immortal with [Quest Council] in his/her title,
or type 'councils quest council.'  As well, please feel free to post any quest
ideas at our office board located in the Darkhaven Town Hall.
 
~

2 'QUEST COUNCIL'~
.
The Quest Council, composed of a group of immortals, is the council responsible
for the creation and running of the majority of quests in the Realms.  The QC
also handles issues related to the distribution and value of glory.  For more
information, please contact an immortal with [Quest Council] in his/her title,
or type 'councils quest council.'  As well, please feel free to post any quest
ideas at our office board located in the Darkhaven Town Hall.
 
~

1 QUESTS QUESTING~
.
  Quests are run at random times for different groups of players within the
realms.  They may involve anything from a scavenger hunt, to solving riddles,
to killing mobs that threaten the Realms.  Quests are an excellent way to
meet other players, and enhance roleplaying throught the realm.
  Different quests will result in different awards.  Awards are up to the
discretion of the immortal running the quest.
 
Some things to remember while questing:
 
 &W-&GWe are volunteers, and choose to run quests. If you have criticisms of 
	the quest, or the person running the quest, please be constructive and
	vent your concerns in an appropriate forum - in the Hall of Heroes located
	in the Darkhaven Town Hall.
 
 &W-&GDo not ask when the next quest will be, or if there is a quest. Just pay
	attention to channels and what is going on around you.  If something out
	of the ordinary is going on, there's a good chance it might be a quest.
 
 &W-&GUnless explicitly stated, Multi-playing is &YNOT&G allowed during quests.
	IF you are caught multi-playing, you will forfeit any reward, and most 
	likely have a temporary ban from questing placed on the characters involved

&CSee Also:&YQUEST, GLORY, GLORY RATES, GLORY TRADE
~

1 QUIT~
Syntax: QUIT
 
QUIT leaves the game.  You may QUIT anywhere.  When you re-enter the game
you will be back in the same room, unless that room has a prog that moves
you upon re-entry.
 
QUIT automatically does a SAVE, so you can safely leave the game with just
one command.  Nevertheless, it's a good idea to SAVE before QUIT.  If you
get into the habit of using QUIT without SAVE, and then you play some other
mud that doesn't save before quitting, you're going to regret it.
 
There is no RENT here.  Just SAVE and QUIT whenever you want to leave.
~

59 R~
~

0 RACE RACES~
There are currently 14 known races existing within these Realms.
Type "help [race]" for specific information on the specified race:
 
Human ...... the generic race, with no inherent strengths or weaknesses.
Dwarf ...... short, hardy and hairy; often cantankerous in personality.
Elf ........ tall, thin and swift like the wind; close to nature and earth.
Halfling ... Short, quick and furry; mischevious and head-strong.
Pixie ...... a winged race, small of stature and with keen minds.
Half-Elf ... a mix of Human and Elf, possess the advantages of both.
Half-Ogre .. tall, powerful and deadly in combat; the prototypical warrior.
Half-Orc ... large, squat and smelly; make exceptionally deadly warriors.
Half-Troll.. a constitution just short of god-like; a truly deadly race.
Gith........ gaunt and long of limb, these astral beings naturally detect invis
Sea-elf..... born of the sea, natural ability to breath under water.
Drow........ cousins of the elf, with a drawing to magic and casting spells.
Lizardmen... given to tribal living, stronger in mind than in body.
Gnome....... Demi-human creatures, well suited for magic and religion.
~

51 RACEIMM~
.0 - Human
 1 - Elf
 2 - Dwarf
 3 - Halfling
 4 - Pixie
 5 - Vampire
 6 - Half-Ogre
 7 - Half-Orc
 8 - Half-Troll
 9 - Half-Elf
10 - Gith
11 - Drow
12 - Sea-Elf
13 - Lizardman
14 - Gnome
 
~

2 RACETALK~
Syntax:  racetalk <message>
 
The racetalk channel will send your message to all the members of
your race currently online.  This channel can be used to roleplay
in accordance with the characteristics of your race, to plan runs
or grouping with a more focused body of players, or for general
chatter.  Please note that racetalk is partially designed to
promote roleplaying, so attempting to limit yourself to the
characteristics of your race may enhance your enjoyment of the mud,
and may provide a unique experience for those who have never
roleplayed previously.
 
~

0 RANGER~
A ranger is the outdoorsman and adventuresome free spirit of the times.  A
self-sufficent person, the ranger is adaptable and can survive in almost
any locale.  Skilled with weapons and able to utilize some of the finest
armor available, a ranger is physically skilled enough to take on most any
foe.  However, for especially hardy opponents, a ranger also can cast many
useful spells to both hinder his opponent and aid himself.  From minor
curative magics to blinding his enemy, the ranger is the most adept class
at surviving on its own.  A ranger typically travels light, but he does
have the mighty strength of a warrior to carry equipment needed in his
travels.  Like the druid (the class other than warrior that he most
closely resembles), his need for help from outside sources is low.
 
~

51 RANGERSPELLS~
.         blindness   0%         charm person   0%      continual light   0%
	 control weather   0%          create fire   0%          create food   0%
	   create spring   0%         create water   0%       cure blindness   0%
	   cure critical   0%           cure light   0%          cure poison   0%
		cure serious   0%          detect evil   0%        detect hidden  24%
		detect invis  85%         detect magic   0%        detect poison   0%
		dispel magic  33%                dream   0%          faerie fire   0%
			   float   0%             identify  75%          infravision   0%
			   invis  74%     kindred strength  34%       know alignment   0%
	   locate object   0%        oak evolution   0%            pass door   0%
			  poison  85%              refresh   0%         remove invis  35%
			  shield   0%                sleep   0%           stone skin  53%
	  word of recall  90%
 
~

51 RAP~
This command allows you to rap on a closed passageway and anyone on the
other side will "hear" it.  The message sent is an act_message, and
act_progs can be trigger by it.
~

58 RASSIGN MASSIGN OASSIGN~
Syntax: rassign
		oassign 
		massign

> Steps for creating a new area from scratch;
> 1. checkvnum rooms   low_vnum hi_vnum
>    checkvnum objects low_vnum hi_vnum
>    checkvnum mobs    low_vnum hi_vnum
>     (make sure the vnums don't overlap another area)
> 2. rassign (person) low_vnum hi_vnum
>    massign (person) low_vnum hi_vnum
>    oassign (person) low_vnum hi_vnum
> 3. mset (person) aloaded yes
> 4. goto low_vnum
>    goto hi_vnum
> 5. savea
> 6. save
> 
> This should create a new area listed as '{PROTO} (Person)'s area in
> progress', with the file name '(person).are' and it should load up after
> rebooting the MUD with 'loadarea' or 'loadarea (person).are' if it's not
> your area.
NEVER do this to someone who has an area assigned to them. This would
change the range for the area they have assigned and wipe out the area.
~

58 RAT~
Syntax: rat vnum1 vnum2 command [parameters]
 
Rat, or 'range at' is the at command with the added parameters of two
room vnums.  Assuming the vnums are valid, your 'at' command will be
executed in every room in the range you give.
 
Example: rat 100 110 redit flags 0
This will clear the room flags in all rooms from 100 to 110 inclusive.
~

1 RAVEN-TOR RAVEN TOR~
.
Recommended Level Ranges : 25 - 50
 
North and east of Darkhaven lies the Mystic Seaport, where Captain Henry
sails to and from the lands of Duke Argyll Morgan aboard the sailing
vessel, the Sea Witch. Across the Sea of Tranquility, lies the quaint
fishing village of Glen Domaire. Further up the coast, is what is known as
the Wild Coast. Here you can find the Keep of Glen Morgan, ancestral home
of the Clan Dubh Glas, the fabled Westwood, and the Stonewall. The Stonewall
separates the Moors from Glen Morgan and slows the Scourge, which has ravaged
the Dukes' lands for generations. It is rumored that these marauders come from
the tower Dom Caligh atop the Raven Tor, the highest hill of the moorlands.
~

0 RAZORBAIT~
This spell makes the victim more susceptible to stabbing attacks.
~

1 'RB EFF'~
.                          Elite Fighting Force
Or EFF by its shorter designation, is an officially sanctioned Order concept.
Its history can be traced to the original Troll Elite Fighting Force (TEFF).
The TEFF was born in the Ranger Guild under Gelroos' term of Guildmaster, and
led by Duquesne StarProfit, Lost Mountain Troll.  Kadurel and Smurgle were two
of its core members.  Between them, they successfully killed Odin over a dozen
times, Gr'staka 3 times, Artemis countless times, and generally did what top
Avatar said 3 mediocre Rangers could not do alone.
 
The concept is fairly simple, the same Avatars always groups and fights as one
team. The team numbers from as little as 3 to as high as 5.  There are several
teams and new ones being formed all the time.  It is limited to Avatars only,
but exceptions will be made by the Team Leader for those of level 42 and above.
The team practices several times on some of the lower rated mobs first, such as
Artemis, Odin, Horus, Honor, and similiar type mobs.  Then they graduate to do
mobs such as Zeus, Mandor, Nelson, and Thoth.

By working together constantly, the team comes to learn each other's strengths
and weaknesses, and to learn how to successfully kill a big mob without dying
or losing team members.
 
All the teams are under the direction of The Trainer.  This person offers
advice and counsel to the teams as well as sets the mob training schedule.
The Trainer also appoints Team Leaders and approves creation of new teams.
Duquesne is currently the head of EFF, and you should contact him if 
interested in becoming a member of the Order of Ringbearers EFF.
~

1 'RB INDUCTION~
You may post your interest and get a guide book to the Order of Ringbearers
northeast of "a field by the river" in shattered refuge's gnome village.
You will find a small cottage next to a budding reed, this is where you
can find out more about the Order and the induction process.
 
Ah! But you have questions now about the Order, do you not?  Well,
we shall try to answer the most common questions now.  First, you must
be level 30 or higher to apply for membership. After you have you have
completed an interview with one of the Induction Team (IT) members,
you will be given your induction quests.  <By the way, a small hint,
you will be questioned on your knowldedge of the Guide during your
interview, so read it carefully!>  The quests are designed to test your
skills and knowledge of the Realms based on our standards for your level
and equipment. Failing a quest does not mean failure in the true sense,
it is more a postponement as an Order member will show you how to 
complete the quest you failed. Time will be spent helping you gain further
knowledge of the Realms, if you wish.  Then, another quest will be given.
 
Note: Your induction quests generally consist of 2 parts, tho in some
cases a third part will be added.
 
Once you have completed all the requirements, the Induction Team member
will contact a Leader (LOOK JOURNAL in induction room) to induct you.
~

1 'RB MAPPING'~
The Explorer team is an officially sanctioned Order concept.  The Explorer
team is open to all levels of Order members.  The team is responsible for
recording and mapping all areas of the Realms, and sharing that information
with fellow Order members.  We have set aside a Collected Knowledge room
in the Orders Headquarter to place this information.  The walls of this
room will soon be covered with maps and information from every corner of
the Realms.  
 
If you are interested in becoming a member of the Order of Ringbearers
Explorer team, please see Gelroos or a Ringbearer with [Explorer] in their
title.
~

1 'RB' 'RINGBEARERS'~
In ancient times, savage creatures of all different classes, races, and
sexes fought as individuals, with little regard for others.  Soon, these
creatures of the world began to see the wisdom of forming groups for survival.
The first of these groups was the family.  Husband, wife, and children all
worked together to benefit the family.  This method of organization still
lacked sufficient power and opportunity.  After a number of centuries, the
first of the great guilds appeared, offering members a chance to unite based
on their choosen class.  These guilds proved sufficient in providing for the
social needs of their members.  However, guild members were often forced to
look outside of their guild for needed resources...  In trying to fill this
void, several individuals begin grouping together, and began what is now called
the Order of Ringbearers.
 
The primary goal of the Ringbearers' is to grasp the rings of truth, honor,
and knowledge.  This is done through exploring the Realms, teaching and
learning from others, and staying respectful to all others.
 
Equality in all forms is a central ideal of the Order of Ringbearers.  No
one class or race shall receive preference over another.  All segments
must unite in a circle, or a ring of brotherhood, to deliver success.

In the Order of Ringbearers, all members shall have the right to voice
their opinions and vote on Order policy.  No member shall be sanctioned
nor outcast for words they say while in the confines of the Order's
headquarter, or over Ordertalk, as long as they remain respectful and
honest to themselves and their fellow members.
 
For more information, see HELP RB INDUCTION, HELP RB EFF, and HELP RB MAPPING
~

1 'REALM OF WORSHIP'~
Recommended level range: 0 - 60

Very little is commonly known about the Realm of Worship, a series
of dark, lonely tunnels within the mountains of Moria. It was once the
residence of the Terror, the dreaded earthly manifestations of the Gods.
However, it is now empty save for the remaining guardians of Terror. Two
tales concerning this Realm's new purpose are being told lately. One claims
that the Realm now serves as a temple where the most desperate of followers
can come to convene with their God. The other dictates that the most powerful
Terror guardian has made a lair out of the dark tunnels. Whether these tales
are true or not, the Realm of Worship is wandered by only the most powerful
adventurers, and occasionally by those who seek a quick death.
~

58 REBOOT SHUTDOWN WIZLOCK~
Syntax: reboot <nosave>
Syntax: shutdown <nosave>
Syntax: wizlock

REBOOT shuts down the server.  When the normal 'startup' script is used
to control the server, a delay of sixty seconds will ensue (to allow
old connections to die), followed by a reboot.

SHUTDOWN shuts down the server and prevents the normal 'startup' script
from restarting it.

WIZLOCK is a toggle command.  When the server is WIZLOCKed, players
below level 51 may not log in.  Players who lose their links, however,
may reconnect.

If nosave is specified for reboot or shutdown, it will not automatically 
save all of the players.
~

1 RECALL~
With a scroll or potion of 'word of recall' you can instantly return from
most areas to your attuned recall spot (Thoth's Rune in Darkhaven for any
those who are not deadly, clanned or a member of an Order or Guild).
 
Scrolls of recall are available in Darkhaven's section of magic shoppes.
 
See also: 'word of recall'
 
~

0 'RECHARGE'~
Syntax: cast 'recharge' <wand/staff>

This spell is used to recharge wands and staves after use.  The mage
or cleric performing the recharge should always insure the item is
not fully charged, as overcharging is considered dangerous.  Also,
there is always a small chance of destroying the staff, or in even 
rarer instances multiplying the charges available.
~

0 REDFERNE 'REDFERNE RESIDENCE' 'REDFERNES RESIDENCE'~
Recommended level range: 35 - 47
 
After many aeons of seeming emptiness, the cloaking illusion of the fell
Sorceress Naris has been lifted from the building known unto men as Redferne's
Residence, or alternatively, The Stronghold of Naris. 
 
Redferne was a loyal knight paladin, true in both sword and honor.  Betrothed
in marriage to the lovely Naris of Thalos at a young age, they built a 
grand fortress and their lands prospered.  Naris, alas, dabbled in sorcery,
and as the years progressed, her soul was overtaken by the evils below.
 
When the fiend liches came to claim her body and soul, a mighty battle ensued,
in which Redferne himself is known to have lost his life.  Less is known of
Naris' fate.
 
The illusion of emptiness was in some manner related to the strange location
the fortress formerly held, floating in the firmament of Darkhaven.  When the
spell was broken, the fortress returned to its location of old, behind great
dark gates in a quiet corner of what is now refered to as the 'Old Marsh.'
~

53 REDIT~
Syntax: REDIT FIELD [parameter list]
		REDIT ON
 
FIELD  | PARAMETERS             -- DESCRIPTION / NOTES
---------------------------------------------------------------------
name   | <room name>            -- sets the room name / short description
exit   | <direction> [vnum] [exit-type] [key] [keywords]
bexit  | same as above, but does the exit in both directions
desc   | none                   -- you will be placed into the buffer editor
exdesc | <direction> [text]     -- sets/clears an exit's description
ed     | <keyword(s)>           -- adds/edits an extra description to the room
rmed   | <keyword(s)>           -- removes an extra description from the room
sector | <value>                -- sets the sector type
flags  | <flag> [flag]          -- toggles room flags
exflags| <direction> [flags]    -- displays/toggles exit flags
exname | <direction> [keywords] -- sets an exit's keywords
exkey  | <direction> <key vnum> -- sets an exit's key vnum/value
 
Note: Put a '+' before the direction to force ADDing of that exit
	  and use a '#' to specify the exit by sequential order.
 
REDIT ON will lock you into a mode in which 'redit' is implied in each command
sequence, and hitting enter will give you an instant rstat of whichever room
you are in at the time. To get out of REDIT ON, simply type the word DONE. 
Example:
 
		redit on
		name A dark and forboding hallway
		flags dark indoors
		done
 
 
See EXITTYPES, EXFLAGS, EXITMAKING, SECTORTYPES and ROOMFLAGS.
 
~

52 REDRAW~
Syntax: redraw

This will redraw the whole screen, and update the menu that is being worked
on if any.

See REFRESH.
~

52 REFRESH~
Syntax: refresh

This will refresh the information in the menu that is being worked on without
redrawing the screen.

See REDRAW.
~

0 REFRESH~
Syntax: cast refresh <character>

This spell refreshes the movement points of a character who is out of movement
points.
~

1 'REIMB' 'REIMBURSEMENT'~
Deadly characters are never eligible for Reimbursements.
Experience can _not_ be reimbursed under any circumstances whatsoever.

The following are causes we will NOT reimburse for:
-- Loss of corpse due to corpse decay.  See "help corpse" for details.
-- Loss of corpse due to lag.
-- Loss of corpse due to problems with your system or the net.
-- Individual items lost due not saving your character regularly.
-- Individual items lost due to carrying items above your level.
-- Individual items lost because they were zapped or dropped on the ground.
-- Containers lost because they were left on ground or destroyed by a mob.
-- Weapon loss due to disarm before crash, reboot, or from a mob taking it.
-- Items lost due to hitting a death trap
-- Items lost due to scrapping by mobs or other players
-- Items lost due transferring equipment from one character to another.
-- Items lost due to not saving after looting your corpse and a crash occurs.
 
Corpses are now saved across crashes and reboots, eliminating the need
for most reimbursements due to corpse loss.  The ONLY cause for reimbursement
is when a corpse reappears in the game empty after a crash or reboot.

To apply for a reimbursement post a note on the Oracle Board setting out the
circumstances of the loss and the five items you had prior to loss that you
would like reimbursed.  We will not reimburse certain items, such as gold,
potions, glory, clan items, or more than one weapon.  We will only consider
reimbursement requests made within one hour of a reboot or crash.  Only a
Demi God or higher may do a reimbursement, but any level Immortal may deny
one.  We will attempt to deal with the request as expeditiously as possible.
~

1 REKEY~
Rekey changes the keyword of an item.
It differs from rename in that it is not the name that is seen, but the
name the object is identified as and can be looked at or picked up as.
For example, if a sword of legend was rekeyed to blade , get sword would
no longer work with this item. (get blade would pick up the item)

   When an item is rekeyed, one of the words from the short description
	 &GMUST&W be used in the rekey.
 
Rekey is included in the rename fee. See help glory for more information.
~

1 REMAINS~
Syntax:  remains
 
A worshipper may request knowledge on the disposition of their remains
from his or her deity (meaning the location and remaining time before
complete decay).  However, the imposition comes at the cost of a small
amount of favor -- approximately twice that of the character's level.
 
If no remains exist, there is no penalty to favor.
 
SEE ALSO:  supplicate
~

0 'REMOVE CURSE'~
Syntax: cast 'remove curse' <character>

This spell removes a curse from a character, or one of the objects a
character is carrying or using.
~

0 'REMOVE TRAP'~
Syntax: cast 'remove trap' <object>

This spell will magically disarm a trap on an object.
~

1 RENAME~
A rename may be done by a level 54 or higher immortal.  If you wish
for the rekey to be completed at the same time, you must contact a
level 56 or higher immortal.  The rename can be purchased with 20
glory or a rename scroll.  Wedding renames are done with a marriage
license by Blorin, the Darkhaven engraver.  (See help wedding)
Renames are to be medieval in style for mortals and must not contain
the name of an immortal without their expressed consent.  Items will
not be renamed to machine gun, silly putty, etc.
Before contacting an immortal to redeem glory or scrolls for a rename,
please have in mind what you would like done.  You will need to consider
the following:
Short description - what is seen when the item is worn by a person.
Long description - what is seen when the item is lying on the ground.
Rekey - the renaming of the item (usually something from the short desc)
 
~

1 RENT~
Syntax: RENT ... characters never have to rent!
 
There is no RENT here.  Just SAVE and QUIT whenever you want to leave
the game.
~

54 RENUMBER~
&YSyntax: renumber <area filename> <new vnum base> [flags]
Flags: fillgaps verbose
&pExample: renumber haon.are 6100 fillgaps verbose&w

The renumber command renumbers an entire area to a new vnum base. All rooms,
objects and mobs will be renumbered, and all references to them will be fixed 
(changed to reflect the new vnum for each object/mob/room). These references 
include: resets, exits, shops, repair shops, and the objvals of some objects 
(containers and levers). 

Unless the "&pfillgaps&w" flag is supplied, the command doesn't fill vnum gaps. 
If you just want to fill the gaps in the area instead of changing the vnum 
base, simply supply the same vnum base (duh!). 

If the "&pverbose&w" flag is not supplied the command will simply report 
the actions. If it's supplied, it will also list all the vnum changes, and
report details on all the reference fixes.

The command will only modify references inside the area, except for two-way
exits leading into the area, wich will be listed if the "&wverbose&p" flag is
supplied (so that you know that you also have to save those areas). 

Mobprogs can also contain references to vnums, but since prog parsing is
far beyond this command, all it does is perform simple string searches and 
warn you if it finds any (possible) references, and it only does this if
the "verbose" flag is supplied. This search is performed only in the progs
inside this area, not in every mudprog in the game.

In conclusion, &Gall references are modified by the command except&w:
	&p* &Gresets in other areas for things being renumbered
	&p* &Greferences to these vnums in mobprogs in other areas
	&p* &Gone-way entrances to the area

A prototype area can only be moved inside its vnum range, never out of it.
The vnum ranges for proto areas are not touched; the ones for normal areas
are changed to reflect the renumbering. Proto builders can only move their
own area.

Finaly, please bare in mind that there's no way to change hard-coded 
vnums except by changing code. So you'd be advised to &rcheck the
code&w if you ever decide to renumber any of these areas: &rlimbo.are,
newdark.are, newacad.are&w.
~

1 REPAIR~
Syntax:   repair <object>
		  repair all
 
Repair allows you to repair equipment and swords at metal blacksmiths,
and recharge staves and wands at magical 'blacksmiths.'  Repair all
attempts to repair every item in your inventory.
 
There is a 10% surcharge for using "repair all". This surcharge is for
the convenience of having all the equipment in your inventory repaired
at once.
 
~

59 REPAIR ATZ~
~

53 REPAIRSET~
Syntax:  repairset <mobile vnum> <field> <value>
 
This command allows you to set the following fields for repair shops:
 
-----------------------------------------------
| Fields | Meaning                            |
-----------------------------------------------
| fix#   | Types of items the keeper will fix |
|        |  - armor, weapon, wand, staff      |
| profit | Profit on fixing items             |
| type   | Repair shop type                   |
|        |   type 1 = standard                |
|        |   type 2 = recharge                |
| open   | Hour shop opens                    |
| close  | Hour shop closes                   |
| keeper | Vnum of repair shop keeper         |
-----------------------------------------------
 
See MAKEREPAIR, REPAIRSTAT and REPAIRSHOPS
~

53 REPAIRSHOPS~
Syntax: repairshops

Displays statistics on all the repair shops.

See MAKEREPAIR, REPAIRSET and REPAIRSTAT.
~

53 REPAIRSTAT~
Syntax: repairstat <mobile vnum>

Shows statistics on a mobile's repair shop.

See MAKEREPAIR, REPAIRSET and REPAIRSHOPS.
~

51 REPEAT~
Syntax: repeat <letter>
 
This command will repeat tell messages which you
have already received. If no parameters are given
it will simply produce the last tell you received.
If a single letter is given, then the last tell
sent to you by a character with a name starting
with that letter will be displayed. This is an imm
only command.
~

1 REPOP~
Area resetting happens roughly every 3 minutes if there are no characters in
in the area; less often (15 minutes) if any characters are present.  Also
note that objects lying on the ground will not be regenerated if anyone
is in the area when it resets.
 
Area resets are indicated by 'squeaking noises' just prior to the reset.
~

1 'REPORT' 'TIME' 'WEATHER'~
Syntax: report;  Syntax: time;  Syntax: weather
 
REPORT shows your current statistics to you and also announces them to other
players in the room.
 
TIME shows the game time, as well as the time the mud was last started,
and the current local time for the host computer.
 
WEATHER shows the current game weather.  You must be in an outside room
to see the weather.
~

51 RESERVE~
.
The "Reserve" command enables us to specify certain names that are
reserved and cannot be used by players.
 
We can specify names that we want to reserve because they belong to
former imms (like Narn and Dominus). We can specify names that are
often tried and are a bit of a pain (like Killer or Satan or Seth).
 
We can specify parts of names by preceding the string with an "*">
e.g.  reserve *goof
This will prevent any name with the substring "goof" ... like ...
"goofface", "biggoof" or "biggoofface".
All deity names should be reserved.
 
reserve                        list current reserved names
reserve joe                    add joe to the list if he's not on it
reserve joe                    remove joe to the list if he is on it
reserve *goof                  add the substring "goof" to the list
 
~

53 RESET~
Syntax: reset list   [start] [end]
Syntax: reset delete [number]
Syntax: reset add    <command> <parameters>
Syntax: reset insert <number> <command> <parameters>
Syntax: reset edit   <number> <command> <parameters>
Syntax: reset area   (will "reset" your area based on the defined resets)

WARNING:
  The order that resets are in is VERY important.  You cannot equip
  a mobile with an object before putting the mobile into a room first.
  Likewise, you cannot put an object into a container until the container is
  put into a room first.

This command is used to display, edit, delete, add and insert resets for
your area.
See INSTAZONE and RESETCMDS.
~

53 RESETCMDS RESETCOMMANDS~
Syntax: reset edit   <number> <commands>
Syntax: reset insert <number> <commands>
Syntax: reset add    <commands>

Commands:
MOB   <mobile vnum> <room vnum> [limit]  loads a mobile into a room
OBJ   <object vnum> <room vnum> [limit]  loads an object into a room
GIVE  <object vnum> [limit]              gives object to last loaded mobile
EQUIP <object vnum> <position> [limit]   equips object on last loaded mobile
PUT   <object vnum> <object vnum>        puts and object into another object
DOOR  <room vnum> <door dir> <state>     resets a door to a certain state
RAND  <room vnum> <last door dir>        randomizes a range of exits
TRAP  <vnum> <type> <charges> <flags>    sets a trap
HIDE  <object vnum>                      hides an object

For EQUIP position, see WEARLOCS.
For DOOR door dir, see DOORDIRS.
For TRAP setting see TRAPSETTING.

See RESETS.
~

1 RESILIENCE~
Syntax:  c resilience <target>
 
Resilience renders the victim resistant to draining attacks.
~

0 REST SLEEP STAND WAKE~
Syntax:  rest
Syntax:  sleep
Syntax:  stand
Syntax:  wake
 
These commands change your position.
 
When you REST or SLEEP, you regenerate hit points, mana points, and movement
points at a much faster rate.  However, you are more vulnerable to attack,
and if you SLEEP you won't hear many things happen.
 
Use STAND or WAKE to come back to a standing position.  You can also WAKE
other sleeping characters.
 
SEE ALSO:  help 'sleep spell'
~

1 RESTORATION~
This spell casts heal upon every member in a cleric's group, and requires
the combined power of two casters.
~

1 RESTORE~
Syntax: restore <character>
		restore all

RESTORE restores full hit points, mana points, and movement points to the
target character.  RESTORE ALL does this for all mortals except player
killers and any who happen to be in the arena.
 
A note on RESTORE ALL: This is a gift from the gods, and it is never 
planned in advance or done on request.  The best way to ensure that a
restore all will NOT be done is to ask for one.
~

53 RESTORETIME~
Restoretime shows you how much time has passed since you last did a
restore all. All Immortals between the levels of 53 and 56 can do one
restore all per 18 hours of Real Time. Those of level 57+ can restore
all at any given time, upon their discretion.
~

57 RESTRICT~
restrict<command>      -Displays the current level of the command.
restrict <command>          -Displays the current level of the command
 
Please remember to set the command back to its original level when you
are done with it. Some commands may not be restricted.
~

51 RETELL~
Syntax: retell <message>
 
The command will send a message to the last character you replied to
or sent a tell to.
~

51 RETIRE~
Syntax: retire <victim>
 
This command will set or remove the 'retired' flag on the immortal
you use it on.
 
See also: RETIRED
~

1 RETIRED~
Retired immortals are imms who are no longer very active on the Realms.
They keep their level but are limited in their commands and authority
(equivalent to a level 51 immortal).  Retired imms are not involved in
the day to day running of the realms.
 
Retirement is only given to immortals who have reached level 53 or
higher and whose immship is in good standing.
 
See also: GUESTS
~

52 RETRAN~
Syntax: retran <player>
 
This command will return that player or mob to the room from which
you last transferred it from.
~

54 REVEAL~
Syntax: reveal
 
Reveal pierces the veil between the seen and the unseen, allowing
the Nephandi to see the invisible world.

~

1 REVEAL~
Syntax: c reveal
 
This spell will heighten the casters senses to incredible proportions,
allowing them to see what moves about them, which normally can not 
be seen to the naked eye.
~

1 'REVELATION CITY'~
Recommended level range: 35 - 50

The City of Revelations lies on the shores of the Sea of Sorrows, shrouded
by a veil of mist. It is said to be a city of Lost Gods, similar to Olympus
and Hades. Some sages believe it is simply inhabitated by powerful entities
and thought elementals. Most adventurers will notice how they go unnoticed
when exploring the town, leading to the belief that only some of these 
entities are aware of what is happening on this plane. Below the city is a
flaming Lake of Fire. In the heart of this sea of flame is a fiery isle,
where one can enter the Underworld.
~

1 REVERT~
Syntax:  Revert
 
Revert is the command used to return to your original body from
the polymorphed state.
 
See also:  polymorph
~

51 RGRUB~
.
 
Syntax:
 
RGRUB st n lo hi  -  list all room vnums between "lo" and "hi" that match
					 sectortype "n"
 
e.g.
 
RGRUB st 1 900 969  -  list all sectortype 1 rooms in Olympus
RGRUB st 3          -  list all sectortype 3 rooms in the whole mud
 
Please use this command with caution. If you're not careful ... you can
get 1,000 lines of output.
 
~

1 'RID TOXIN'~
Syntax: cast rid self
 
An ancient spell that purifies the body and soul of the target from
deadly poisons and evil curses.
~

1 RIGHTS~
You have the right to remain silent or to hit the off button at any time.
~

0 RIP~
Syntax: rip <on/off>

The rip command will either enable or disable rip graphics.  Rip graphics 
will only work provided you are using a rip compatible terminal program.
~

53 RIS RESISTANT IMMUNE SUSCEPTIBLE~
Players and mobiles may have resistance, suceptibility or immunity to
certain types of attack:

FIRE      COLD      ELECTRICITY  ENERGY     BLUNT     PIERCE     SLASH
ACID      POISON    DRAIN        SLEEP      CHARM     HOLD       NONMAGIC
PLUS1     PLUS2     PLUS3        PLUS4      PLUS5     PLUS6      MAGIC
PARALYSIS
~

52 RLIST~
Syntax: rlist
	  :	rlist <first room>
	  :	rlist <first room> <last room>

This command will list all of the prototype rooms in your area, when used 
with no arguments.  When used with a single argument it will list all 
rooms including and after the argument, and when used with two arguments, 
it will list all rooms including and between the two. 
~

53 RMENU~
Syntax: rmenu [menu letter] (defaults to 'a' if none given)

Rmenu will bring you into a menu system of editing rooms.  To use rmenu, you
must be in the room that you are editing.  To choose an option in the menu,
type the number of the section followed by the desired letter, and any
variables that may follow.

See MENU for generic menu commands.
~

1 RNF~
&O_|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|_
_|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__    
__|                                                                  |__|_
_|| &GIn times gone past, the knights whose names have gone down in    &O||__
__| &Ghistory and all those who assisted them strove to fight against   &O|__|_
_|| &Gthe powers let loose by selfish gods. After a time, they did     &O||__
__| &Gsucceed and balance still remains keeping the gods at bay.       &O|__|_
_||                                                                  ||__
__| &GToday, the descendants of those brave knights and allies,        &O|__|_
_|| &Gbelonging to the Order of Rol Na Feinne stand an ever vigilant   &O||__
__| &Gwatch, waiting for the day when those gods use their minions to  &O|__|_
_|| &Gmake another attempt at conquest, for evil rests not. Many of    &O||__
__| &Gthese gods' advocates have already slid unnoticed into the order &O|__|_
_|| &Gitself quietly waiting, seeking a perfect moment to destroy. Yet &O||__
__| &Gthe order remains strong, for its Deity oversees forever breath- &O|__|_
_|| &Ging into these knights and their allies the rallying cry, "Though&O||__
__| &Gthe gods may trifle with us and evil have her macabre way for a  &O|__|_
_|| &Gtime, we shall prevail for chilvary is not dead and magik still  &O||__
__| &Gabounds!"                                                        &O|__|_
_||                                                                  &O||__
__|           &W"Go mbeiri muid beo ar an am seo aris!"                &O|__|_
_||                                                                  ||__
_|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|
__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__&w
~

52 ROOMFLAGS~
FLAG NAME     |  BITVECTOR  |  DESCRIPTION
----------------------------------------------------------------------
DARK          |          1  |  Room is always dark 
DEATH         |          2  |  Room causes instant death
NOMOB         |          4  |  Mobs cannot wander into this room
INDOORS       |          8  |  Room is indoors - MUST also use sectortype 0
LAWFUL        |         16  |  Room is oriented to those of lawful alignment
NEUTRAL       |         32  |  Room is oriented to those of neutral alignment
CHAOTIC       |         64  |  Room is oriented to those of chaotic alignment
NOMAGIC       |        128  |  Magic cannot be used in this room
TUNNEL        |        256  |  Room is a tunnel - x number of players allowed
							   (use 'redit tunnel #' to  set the number)
PRIVATE       |        512  |  Room is private (restricted to 2 people)
SAFE          |       1024  |  Room is safe... no violence allowed
SOLITARY      |       2048  |  Room is solitary (restricted to 1 person)
PETSHOP       |       4096  |  Petshop (next vnum must be the storeroom)
NORECALL      |       8192  |  Players cannot recall out of this room
DONATION      |      16384  |  Donation room... cannot get all
NODROPALL     |      32768  |  Cannot drop all in this room
SILENCE       |      65536  |  Not a sound can be made or heard in this room
LOGSPEECH     |     131072  |  All speech in this room is logged
NODROP        |     262144  |  Nothing can be dropped in this room
CLANSTOREROOM |     524288  |  Clan storage room
NOSUMMON      |    1048576  |  Player cannot be summoned out of this room
NOASTRAL      |    2097152  |  People cannot astral to this room
TELEPORT      |    4194304  |  People in this room will be teleported out
TELESHOWDESC  |    8388608  |  Players will see the room desc of the dest room
NOFLOOR       |   16777216  |  Room has no floor: exit down + no fly = fall
PROTOTYPE     | 1073741824  |  Room is a prototype, (under construction)
NOMISSILE
~

51 ROOMTRIGGERS RPTRIGGERS~
Trigger Optnl Triggering Variable Explanation
------- ----- ------------------- -----------
Act      {p}  <keyword / phrase>  [emotes, socials, actions, bamfs]
Speech   {p}  <keyword / phrase>  [says or tells from within the room]
Rand          <percentage>        [randomly triggered based on percentile]
Sleep         <percentage>        [when a player sleep within the room]
Rest          <percentage>        [when a player rests within the room]
Entry         <percentage>        [when a mob/player enters the room]
Fight         <percentage>        [when a player is fighting in the room]
Death         <percentage>        [when a player dies in the room]
Leave         <percentage>        [when a player leaves the room]
Time          <hour>              [script prog, runs once on hour specified]
Hour          <hour>              [loops as Script for an hour from start hour]
 
*NOTE* {hour}/<hour> is in military time. ie, 15 hours is 3p.m. mud time.
*NOTE* The mpcommand MPDONOTHING currently only works in Script progs,
	   NOT in Time or Hour progs.
 
For rooms, see also: RPSTAT, RPEDIT, TRIGGER, RPCOMMANDS, IFCHECKS, VARIABLES.
~

1 ROOTS ROOT~
Root names have been changed to the following:
 
a dirty root - gotu kola
a small white root - kava root
~

1 ROUNDHOUSE~
Syntax:  roundhouse

Roundhouse is a skill which can only be used once a fight has started,
and can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

53 RPEDIT~
Syntax:  rpedit <command> [number]  [program] [arguments]
Syntax:  rpedit add       <program> <arguments>
Syntax:  rpedit insert    <number>  <program> <arguments>
Syntax:  rpedit edit      <number>  [program] [arguments]
Syntax:  rpedit delete    <number>
Syntax:  rpedit list
 
Add, insert and edit will put you into the line editor to edit your
program.  The arguments consist of a trigger, plus any arguments 
ssociated with that trigger.
 
To edit a toomprogram you must be in the room.
 
See RPSTAT, TRIGGER, RPTRIGGERS, RPCOMMANDS, IFCHECKS, IFCHECKS2, VARIABLES
~

65 RPFIND~
.  for room progs that contain an occurrence of text. 
   Display a maxiumu of n lines.
 
rpfind n mud text 
   Search all the rooms in the mud for
   room progs that contain an occurrence of text. 
   Display a maxiumu of n lines.
 
Example:
rpfind 20 901 969 if isnpc 
   Search all room progs in Olympus (vnums 901 thru 969)
   and display all vnums that contain the text "if isnpc".
   Display a maximum of 20 lines.
 
Example:
rpfind 100 mud mpslay 
   Search all room progs in the entire mud
   and display all vnums that contain the text "mpslay".
   Display a maximum of 100 lines.
~

53 RPSTAT~
Syntax:  rpstat
 
Rpstat will display all of the roomprograms that have been written for a 
room.  You must be standing in the room that you are rpstatting (though
you can also use 'rpstat' in conjunction with the 'at' command to rpstat
a room remotely).
 
See RPEDIT, TRIGGER, RPTRIGGERS, RPCOMMANDS, IFCHECKS, IFCHECKS2, VARIABLES
~

1 RUINS UMBRAGEOUS~
Recommended level range: 5 - 50 (pkill)

After the last Clan Wars, the gods looked down upon the ruins of old
Darkhaven and shifted them into another plane, one that can only be
reached by those who follow a dark and shadowy path. Now decayed beyond
recognition, the shambled remnants of once great structures cover all
signs that this was once the prosperous center of Despair. Burning lava
flows through the city and moving shadows hide killers in their shroud
of darkness. It is said that those who venture through the ruins, and
lived to tell about it, that there are secret portals and passages hidden
within that will lead to the main plane of Despair. It is also rumored
that the spirit of Gravoc oversees the ruins, enforcing his own brand
of death and destruction.
 
~

1 'RULES HQ~
If you are not a deadly character, you may NOT enter into any 
clan headquaters.
~

57 'RULES HQ'~
Only deadly clanned characters may enter a deadly clan's headquarters.
All others risk death at the hands of the headquarter guardians, or
a worse fate at the hands of the gods.
~

1 'RULES PORTAL'~
It is illegal to make portals anywhere in Darkhaven.  You are asked to
leave town by *several* rooms before casting a portal.  It is also 
illegal to create a portal in Darkhaven Academy.
~

0 I3~
Syntax: i3 <option>

Note: You must meet the mud's minimum level requirement before accessing I3.
You will be notified when you have reached the approptiate level.

General Usage:
------------------------------------------------

List channels available                : i3 chanlist [all] [filter]
To tune into a channel                 : i3 listen <localchannel>
To see who is listening on another mud : i3 chanwho <channel> <mud>
List muds connected to I3              : i3 mudlist [filter]
Information on antoher mud             : i3 mudinfo <mud>
Ignore someone who annoys you          : i3 ignore <person@mud>
Make yourself invisible to I3          : i3 invis

i3 chanlist: Lists the channels the mud has available to listen to.
  Specifying 'all' will list the channels for the entire network.

i3 listen  : Tunes you in to the specified channel. You must meet or
  exceed whatever the minimum level is for that channel to do so,
  and your mud must have the channel configured locally.

i3 chanwho : Shows you who is listening to the specified channel on the
  specified mud. Invisble players will not be shown.

i3 mudlist : Lists the muds which are connected to the network.
  Specifying a filter will narrow the list down to only those muds
  whose information matches. IE: &Wi3 mudlist smaug&D will list all
  muds who have &Wsmaug&D as part of their listing.

i3 mudinfo : Lists the information provided by the specified mud.

i3 ignore  : Allows you to selectively ignore all contact with person@mud.
  This will block tells, beeps, locates, fingers, emotes, and whos. It will also
  block channel output from them, but will NOT block them from seeing YOU on
  a channel.

i3 invis   : Makes you invisible to I3. Performs similar to the ignore option
  except it prevents EVERYONE on the network from finding you. You will still
  be able to use channels, and you will NOT be invisible to others if you
  do so.

See also: i3tell, i3finger, i3emote, i3locate, i3who
~

0 I3BEEP~
Syntax: i3beep <person@mud>

i3beep sends a quick message to a person on another mud.
If the target mud supports the beep tone, then the person
on that mud will hear the standard beep tone used by whatever
client software they are using. Works in the same manner as
the local beep command.

See also: I3, INTERMUD3
~

0 I3EMOTE~
Syntax i3emote <person@mud> <message>

Sends a private emote to a person on another mud.

See also: I3, INTERMUD3
~

0 I3FINGER~
Syntax i3finger <person@mud>

Request for information regarding a player on another mud.
Operates in a similar manner to the local 'finger' command.
Will only reveal information the target mud feels is appropriate.

When used with the bridge, typing i3finger <mud@i3> will produce a who
listing of the target mud.

See also: I3, INTERMUD3
~

0 I3LOCATE~
Syntax i3locate <name>

Asks all the muds on the Intermud-3 network if a person
known by the name is there. Be patient when using this command,
there are a lot of muds on the network to search through, so
a response may take some time to come back.

See also: I3, INTERMUD3
~

0 I3TELL I3REPLY~
Syntax: i3tell <person@mud> <message>
Syntax: i3reply <message>

i3tell sends a private message to a person on another mud.

To send a tell to someone on a mud with a multi-word name, you need to
enlcose person@mud in quotes, like so: i3tell 'person@mud with long name'
Otherwise this command operates in much the same way as the local tell command.

To reply to the last i3tell you received, simply type 'i3reply'
followed by your message and it will be sent back to the last
person on I3 who sent a tell to you. Works in the same manner
as the local reply command.

See also: I3, INTERMUD3
~

0 I3WHO~
Syntax i3who <mud>

Requests an overview of players on a different mud.
Operates similarly to the local who command.

See also: I3, INTERMUD3
~

0 INTERMUD3~
Intermud-3 is a protocol which allows you to chat with people on
other muds who are also connected to Intermud-3. It is primarily
populated by LP based muds at this time, but the hope is to get
more Diku based muds to join over time. While some may say that
Diku based muds would be better served on the IMC Network, it
is far easier for a mud to obtain a connection to the Intermud-3
network, and the commands to use it are generally simpler.
In either case, should a mud desire it, Intermud-3 will coexist
peacefully with an IMC enabled mud. Currently there is no way
for public or private traffic to be passed from one network to
the other.

See also: I3, I3TELL, I3EMOTE, I3FINGER, I3WHO, I3LOCATE, IMC
~

1 'SACRAL DIVINITY'~
Syntax:  c 'sacral divinity'
 
The prayer of a Paladin for personal sanctuary to its deity, made
over the clasped symbol of the Paladin.  It is said that never will
the prayer be heard should it be uttered by the unworthy.
 
~

1 SACRIFICE~
Syntax:  sacrifice <object>
 
Sacrifice offers an object to the gods, or to your Order or Clan's deity.
The gods may reward you for the sacrifice, and the nature of the reward
depends upon the type of object.
 
Hint: the gods like corpses.
~

0 SAGACITY~
This spell increases your wisdom for its duration.
~

0 SALVE APPLY~
In your travels you may come across various ointments and salves.
Use 'apply <itemname>' to rub some of the salve onto your skin.
 
( For Smaug Release.. A sample salve is available in vnum 21084)
~

1 SARAH~
.                 !!!!!!!!!!!!!;    .,.
			   !!!!!!!!!!!!!!!!!!!!!!!!!!
		 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	  !!!!!!!!!!!!!!!!!.,cec. !!!!!!!!!!!!!
	!!!!!!!!!!!!!!!!.e$$$$$$$$$.!! zcec !!!!
	!!!!!!!!!!!!!.e$$$$$$$$$$$$$$c$$$$$L !!!
	!!!!!!!!!!! z$$$$$$$$$$$$$$$$$$$$$$$!!'
   !!!!!!!!!!!! $$$$$',ssss,."$$$$$$$$$$
   !!!!!!!!!!!! $$$$$$$$$$$$$$$$$$$',ss,
	!!!!!!!!!!! $$$$$$$/'  "$$$$$$'""",
  !!!!!!!!!!!! $$$$$$$c'f . ,$$$$$,f ,
 !!!!!!!!!!!!! $$$$$$$$$$$$$$$$$$$$$$$
 !!!!!!!!!!!!! $$$$$$$$$$$$$$$$$$$$$$$
 !!!!!!!!!!!!! $$$$$$$$$$$$$$$$P"$$'$$
  !!!!!!!!!!!! $$$$$$$$$$$$$$$$bcuz$$$
 !!!!!!!!!!!!!! $$$$$$$$$$$PP"""v""?$
  !!!!!!!!!!!!! $$$$$$$$$$$b  --- <$
  !!!!!!!!!!!!! $$$$$$$$$$$$$c,,,,P
 !!!!!!!!!!!!!! $$$$$$C?$$$$$$$$P"
 !!!!!!!!!!!!!! $$$$$$$b. "????"
 !!!!!!!!!!!!!! $$$$$$$$$b.
 !!!!!!!!!!!!!! $$$$$$$$$$$$
   !!!!!!!!!!!! $$$$*SARAH*$$$
	!!!!!!!!!!! $$$$$$$$$$$$$$$$
~

1 SAVE~
Syntax:  Save
 
SAVE saves your character and its inventory; you must be at least second
level to save.  The system automatically saves approximately one character
every minute, but with the high number of players usually online it may take
hours before your own is auto-saved.  For this reason, you should not
rely on auto-save to keep your character updated -- save frequently.
 
Type SAVE immediately after recovering your corpse, gaining experience or
a level in battle, getting new items, making purchases or repairs, etc.
 
Some objects (such as keys) may not be saved.  You cannot SAVE and QUIT
with objects of a higher level than your own, as they will vanish when
you log out.  Every character is auto-saved at reboot.

~

56 SAVE BUILD~
~

62 SAVE CENTAUR~
~

62 SAVE GREETING~
~

62 SAVE MAGNETIC THRUST~
~

1 SAVE POSITIONS~
At current time, there are 14 "positions" in the game. Positions
are in a special order.  If position b is below position a on the
list, that indicates that while in position b, you have more 
physical or mental energy to spend on a task, be it a command,
a spell, or a skill.
 
For example, while standing, you have a greater ability to do things
than while sitting.  While fighting evasively, you have more options
than while fighting aggressively.
 
The ordered list is as follows, left to right, top to bottom:
Dead          Mortally Wounded        Incapacitated
Stunned       Sleeping                Fighting (Berserk)
Resting       Fighting (Aggressive)   Sitting
Fighting (Std)Fighting (Defensive)    Fighting (Evasive)
Standing      Mounted
 
See Also: STYLES
~

52 SAVEAREA LOADAREA~
Syntax: savearea
		loadarea

Savearea and loadarea will save or load your prototype area.
~

53 SAVINGTHROWS~
Saving throws:
  sav1 - Saving vs. poison or death
  sav2 - Saving vs. wands
  sav3 - Saving vs. paralysis or petrification
  sav4 - Saving vs. breath
  sav5 - Saving vs. spells or staves

See MSET or type MSET by itself.
~

51 SAVIOR~
The following are guidelines of level 54 responsibilities:
 
   - An Immortal must spend at least 5-7 hours per week or at least
	 25 hours per month online to remain active and productive
   - Must be visible to all mortals, unless involved in running a
	 quest, watching someone or building
   - Authorization of new characters
   - Channel monitoring -- should keep most channels on
   - Appraising higher Immortals of Mortal rule violations
   - Advise a 55+ of all reimbursement requests from mortals
   - The bodybag command, for doing CRs for peaceful characters
	 (at the discretion of the immortal)
   - Mastering proper mortal discipline techniques and punishments
   - Helping 51's && 52's with problems and questions
   - Possible object and mob building work
   - Possible work at 5500 if interested in building or coding
   - Council work suggested
 
Type 'wizhelp' to view your privileged commands.  For a list of Immortal
rules, 'help imm'.  Visit note boards at 1200, 1213, and 1214 regularly.
~

51 SAVIOR'~
The following is a guideline of level 54 responsibilities:
 
   - An Immortal must spend at least 5-7 hours per week or at least
	 25 hours per month online to remain active and productive
   - Must be visible to all mortals, unless involved in running a
	 quest, watching someone or building
   - Share primary oversight of mortal behaviour with level 55's
   - Responsible for oversight of level 51-53's
   - Advise a 55+ of all reimbursement requests from mortals
   - Bringing important topics up to higher level Immortals
   - Possible work at 5500 if interested in building or coding
   - Possible prog building work
   - Council work strongly suggested
 
+ The Demi God should begin to feel at ease with interpretation and
  enforcement of mud rules.
 
Type 'wizhelp' to view your privileged commands.  For a list of Immortal
rules, 'help imm'.  Visit note boards at 1200, 1201, 1213, and 1214 often.
~

1 'SCAN'~
Syntax:  scan <direction>
 
This skill enables you to scan for one or more rooms in the direction
specified, dependent on the percent to which the skill is practiced,
and the type of area you are in.
~

1 'SCORCHING SURGE~
Syntax:  c 'scorching surge' <victim>
Abbrev:  c scorching, c scorch
 
A powerful wave of heat created by an Augurer and directed at its victim.
The spell inflicts fire damage on the target, the higher the level of the
Augurer the greater the damage.
 
~

1 SCORE~
Syntax: score
 
SCORE is a sheet filled with your characters statistics.  When you type
score, only you can see what is listed there.  Should you want to let
others see your characters health, you can type REPORT.  
 
To get a breakdown of what each slot in your score means, read section 4
in your Adventurer's Guide book.
~

1 'SCOURGE OF TIME'~
Recommended Level Ranges: 40 - 50

Since the origins of life, the mysteries of time have managed to swiftly
elude any mortal attempts to decipher them.  Following the Githyanki's
brutal massacre of the village of Brokovia however, a spirited, desperate
survivor sought revenge against the Gith.  She devoted herself to the
practices of Infernalism in an attempt to uncover the puzzle of Time, hoping
to travel to the past and rescue her village.  As her studies progressed.
she became unable to control her thoughts and actions.  She came to
realize how to travel through time, yet her evil mannerisms aroused the
anger of Father Time.  The ancient lord banished her from travelling in
time forever because of her demonic powers.  Unable to complete her
quest, the demoness Malsangre now wanders the Astral Plane, slaying the
Gith and sending willing travellers back in time against her new foe,
Time itself.  In fear of her threats, the Father has generated a massive
defense to protect the sanctity of his realm.
~

0 SCRIBE BREW~
&YSyntax&W: brew <spell name>
&YSyntax&W: scribe <spell name>

A mage or cleric of sufficient level holding a 'blank scroll or
'empty flask' may transform them into spelled scrolls or potions via
the scribe and brew commands.

It takes significantly more mana to bind a spell to a potion or scroll
than to simply cast it.
 
Note that a fire is required to brew potions.
~

0 SCRY~
Syntax:  cast scry
 
This spell will allow the character to scry (look) in to nearby rooms.
After casting the spell, the character needs only to "look" in the
desired direction.
 
Thieves have an innate ability to scry.
 
~

1 'SEA OF SORROWS'~
Recommended Level Range: 1 - 15
 
The Sea of Sorrows is a large body of water far to the east of Darkhaven,
bordering much of the Realms. It is said that the sea was created long ago
from the tears of the New Goddess, Brittany. Her kind heart was moved when the
Old Gods were cast aside in favor of Brontrel's new order. Famed Uthle bay
in the eastern portion of the sea is the sole entrance to Transylvania,
land of vampires.
~

-1 SEAELF SEA-ELF SEA-ELVES SEAELVES 'SEA ELF'~
Also called Aquatic Elves, they are akin to mermen as land elves are
akin to men.  Found almost exclusively among heavy weed beds in quiet,
sheltered, salty waters, they are great friends of the dolphins.  The
race historically prefers to fashion caverns in lagoon bottoms and
reefs in which to live and work, but the reality of the today's Realms
has forced them into the general populace.

The race is humanoid in appearance, with gill slits on the throat and
greenish-silver skin and green or blue-green hair.  Sea elves have an
inate ability to notice magical auras as well as breath under water.
 
Sea-elves gain experience on a scale of normal rate * 1.12
~

1 SEAELVES SEA_ELVES~
Also called Aquatic Elves, they are akin to mermen as land elves are
akin to men.  Found almost exclusively among heavy weed beds in quiet
sheltered salty waters, they are great friends of the dolphins.  They 
fashion caverns in lagoon bottoms and reefs where they live and work.
They are humanoid in appearance, with gill slits on the throat and
greenish-silver skin and green or blue-green hair. Sea elves have
the inate ability to notice magical auras as well as breath under
water.
 
Sea elves gain experience on a scale of normal rate * 1.12 
~

0 SEARCH~
Syntax: search
Syntax: search <container>

Sometimes not all there is to find is in clear view.  Some things may be
concealed or hidden, and will require some searching to find.
~

1 'SECOND ATTACK' 'THIRD ATTACK' 'FOURTH ATTACK' 'FIFTH ATTACK'~
These are powerful skills which allow a character to attack more than
once per combat round.  Use of these skills is automatic once you have
practiced them.
 
While you can practice the attacks out of turn (third attack before you
have mastered second attack, for example), it is extremely inefficient
to do so.
 
~

52 SECTORTYPES~
INSIDE              0
CITY                1
FIELD               2
FOREST              3
HILLS               4
MOUNTAIN            5
WATER_SWIM          6
WATER_NOSWIM        7
UNDERWATER          8
AIR                 9
DESERT             10
UNKNOWN            11
OCEANFLOOR         12
UNDERGROUND        13
~

51 SEDIT~
View, create, edit or delete socials online.
Sytanx:  sedit <social>
Syntax:  sedit <social> [field]
Syntax:  sedit <social> create
Syntax:  sedit <social> delete
Syntax:  sedit <save>
 
Use sedit <social> to view the current settings of an existing social.
Use sedit <social> [field] to set one of the fields:
  CNoArg: response to character if no argument given
  ONoArg: response to room if no argument given
  CFound: Response to character if target is someone else
  OFound: Response to room if target is someone else
  VFound: Response to target if target is someone else
  CAuto : Response to character if target is self
  OAuto : Response to room if target is self
 
Variables you can use are:
  $n - Name of the user of the social.
  $N - Name of the target of the social.
  $m - him/her/it for the user the social.
  $M - him/her/it for the target of the social.
  $s - his/her/its for the user of the social.
  $S - his/her/its for the targt of the social.
  $e - he/she/it for the user of the social.
  $E - he/she/it for the target of the social.
 
Use sedit <social> create to create a new social, then edit with sedit field.
Use sedit <social> delete to delete an existing social.
Use sedit save to save the new social or changes to existing socials.
 
~

57 SETBOOT~
Syntax: setboot time <hour> <minute>
	setboot manual <0|1>

The setboot command is useful for planning a reboot, (to save you from 
the trouble of all those echos :) ) and for the daily boot.  The manual
bit is used by the mud to determine whether the boot time was set by 
hand.  When the mud starts up, the boot time is set to 0600hrs (6am)
and the manual bit to 0.  If 'setboot time' is used, the mud sets the
manual bit to 1.  When it comes time to do the reboot, the mud checks
how long it has been running.  If it has been running less than 18 
hours and the reboot time has not been set manually, the reboot does
not take place (nor do the automatic warning echoes).

Echoes: when a scheduled reboot is coming up, the mud will send out
echoes to that effect.  The echoes start 30 minutes before the reboot
and are repeated at t minus 15, 10, 5, 4, 3, 2 and 1 minute(s). 
~

65 SETCLAN~
Usage: setclan <clan> <field> <deity|leader|number1|number2> <player>
Field being one of:
 deity leader number1 number2
 members board recall storage guard1 guard2
 align (not functional) memlimit obj1 obj2 obj3 obj4 obj5
 name filename motto desc
 favour strikes type class
 pkill1-7 pdeath1-7
ex: to set a new person in the number 1 spot of guild of warriors..
setclan 'guild of warriors' number1 <name>
~

51 SETRACE~
.&w
Syntax: Setrace <racename> <field> 

Setrace &g<name> &wwill name your newly created race
Setrace <name> &gsave&w will save the creation and changes.

Setrace <name> &g<language> &wdetermines the races native language.
Field &gclasses&w  will set the allowed classes. IE.. setrace elf classes
cleric paladin would allow those classes for the race. This is a toggle feature
that will disallow the same classes if repeated.

Field(s) &gstrplus dexplus wisplus intplus conplus chaplus lckplus &w apply
the set modifier to the race.(setrace elf str 2 gives elves +2 bonus to str).
Setrace <race> &ghit &wor &gmana  &wwill determine the amnt of hps or mana
gained by leveling. Example: Setrace drow hit 5 would yield a 5pnt hp gain with
each level.
 
Setrace &galign &wdetermines the alignment default for the race.
(Setrace mage align 500 sets the mage default alignment to 500)

Setrace <racename> &g minalign&w/&gmaxalign &w sets min and maxs  from
 -1000  to 1000 to determine if a penalty will be applied.  If the max align is
500 - character would suffer a mental state penalty for straying above 500.

See also &ghelp showrace &wand &ghelp setrace2 &w
~

61 SETRACE 2~
~

51 SETRACE2~
.&W
.&w
&wSetrace racename &gaffected /attack/resist/suscept/defense&w are similar 
to msetting mobs. Setrace elf affected resist poison would make the race 
resistant to poison attacks

Setrace <racename> &gheight/weight &w<value> do not have  affects..yet.

Setrace with a field of  &ghungermod/thirstmod &w will determine the rate of
thirst or hunger  is affected by upon each round.

Setrace  <racename> &gexpmultiplier &w determines the rate of experience 
acquired from leveling, adepting or successfully using skills and spells .
Example: If a race with an experience modifier of 80 , the race would gain 80 %
of the exp.that a human would by having completed the same task.

Setrace <racename> &gacplus &w <variable> sets the armor class for the race
without any equipment or spells. See also &ghelp AC &w

Setrace <race> <save>
&gsaving_poison,death,saving_wand,saving_,para_petri,saving_breath, 
saving_spell_staff &wwill modify the races saving throw capabilities.

See also &ghelp showrace   &wand &g help setrace1 &w
.&w
~

1 'SEWER'~
Recommended level range: 5 - 30

Below the city of Darkhaven is a series of winding passageways known as
the sewers. They delve deep underground, allowing great flows of rain
water and refuse to exit Darkhaven. Rodent and large insect populations
roam the caverns, as well as serpents and arachnids. Some adventurers
also speak of an immense red dragon that has taken up residence in these
tunnels, though few believe them.
~

0 SHADOWFORM~
Entering Shadowform makes you almost untouchable by non-magical attacks, 
at no cost to your attributes.
~

1 SHADOWPORT~
Recommended level range: 10 - 50

Easily one of the darkest, deadliest cities of Despair, Shadowport is
an ancient subterranean town populated by the beings of Darkness. Its
entrance lies deep below the ground, in the darkest reaches of Darkhaven's
sewers. Rumors say that there are many other entrances, but none have 
been confirmed. The city itself is ruled by Lord Xyranthas. Once recognized
as the greatest magi of his time, Xyranthas was turned to darkness with the
promise of immortality and unlimited knowledge. Upon his transformation to a
lich, he created the hideous shadowmists and formed Shadowport from rock with
incredible magics. Many an adventurer has fought his final battle here, and
there shall surely be numerous others...
~

1 'SHATTERED REFUGE'~
Recommended level range: 5 - 20

The shattered remains of the ancient civilization of tinker gnomes resides
here, to the southeast of eastern Darkhaven and in the shadow of a fiercesome
mountain range. Inhabitating the tunnels beneath the mountains are the
gnome's perpetual enemies, and one time students: the hobgoblins. Similar to
goblins in many ways, they lack the intelligence and inventiveness of the 
gnomes. This is made up however in good measure with cunning and wicked ways.
This filthy chaotic race has made it their goal to rule the gnomes, and 
eventually all of Despair itself.
~

0 SHIELD 'STONE SKIN'~
Syntax: cast shield
Syntax: cast 'stone skin'

These spells protect the caster by decreasing (improving) the caster's armor
class.  SHIELD provides 20 points of armor.  STONE SKIN provides 40 points of
armor.
~

53 SHOPS~
Syntax: shops

Displays statistics on all the shops.

See MAKESHOP, SHOPSET and SHOPSTAT.
~

53 SHOPSET~
Syntax: shopset <mobile vnum> <field> <value>

-----------------------------------------------
| Fields | Meaning                            |
-----------------------------------------------
| buy#   | Types of items the keeper will buy |
| buy    | Profit on buying items             |
| sell   | Profit on selling items            |
| open   | Hour shop opens                    |
| close  | Hour shop closes                   |
| keeper | Vnum of shop keeper                |
-----------------------------------------------

Lets you set certain stats on a shop.

See MAKESHOP, SHOPSTAT, SHOPS and SHOPVALUES.
~

53 SHOPSTAT~
Syntax: shopstat <mobile vnum>

Shows statistics on a mobile's shop.

See MAKESHOP, SHOPSET and SHOPS.
~

51 SHOPVALUES~
Syntax: shopset <mobile vnum> buy# <value>
 
1  - light               21 - pen                41 - rune
2  - scroll              22 - boat               42 - runepouch
3  - wand                23 - corpse             43 - match
4  - staff               24 - corpse_pc          44 - trap
5  - weapon              25 - fountain           45 - map
6  - _fireweapon         26 - pill               46 - portal
7  - _missile            27 - blood              47 - paper
8  - treasure            28 - bloodstain         48 - tinder
9  - armor               29 - scraps             49 - lockpick
10 - potion              30 - pipe               50 - spike
11 - _worn               31 - herbcon            51 - disease
12 - furniture           32 - herb               52 - oil
13 - trash               33 - incense            53 - fuel
14 - _oldtrap            34 - fire               54 - shortbow
15 - container           35 - book               55 - longbow
16 - _note               36 - switch             56 - crossbow
17 - drinkcon            37 - lever              57 - projectile
18 - key                 38 - pullchain          58 - quiver
19 - food                39 - button             59 - shovel
20 - money               40 - dial               60 - salve
~

1 SHOULDER~
Syntax:  shoulder
 
Shoulder is a skill which can only be used once a fight has started,
and can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 SHOVE~
Syntax:  shove <character> <direction>
 
Deadly characters can shove other deadly characters in the direction
specified if the victim is standing up.
 
Characters who have been in a safe room for longer than 30 seconds
will be unable to be shoved or dragged out of that room until they
either leave of their own choice or they shove/drag another player. 
 
You cannot shove a character into a death trap, and cannot shove
someone outside the 5-level pkill range.
~

51 SHOWCLAN~
Syntax: showclan <clan name>

Displays statistics on a clan.
~

65 SHOWCOUNCIL~
Syntax: showcouncil '<name> council'
 
Shows the statistics on the council.
~

51 SHOWGUILD~
Syntax: showguild 'guild of <guild name>'
 
Displays the statistics on a guild.
~

65 SHOWLAYERS~
Syntax: showlayers <number of lines>
 
Example: showlayers 100   (lists a maximum of 100 lines)
 
This command is used by builders to show all equipment in the game
that is layerable.
 
It is used by builders to help decide what eq should be made layerable
and what kind of stats to give the eq.
 
We don't want players to be able to wear 10 pieces of eq on the same
wear location and get huge stats as a result.
~

51 SHOWRACE~
Syntax: Showrace <name of race>
 
This will give vital statistics on pc races. IE.. showrace lizardmen
would net the following:

Disallowed Classes:Mage Cleric Thief Vampire Druid Augurer
Paladin Nephandi
Allowed Classes:Warrior Ranger
Str Plus: 002   Dex Plus: -003  Wis Plus: -006  Int Plus: -006
Con Plus: 002   Cha Plus: -002  Lck Plus: -004
Hit Pts:  002   Mana: 000       Align:0 AC: 0
Min Align:  -1000       Max Align: 500  XP Mult:91%
Height:  78 in. Weight: 215 lbs.         HungerMod: 0    ThirstMod: 0
Affected by:aqua_breath
Resistant to:slash
Susceptible to:
Saves: (P/D) 0 (W) 0 (P/P) 0 (B) 0 (S/S) 0
Innate Attacks:tail
Innate Defenses:

See also help &WSETRACE 
&w
~

1 SHRIEK~
Syntax:  shriek
 
An undead wail which may be used to wither the life of all who hear
its anguished sound.
 
~

0 SIT~
Syntax: sit

Sit makes your character sit down.
~

1 SKILLS~
Type 'practice' to get a list of skills currently available to you and
to see to what extent you have them practiced.  Type 'slist' to view a
list of all skills available at each level to your class.
~

55 SLAY~
Syntax: slay <victim> [immolate/shatter/demon]

SLAY kills a character in cold blood, no saving throw.

The optional parameters cause different messages to be sent to the actor,
the victim and the room, just for a bit of variety.
 
Slay bypasses auto actions such as autoloot and autosac.
~

0 SLEEP~
Syntax: cast sleep <victim>

This spell puts its victim to sleep.
~

1 'SLEEP SPELL'~
Syntax:  c sleep <victim>
 
A spell of lethargy which, if successful, will send your victim into
a deep slumber from which they cannot awaken until attacked or the
spell wears off.
~

0 SLINK~
This spell makes you more dexterous for its duration.
~

1 SLIST~
Syntax:  slist
Syntax:  slist <low level> <high level>
 
SLIST without an argument gives you a complete list of the spells and skills
available to your class, also indicating the maximum level to which you can
practice each.
 
SLIST <low level> <high level> gives a list of spells and skills available
to your class from the low level to the high level specified.
 
Example:  slist 2 2
 
	SPELL && SKILL LIST
	------------------
	Level 2
	  skill :                mount   Current:  75 Max: 85 
 
~

52 SLOOKUP~
Syntax: slookup <skill-or-spell>
Syntax: slookup all

SLOOKUP shows you the internal 'sn' and external 'slot' for the given skill
or spell.  The 'sn' is used for OSET and OSTAT.  The 'slot' is used for area
files.  Neither 'sn' nor 'slot' is used for player files; these operate with
the actual skill and spell names.

SLOOKUP ALL shows this information for all skills and spells.
~

-1 FUSS SMAUGFUSS 'SMAUG FUSS'~
.                          The SMAUG FUSS Project
							 www.smaugmuds.org

FUSS stands for: [F]ixed [U]p [S]maug [S]ource
It has also come to be known by the alias: [F]ixed [U]p [S]tock [S]ource

The ongoing goal of this project is to find and eliminate as many of the
bugs in the stock SMAUG source code as possible so as to provide for a
clean, stable base for new admins to run a SMAUG mud from.

The project is coordinated by Samson, lead developer of the AFKMud codebase.
Contributions are made by various members of the SMAUG community.

Most of the fixes are culled from forum posts, emails to the SMAUG mailing
list, and from continuing work on other SMAUG derivative projects in which
bugs are found that apply backward to the base distribution.
~

-1 SMAUG THORIC~
.                               [WWW.SMAUG.ORG]
		 /     _      _            _      _    _____
		/      |\    /|     /\     |      |   /     \     ***************
	   /       | \  / |    /  \    |      |  |            *   \\._.//   *
	  /        |  \/  |   /    \   |      |  |            *   (0...0)   *
	 /_______  |      |  |______|  |      |  |            *    ).:.(    *
			/  |      |  |      |  |      |  |            *    {o o}    *
		   /   |      |  |      |  |      |  |     __     *   / ' ' \   *
		  /    |      |  |      |  |      |  |       |    *-'^.VxvxV.^'-*
		 /     |      |  |      |   \____/    \_____/     ***************
		/
			[S]imulated [M]edieval multi-[U]ser [A]dventure [G]ame

SMAUG 1.4 is a Merc2.1 derivative written by Thoric (Derek Snider) with help
from Altrag, Blodkai, Haus, Narn, Scryn, Swordbearer, Tricops, Gorog, Rennard,
Grishnakh, Fireblade and Nivek.
~

56 SMAUGSPELLS~
SMAUG has a specially coded spell type "spell_smaug", which is a generic
spell handler that uses the extra spell fields to determine what the spell
is going to achieve.
 
damtype   the class of damage done (see DAMTYPES)
acttype   the action of the spell (see ACTTYPES)
classtype the class of spell (see CLASSTYPES)
powertype the power ranking of the spell (see POWERTYPES)
flag      special extra flags this spell has (see SPELLFLAGS)
hit       Message displayed when spell is successful
miss      Message displayed when spell misses or fails
die       Message sent if spell causes death
imm       Message sent if victim is immune
(Messages must specify char, vict or room, ie: hitchar, hitvict, hitroom)
dice      a dice formula used for rolling things like damage (see DICEFORMULAS)
saves     saving throw victim gets (see SPELLSAVES)
bitvector see AFFECTED_BY, the bitvector applied by the spell, if any
affects   see AFFECTTYPES, the effect the spell has, if any
value     an extra field reserved for things like the vnum used in spells
		  that create objects, or summon monsters to the caster's aid.
 
~

1 SMOKE~
You may 'smoke' a pipe after first filling it with a smokable herb or
tobacco.
~

51 SOBER~
syntax 'Sober <player>'
This command can be used to Sober a player or your self when they/you
are in a drunken state.
 
~

51 SOCIAL~
The following information is needed to create a social:
Use sedit <social> [field] to set one of the fields:
  CNoArg: response to character if no argument given
  ONoArg: response to room if no argument given
  CFound: Response to character if target is someone else
  OFound: Response to room if target is someone else
  VFound: Response to target if target is someone else
  CAuto : Response to character if target is self
  OAuto : Response to room if target is self
Variables you can use are:
  $n - Name of the user of the social.
  $N - Name of the target of the social.
  $m - him/her/it for the user the social.
  $M - him/her/it for the target of the social.
  $s - his/her/its for the user of the social.
  $S - his/her/its for the targt of the social.
  $e - he/she/it for the user of the social.
  $E - he/she/it for the target of the social.
 
~

1 'SOLAR FLIGHT'~
Syntax:  c 'solar flight' <victim>
 
This spell allows the caster to merge from an outdoor area to their victim
in an outdoor area.
 
The spell has a few restrictions:  you will only succeed in casting it
during daytime hours, between 7 A.M. and 5 P.M. and you will only succeed
in casting if both you and your victim are in an outdoor area -- you need
the power of the sun in order for this spell to work (thus it will also
not succeed in bad weather).
~

1 'SOLOMONIC INVOCATION'~
Syntax:  c 'solomonic invocation'
 
The Paladin prayer by which their holy symbol is created.
 
~

1 'SONIC RESONANCE'~
The magick of 'Sonic Resonance' allows the casting Mage to realign
the component particles of his foe in such a way that they are
susceptible to a certain mystical tone.  By the completion of the
spell, this tone is conjured, causing the particles to vibrate 
violently causing intense pain and tissue damage.
~

1 SPAM~
No, we are not talking about a luncheon meat here.  Spam is the repeated use
of a phrase, command, or channel that causes screen scroll for others.  Not
only is spam considered rude, but excessive screen scroll can interfere with
the game play of anyone seeing it (not to mention combat situations).  The
game will also tell you to PUT A LID ON IT and force-quit you after the 20th
repeat of a single command
 
It is also considered spam to use the same phrase over several different
channels.  The use of all-caps can also be considered spam.  Only use
capitals to add emphasis to key words in a sentence.
 
Moving a large number of items into and out of a container in a crowded, 
non-store room is considered spam.  Using multiple characters to chat the
same message at the same time is considered spam.  Making charmed mobs
or pets to cause screen scroll through movement or orders is considered
spam. ANYTHING that causes excessive or irritating screen scroll can be
considered spam.
~

1 SPEAK LANGUAGE~
Syntax:  speak
Syntax:  speak <language>
Syntax:  speak all (immortals only)
 
The speak command changes the current language in which you are speaking.
To speak your native tongue, type 'speak' alone.  To speak a specific
language (such as common, for example), type "speak common".
 
Immortals have the unique ability to speak so that everyone can understand,
by typing "speak all".
 
See also Languages
~

53 SPECFUNCS~
These special functions are available to assign to mobiles.
Use them sparingly:

To add spec:  mset <mob> spec <function> (ex. mset guard spec spec_guard)
To remove:    mset <mob> spec none

spec_breath_any          Mobiles breathes one of the four breaths randomly.
spec_breath_acid         Mobile has breath of acid.
spec_breath_fire         Mobile has breath of fire.
spec_breath_frost        Mobile has breath of frost
spec_breath_gas          Mobile has gas breath.
spec_breath_lightning    Mobile has lightning breath.
spec_cast_adept          Mobile casts helpful spells.
spec_cast_cleric         Mobile casts healing spells.
spec_cast_mage           Mobile casts offensive spells during battle.
spec_cast_undead         Mobile casts offensive spells during battle.
spec_guard               Mobile attacks KILLERS and THIEVES.
spec_executioner         Same as above except summons guards to help.
spec_fido                Mobile eats corpses.
spec_janitor             Mobile picks up trash.
spec_mayor               Reserved for the mayor... don't use.
spec_poison              Mobile poisons during battle.
spec_thief               Mobile steals gold from players.
~

1 'SPECTRAL FUROR' 'HAND OF CHAOS'~
After the Dark Mage Thanatos accidentally discovered the spell
'Disruption' in a failed attempt to create a teleportation magic,
he spent many years studying how to increase the pain that can
be inflicted by incorrectly moving a victim across the threshold
of dimensions.  
 
 'Spectral Furor' is a formula which, by upsetting the very nature
of the space the victim inhabits causes neural as well as brute
physical damage.
 
With 'Hand of Chaos,' Thanatos perfected this line of magic, and he
returned to his researches on the art of astral travel.
~

1 'SPECTRAL GATE'~
Recommended level range: 1-2

It is a well known fact that when a God creates a mortal, the being
enters the multiverse through the Spectral Gate. The strange journey
through this portal sobers the mortal and determines his demeanor
and nature. All know as well that once you enter the multiverse, you
may never return through the Spectral Gate.
~

57 SPELLCOMPARE~
.Det Mag          Aug   Dru   Cle   Mag   Ran   Pal                            
 Cr food         Aug         Cle         Ran   Pal                             
 cont light      Aug         Cle   Mag   Ran   Pal                             
 Det Mag         Aug   Dru   Cle   Mag   Ran   Pal                             
 Det invis       Aug   Dru   Cle   Mag   Ran   Pal                             
 Dis Magic       Aug   Dru   Cle   Mag   Ran                                   
 Dream                 Dru   Cle   Mag   Ran                                   
 Enchant         Aug   Dru         Mag                                         
 Ener Dra        Aug   Dru         Mag                                         
 Faerie Fir      Aug   Dru   Cle   Mag   Ran                                   
 Float           Aug   Dru   Cle   Mag   Ran   Pal                             
 Fly             Aug   Dru   Cle   Mag                                         
 harm            Aug   Dru   Cle                                               
 ident           Aug   Dru   Cle   Mag   Ran   Pal                             
 infravision     Aug   Dru         Mag   Ran                                   
 Invis           Aug   Dru         Mag   Ran                                   
 Know align            Dru   Cle   Mag   Ran   Pal                             
 lightning bolt  Aug   Dru         Mag                                         
 locate          Aug   Dru   Cle   Mag                                         
 recall          Aug   Dru   Cle   Mag   Ran   Pal                             
 stone skin      Aug   Dru         Mag   Ran   Pal                             
 shock gras      Aug   Dru         Mag                                         
 shield          Aug   Dru         Mag   Ran   Pal                             
 scry                  Dru   Cle   Mag
 Sanct           Aug   Dru   Cle
 Rem Trap              Dru   Cle   Mag
 Rem Invis       Aug   Dru         Mag   Ran
 Rem Curse             Dru   Cle               Pal
 Refresh         Aug   Dru   Cle   Mag   Ran   Pal
 Poison          Aug   Dru   Cle         Ran
 Passdoor        Aug   Dru         Mag   Ran
 Massinvis             Dru   Cle   Mag
 
~

56 SPELLCOMPONENTS~
T###         check for item of type ###
V#####       check for item of vnum #####
Kword        check for item with keyword 'word'
G#####       check if player has ##### amount of gold
H####        check if player has #### amount of hitpoints
 
Special operators:
+ don't consume this component
@ decrease component's value[0], and extract if it reaches 0
# decrease component's value[1], and extract if it reaches 0
$ decrease component's value[2], and extract if it reaches 0
% decrease component's value[3], and extract if it reaches 0
decrease component's value[4], and extract if it reaches 0
decrease component's value[5], and extract if it reaches 0
and ! will make the spell fail if the caster is carrying that component.
 
Example: V1100 V+1101
The spell will only succeed if the caster is carrying objects of vnums
1100 and 1101.  The object of vnum 1100 will get consumed by the spell,
and the object of vnum 1101 will not.
 
With the decremental operators (@#$%), the object must have at least
a value of 1 in the respective location for the spell to succeed.
 
~

56 SPELLFLAGS~
water           water based (create water, ice spells)
earth           interracts with nature (earthquake)
air             involve the air or winds
astral          involve the astral plane (astral walk)
area            an "area spell"... affects everyone in the room
distant         affects something far away
reverse         has a reverse affect
save_half_dam   victim can save for half damage
save_negates    victim can save for no effect
accumulative    can be cast repeatedly to have an increased effect
recastable      can be cast again to refresh the spell
nobrew          cannot be brewed into a potion
noscribe        cannot be scribed onto a scroll
group           affects everyone in the caster's group (same room only)
object          specifically affects an object (for target 'ignore')
character       specifically affect a character (for target 'ignore')
pksensitive     affects target as if they were double your level
~

1 SPELLS~
Type 'practice' to get a list of spells currently available to you and
to see to what extent you have them practiced.  Type 'slist' to view a
list of all spells available at each level to your class.
~

56 SPELLSAVES~
Here are the saving throws you can set for use in SMAUG spells:
none            victim doesn't get a saving throw
poison_death    save vs. poison or death
wands           save vs. wands
para_petri      save vs. paralysis or petrification
breath          save vs. (dragon) breath
spell_staff     save vs. spells or staves
 
~

1 SPINKICK~
Syntax: Spinkick (victim)
 
To lift one's foot, spin to gain momentum, and kick your opponent.
~

1 'SPIRAL BLAST~
Syntax:  c 'spiral blast'
Abbrev:  c spiral
 
A powerful, spinning blast of coloured gas conjured by an Augurer, it attacks
every enemy target in the area.  The spell is hostile to all creatures in
the room, and will cause them to engage the caster in combat.
 
~

0 'SPIRITUAL WRATH'~
Spiritual Wrath sends a blast of blinding light at all targets in the
room. It requires 2 casters and the damage it does depends upon the
caster's wisdom.
~

0 SPLIT~
Syntax: SPLIT <amount>

SPLIT splits some gold between you and all the members of your
group who are in the same room as you.  It's customary to SPLIT
the gold after a kill.
~

1 SPURN~
Syntax:  spurn
 
Spurn is a skill which can only be used on your primary target. If it 
successfully lands, it inflicts damage on your opponent.
~

55 SSET~
Syntax: sset <victim> <skill> <value>
or:     sset <victim> all     <value>
or:     sset <sn>     <field> <value>
 
name          the name of the skill or spell
code          for spells, the code executed when the spell is cast
target        for spells, the target of the spell (see TARGETTYPES)
minpos        the minimum position required to use this skill/spell
slot          for spells, the slot number used in area files
mana          for spells, the amount of mana consumed by the spell
beats         how long this skill takes to be used (in 1/4 seconds)
dammsg        a word to describe the damage done by this skill or spell
wearoff       for spells, the message given when the spell wears off
type          the type of skill (Spell, Skill, Weapon, Tongue)
difficulty    how difficult the spell/skill is to learn and/or use
damtype       for spells, the class of damage it does
components    the components required for this spell (see SPELLCOMPONENTS)
teachers      will restrict the teaching of this skill to these mob vnums
participants  the minimum number of required participants (for spells)
 
For the special fields used by SMAUG spells (spell_smaug) see SMAUGSPELLS
~

1 STANDARD~
Syntax: style standard
 
This style is both a balance of offense and defense, giving neither a
fighter nor his enemy an advantage in battle.
 
See Also: style, evasive, defensive, standard, aggressive, berserk
~

1 STAT~
Syntax:  stat
 
Displays to the character its basic stats and attributes in
brief form.
 
See also:  statreport, score, oldscore, worth
~

1 STATREPORT~
Syntax:  statreport
 
Displays a brief summary of a character's basic stats and
attributes to everyone present.
 
See also:  stat, score, oldscore, worth
~

0 STEAL~
Syntax: STEAL coins <character>
Syntax: STEAL <object> <character>

STEAL attempts to steal coins, or an object, from a mob or another player.

There are penalties for using STEAL on other players.

In order to STEAL successfully, you must practice the skill.
~

1 STORY2~
. And so the multiverse was destroyed. Comforting Oblivion now reigned
over all. This peace did not last long however, as a powerful backlash
arose from Dominus' magic wielding, a strange entity containing the very
essence of magic. It quickly weaved a new plane and world. A monument to
life was grown, which it called the Tree of Life. From the Tree sprung
creatures of all types, just as they were before Dominus wielded Oblivion
against them. New lands were created and these slowly spread outward from
the Tree. Cities were founded and conquered, and life began anew. The Tree 
also blessed some beings with knowledge of the Old Ways. These few mortals
learned about the Lost Gods and took to worshipping them.
  Dominus eventually discovered this seed of Life within the vast void and,
with a mere thought, destroyed it. As he was about to eradicate the remains of
the unnamed plane, Thoric halted his hand, deeming that none would interfere
with this interesting offspring of magic. Dominus was given the eternal task of
overseeing this plane, which Thoric named Despair.
  Despair began as a world of Goodness, yet has now been corrupted over the
ages by Dominus and the Gods he raised through divine ascension. The peaceful
mortals of this now dark plane find themselves pressed into war against the
Darkness. Beings of Light have become increasingly rare and a single, great
resistance has binded together: the towns of Solace, Ofcol, New Thalos,
Ocean Keep and most importantly, Darkhaven. All the other Realms of Despair
have fallen, and thus does Good's hope falter and wither...
~

1 STR STRENGTH~
Strength (STR in your 'score') represents your character's physical power.
 
The most common concern with strength deals with how much your character
can carry.  For each additional point of strength  you gain an additional
amount of maximum carryable weight.  Any character with 20 strength can
carry 500kgs; Warriors and Rangers can have a maximum of 25 strength, and
can therefore carry up to 999kgs when their strength is at its maximum.
 
Strength also affects (among other things):
 
 - damage roll and hitroll; for each additional point of strength, each
   of these will increase
 
 - chances of success for bash, stun, bashdoor, shove and drag, and the
   ability to dual-wield heavier weapons
 
Strength is the prime attribute of warriors, rangers and paladins.
 
~

1 STRIKE~
Syntax:  strike
 
Strike is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

61 STRIP~
Syntax 'strip <victim>
 
Silently transfers their entire inventory and clothing to yours. 
~

0 STUN~
Syntax: stun <mob>

Stun is a skill which can only be used once a fight has started.  It will 
stun your opponent if successful.
~

1 STYLE STYLES~
Usage: style <style name>
 
Styles, when effectively used, can change the tide of battle. The more
experienced one is in a particular style, the better the chances that it
will work for the fighter's advantage. There are five different known
styles. Styles can be changed within combat to better ones advantage
and knowledge of each of the different forms of combat.

See help files on AGGRESSIVE, BERSERK, DEFENSIVE, EVASIVE, STANDARD.
 
 
~

1 'SULFUROUS SPRAY'~
With the incantation 'Sulfurous Spray,' the casting mage culls from
the air the elements necessary to form a strong acid which rains
down upon his opponent or opponents.  This strength and velocity
of the spray is such that it can work its way into various forms
of armor and clothing, and it is also able to harm opponents one
might think resistant to such attacks, due to its magical nature.
~

-1 SUMMARY~
.           &B
|----------------------------------|----------------------------------|
|&C              MOVEMENT&B            |&C               GROUP              &B|
|&Cnorth east south west northeast up&B|&C follow group gtell ; split       &B|
|&Cnorthwest southeast southwest down&B|----------------------------------|
|&Csomewhere open close lock unlock  &B|&C           INFORMATION            &B|
|&Cleave enter climb fly float look  &B|&Cdeath CR reimb rules damage areas &B|
|&Cwhere scan scry sleep wake stand  &B|&Ccommands experience score title   &B|
|&Crest sit&B |------------------------|&Cweather channels description story&B|
|---------|&C CONFIG OPTIONS         &B|&Cwho report tick password typo note&B|
|&Cautoloot autogold autoexit autosac&B|&Cwizlist MOTD news bug weapons mail&B|
|&Cnice flee norecall ansi blank rip &B|&Ctime slist report languages spells&B|
|&Cnointro prompt telnetga shovedrag &B|&Cskills idea&B |---------------------|
|&Ccombine&B  |------------------------|------------|&C COMBAT              &B|
|---------|&C    OBJECTS             &B|&Ckill flee wimpy rescue aid murder &B|
|&Cget put drop give sacrifice recite&B|&Ccast&B |----------------------------|
|&Csay tell chat question answer yell&B|-----|&C     COMMUNICATION          &B|
|&Cwield wear remove inventory list  &B|&Csocial quest clan ordertalk newbie&B|
|&Cappraise buy sell compare examine &B|&Cavatar counciltalk quildtalk shout&B|
|&Chold quaff zap brandish equipment &B|&Csay tell chat question answer yell&B|
|&Cempty fill eat drink pick value   &B|&Cauction&B  |------------------------|
|----------------------------------|----------|
&CAlso see help on: !, SAVE, QUIT, PAGELENGTH, PRACTICE.
To use the help menu, just type "help <topic>".
To see help on individual areas, you can now type "help <full area name>".
If you are new to the Realms, type HELP NEW to see a special help series.
~

1 SUMMON SUMMONING~
Syntax:  cast summon <character>
 
This spell summons a character from elsewhere in the Realms to your own
location ... and stuns your character.
 
Characters who are fighting cannot be summoned.  Do not summon aggressive
mobs into an area lower in level than the one from which they came, and
do not summon aggressive mobs of any level into Darkhaven.
~

1 SUPPLICATE~
Syntax: 'supplicate <supplication>'
 
Supplicate begs your deity (if you have one) for aid.  You may supplicate
for 'corpse', which retrieves your corpse, 'avatar', which summons an avatar
of the deity, 'object', which summons an object of the deity and 'recall',
which sends the player back to his recall point (bypassing norecall flag).
 
Note: All deities offer corpse and recall, while object and avatar are for
particular deities only.

Deadlies may not supplicate for their corpse.

*** To be rid of an avatar, dismiss them. (help dismiss)
 
SEE ALSO:  remains, deities, favor, devote
~

1 SWAT~
Syntax:  swat
Swat is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 SWIPE~
Syntax:  swipe
 
Swipe is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

52 SWITCH RETURN~
Syntax: switch <character>
Syntax: return

SWITCH switches you into the body of another character (who must not
already have a descriptor, e.g. you can't switch into a PC).

RETURN returns you to your original body.
~

0 SWORDBAIT~
This spell makes the victim more susceptible to slashing attacks.
~

1 TAIL~
Syntax:  tail
 
Tail is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

1 TAMP~
Syntax:  tamp <pipe>
 
This empties your pipe so that you may fill it with fresh herbs.
 
~

55 TARGETTYPES~
Target                Function
--------------------------------------------------------------------
ignore                Spell affect relies on the casting argument
offensive             Spell will initiate combat
defensive             Can be cast on anyone safely
self                  Spell only affects the caster
objinv                Casted onto an object in the caster's inventory
 
~

0 TELEPORT~
&YSyntax&W: c teleport

This spell takes you from your current location to a random location somewhere
in the world.  As the energies involved are difficult to control, there is no
sure way of determining your destination.  Therefore, caution and planning
should be in the forefront when considering whether to use this spell.
~

1 TEND~
Syntax:  tend <target>
		 tend
The well-traveled Paladin will normally learn the techniques necessary
to mend the wounds of himself or others.  This is the greatest mending
ability in the Paladin's repertoire, though due to its nature it can
not be used while in combat.
 
~

65 TEST HELP~
~

1 TEST HELP~
~

60 TEST1~
.           &B/|                                           |\
		  /||                                           ||\
		 / \\__          //               \\          __// \
		/  |_  \         | \   /     \   / |         /  _|  \
	   /  /  \  \         \  \/ \---/ \/  /         /  /     \
	  /  /    |  \         \  \/\   /\/  /         /  |       \
	 /  /     \   \__       \ ( &G0&B\ /&G0 &B) /       __/   /        \
	/  /       \     \___    \ \_/|\_/ /    ___/     /\         \
   /  /         \_)      \___ \/-\|/-\/ ___/      &b(_/\ &B\      `  \
  /  /           /&b\__)       &B\/  oVo  \/       &b(__/   ` &B\      `  \
 /  /           /,   &b\__)    &B(_/\ _ /\_)    &b(__/        &B\`      \  \
/  '           //       &b\__)  &B(__V_V__)  &b(__/             &B\\     \  \
\  /                                                               \/
&B|           &wWelcome &BDelphya &wto the immortal family.                &B|
&B|           &wCongrats to &BBede&w! Demi God's will never be the same!   &B|
&B|           &wWelcome &BJulie &was the newest SLAYBAIT!                  &B|
&B|           &wCongrats to the groggy one! &BBlackmane &wpromoed!         &B|
&B|           &wCoE's senility has set in and &BRanma &wwas promoted!      &B|
&B|           &wDEATH this way comes! &BLascivias &whit Savior!            &B|
&B|           &wCoE re-affirms their grip on reality...&BMyra &wpromoed!   &B|
&B|           &wFrom Creator to Demi Goddess, &BKattia &wearns her claws!  &B|
&B|           &wWanted: &BJorbin &w- For the theft of promotion warrants!  &B|
&B|           &wPhhilostrate rises another level! &BCongrats!            &B|
&B|           &wThe Hounds have arrived with fresh &BAyesh &wmeat!         &B| 
&B|           &wThe CoderGods have bestowed us with &BMayhem&w! Be ready   &B|
&B|           &wfor complete chaos and thank a coder today!            &B|
 
						&wI.M.O.T.D. Updated: &B6/14/98
~

1 THALOS~
Recommended level range: 10 - 25

 
Thalos was once the most powerful nation in Despair, a constant thorn
in the side of Darkness, an ever-vigilant defender of Light. It was not
surprising then that, after another victory against Lord Seth's forces,
a magical black mist was unleashed on the city. Any who entered the foul
mist were dead within minutes, poisoned by the deadly vapors. When the
dark cloud lifted, Thalos was left in ruins, its once slavebound lamias
now deadly creatures. A beholder was left to rule over the wreckage.
None have attempted to rebuild Thalos, for they say it is cursed for
all time...
~

1 'THE ASTRAL PLANE'~
Recommended level range: 15 - 35

High above Darkhaven, perched atop a heavenly rainbow, is the ever-
standing pearly gate to the Astral Plane. Once a gateway between worlds
and planes, it is now a black void which is connected to but one world.
The Astral Plane's inhabitants do provide much intrigue however, even if
their homeland does not. The githyanki, as they are called, were once humans
enslaved by the mind flayers of Shadowport. Led by the Lady Gith, they
escaped, yet their minds and bodies were so tortured that they were no
longer accepted openly among humans. Using new psionic powers, they quickly
dominated the Astral Plane. Since then, a powerful lich has become the
ruler of the race. None know the fate of the Lady Gith, although many
speculate that she lost or refused to fulfill a bargain she made with dark
powers to free her race...
~

1 'THE KEEP OF MAHN-TOR'~
Recommended level range: 5 - 35

The city of minotaurs, Mahn-Tor, lies on the continent of Antarctica, across
the lapping red waves of the Blood Sea. Most adventurers reach this land
through the ancient Blood Sea Portal. Named after its ruler, Mahn-Tor was
founded long ago after a dark, unknown sect created the minotaur race by
joining the features of bulls with unwilling humans. This savage race
eventually rebelled and won its freedom. In recent years, the minotaur race
has become much more civilized and though tempted to joing the forces of
Light, they remain in neutral in the war between Good and Evil.
~

1 'THE SHIRE'~
Recommended level range: 5 - 35

The Shire is a small village of halflings and hobbits to the northwest
of Darkhaven.  The town is run by the Thain, who also manages the trade
of wheat with other towns.  Very little danger exists in the Shire,
save for the occasional thieving youth, or angry bull.
~

1 'THE TOWER OF ZENOTHIR'~
Recommended level range: 15 - 25

In the dwarven forest to the southeast of Darkhaven is a small village
and tall tower. Residing in the tower is, of course, Zenothir, a famed
magician who made his fortune with the magical art of illusion and 
trickery. Other practitioners of this art have flocked to this tower and
founded a small village around it, although some say it is more a circus
than village. Although it is a well known fact that Zenothir has taken up the
cause of Good, these followers firmly believe that those who impress the
great mage sufficiently will be rewarded with his infinite knowledge of 
illusionary magic.
~

1 'THE TREE OF LIFE'~
Recommended level range: 35 - 50

It was this Tree that the essence of magic weaved ages ago, after the
planes of the multiverse were destroyed by Dominus. From the Tree of
Life grew the beginnings of existence on Despair, from the lowliest
insect to the wisest of sages. Many have visited the Tree even after
its destruction by travelling through a magical portal which links
the present and the past. Those who return speak of many powerful
entities which combine many elements of life.
~

1 'THE UNDERWORLD'~
Recommended level range: 0 - 60

Far beneath the surface of the earth, beneath even the dwellings of the
dwarves, is the Underworld. Located near the center of the world of Despair,
it a realm of fire, brimstone and ash. Flows of lava are common and the 
heat of this dread place has been known to kill the weak of heart. Hideous
beings populate the Underworld, led by Satan. None know where she arose from,
though many speculate that she is a powerful entity with dominace over death.
~

0 THIEF THIEVES~
The thief is a dark character which makes use of many skills often deemed
improper by the rest of society. Known to haunt the darkest roads and
alleys. The skills of the thief reflect his way of life, be it sneaking,
peeking into others' inventories, picking locks, or attacking from behind
with deadly backstabs. With amazing dexterity they have the ability to
circle around an enemy, but for living such a dark life, thieves have
always had a bad reputation so don't be suprised if you are always under
suspicion. Thieves start off fairly weak, but as they gain skills such as
backstab and circle they soon become dangerous foes.  A thief is always
useful when there is  a lock that needs pryed, or an item that one wishes
to acquire without detection.
 
~

61 THIEFSKILLS~
.   aggressive style  21%                  aid  39%             backstab  95%
				bash  22%        berserk style  17%               circle  95%
			   climb  17%      defensive style  17%               detrap  17%
				 dig  17%               disarm  90%                dodge  95%
		  dual wield  85%      enhanced damage  55%        evasive style  22%
	   fourth attack  30%                gouge  95%                 hide  85%
			   mount  17%                 peek  95%            pick lock  95%
	   poison weapon  38%                punch  50%                 scan  90%
			  search  85%        second attack  90%                sneak  95%
	  standard style  17%                steal  95%         third attack  70%
			   track  85%               tumble  95%
 
~

61 THIEFSPELLS~
~

56 THINK~
There is *no* "la la la"ing on think.
~

62 'THIS IS A TEST'~
yadda yadda yadda
~

61 THORIC1~
.&w
												 zee.                 
		z**=.                                  .P"  $                  
		 %   c                               z"   $                   
		  b    %                             d    4"                   
		  4     $            ....           4"    $                    
		   F     L       .P"       "%.      $     $                    
		   $     4     e"             "c    "     $                    
		   $      F  z   &BTHORIC           &w*  4      $      
		   P      $ d                    3.$      $                    
		   %      $d       ..eeeec..      *$      'b                   
		  d       $%   .e$*c d" ".z**$%.   $       $                   
~

0 TICK~
Many of the actions in the Realms are based upon interval timers, including
combat, most autonomous monster actions, hp/mana/move regeneration, spell
duration, weather, and area resetting.
 
Of these timers, the hp/mana/move regeneration timer is popularly called the
'tick'.  Ticks in these Realms average 60 seconds of real time, but the
actual amount varies randomly from 45 seconds to 75 seconds.
 
Area resetting happens roughly every 3 minutes if there are no characters in
in the area; less often (15 minutes) if any characters are present; Also,
some lower level areas have shorter reset periods, while some higher level
areas have longer reset periods.
 
Note that objects lying on the ground will not be regenerated if anyone is
in the area when it resets.
 
Area resets are indicated by 'squeaking noises' or other messages just prior
to the reset itself.
 
~

51 TIMER~
Associated help files: help corpse, help imm cr, help bodybag
 
31 to 40                "is lying here."
23 to 30                "is buzzing with flies."
15 to 22                "fills the air with a foul stench."
07 to 14                "is crawling with vermin."
01 to 06                "is in the last stages of decay."
 
Since a corpse now lasts from 40 to 60 minutes, we are requested to wait
until the corpse has reached below a timer of 23 or has hit the
"fills the air with a foul stench." stage in decay.
 
You can see what stage of decay a corpse is in by either typing:
ostat <player name>       (i.e. ostat Brittany)    OR
at 'corpse <name>' look   (i.e. at 'corpse Brittany' look)
~

0 TITLE~
Syntax:  title <string>
 
This command allows you to set your title the text of your choice.  The
game supplies a title when your character is created and each time you
advance a level.  
 
*  Must be level five or higher to use title
** Titles are subject to the same guidelines for use of language as channels
 
~

51 TONGUE TONGUES~
The different PC languages include common, elvish, dwarven, pixie, ogre, 
orcish, trollese, goblin, halfling and gith.
 
NPC languages include rodent, insectoid, mammal, reptile, dragon, 
spiritual, magical, god, and ancient.
~

1 TOPICS~
Additional topics you may want to look over:
*TICK
*WIZLIST
*EXPERIENCE
*EQDAMAGE
*CLANS
*CHANGES
*DAMAGE
*NEWS
*STORY
 
To view a topic type: HELP <topic>
~

1 TOURNEY~
Recommended level ranges : 30 - 50
 
Forged through time and perilous blood and sweat, this gladiator arena is
famed for its prizes given to those proven victorious in the tournament.
Survival and fame, there is no second place within the halls of this
colliseum.  Guarded by once gladiators themselves, you will find that any and
all fighting is kept within the center of the arena.  Night after night,
thousands of spectators come from far and wide to witness the chilling spill
of blood and hopes.  You will find that within this massive and luxurious
colliseum there is no such meaning for the word mercy.
~

0 TOWER 'TOWER OF DESPAIR' 'THE TOWER OF DESPAIR'~
Recommended level range: 35 - 50
 
The dark Tower of Despair has existed for many ages as a black spike 
that corrupts the landscape west of Darkhaven. The God Strahd created 
this monstrosity, a gift to his most loyal servant: Orcus, Demon Prince 
of Death. The early ages of Despair were plagued by his dreaded minions 
and the undead walked the land. Orcus was without a doubt the most powerful 
evil in the Realms until he crossed the legendary Zarkas. Wielding the lost 
blade Nemesis, the Ancient Vampire Lord forced Orcus back to his abode and 
sealed the Lord of Undeath in his tower. Though Orcus is forever imprisoned, 
he still influences Despair to this day. Rumors, recently confirmed, tell 
that he has even managed to capture a solar, a being of pure Light.
~

1 'TOWER OF ENLIGHTENMENT'~
Recommended level range: 35 - 50

The Tower of Enlightenment is situated near Lord Seth's Fortress, a
beautiful sight compared to the Dread Demigod's castle. Little is known
about this monument to knowledge, although many speculate that a tour 
of the tower can bless an adventurer with a crude understanding of the
multiverse. Some even say that the Infidel, Circe, has crafted under-powered
forms of some of the Lost Gods and sentenced them here to give adventurers
a feeling of godly might.
~

1 'TOWN HALL'~
Recommended level ranges: 0 - 60
Darkhaven's latest architectural feat was in a sense, a prank at first.
The diety Elcid, looked upon the old Town Hall, and decided unto himself
that is was too easily accessible. So it was with his keen mind that he
created the New Town Hall. At first it was a maze of tricks and traps,
mostly harmless fun until Brontrel looked down upon this and instilled
Order unto the Hall. Now it is a place where all may meet and talk of
that which interests them. Many boards covering all subjects lie scattered
thought the three floors of the hall, along with meeting rooms where such
 
councils may be convened. Upon the first floor, the Mayor and the Judge of
Darkhaven reside, and the top floor was taken over by the Symposium to
better relations between mortals and immortals alike
~

1 'TOWN OF SOLACE'~
Recommended level range: 5 - 50

The town of Solace lies to the northwest of Darkhaven, attainable through
a path in Haon Dor. It is one of the five cities of Light and has fiercely
defended its territory for ages with the aid of the famed Mandor and Nelson.
An interesting quirk of Solace's citizens is that they do not believe in the
use of magic or the aid of the Gods. They are the meaning of the word warrior.
All are advised to keep this in mind when challenging the city's finest.
~

60 TOWNAHLL~
.
hedit townhall
~

0 TRACK~
Syntax: track <mob>

Track will assist you in tracking down a mob that is within the area, 
giving you its general direction.
~

1 TRADE TRADING~
Please see the help password file for important information.
~

65 TRAFFIC~
Syntax:  traffic <message>
 
Traffic is akin to the old auction channel, meaning it is a
simple channel on which to offer to buy or sell whatever it is
you wish to buy or sell.
 
Please do not spam other channels with offers to buy or sell
goods.  Use the traffic channel.
 
Avatar traffic is seen only by avatars, and non-avatars see
only non-avatar traffic.  Immortals on the channel see and
are seen by all.
 
 
Traffic is for the exchange of equipment, not for discussion.
 
See also: AUCTION
~

0 TRAIN~
The TRAIN command is no longer functional; you must keep your assigned 
attributes and can modify them with objects.
~

1 'TRANCE'~
TRANCE
Syntax: trance
 
A character in possession of this skill may use it to briefly focus its
energies toward restoring a small burst of mana.
~

52 TRANSFER~
Syntax: transfer <character>
Syntax: transfer all
Syntax: transfer <character> <location>
Syntax: transfer all         <location>

TRANSFER transfers the target character, or ALL player characters,
to your current location (default) or to a specified location.
~

1 TRANSPORT~
Syntax:  cast 'transport' <object> <victim>
 
'Transport' sends an object in the caster's inventory to the victim.
~

1 TRANSYLVANIA~
Recommended level range: 35 - 50
 
Transylvania was once a populated isle floating in the vast Sea of
Sorrows. Its people were strong and hard-working, ruled by an honorable
Prince. Its fate was decided when the ancient Inconnu elder, Dracula,
was overcome by a malevolent entity and abandoned his clan. It 
is thus that he came the Transylvania. The land's people slowly began
disappearing, replaced with vampiric minions and leeches. In the end,
the Transylvanian Prince fled, leaving the living that remained to die,
and then live in undeath. A small number of individuals still fight
the darkness in this hopeless land. The Count Dracula, as he is now
known, has taken up residence in a manor in the northern part of the
realm, commanding his minions from his lair. It is rumored that he has
been killed many times, only to rise again; for he is cursed and Vl'arescht
refuses his soul in all the higher planes.
~

53 TRAPFLAGS~
Flags to describe a trap and what triggers it:

ROOM    - Trap is in a room
OBJ     - Trap is on an object
ENTER   - Trap is triggered by entering the room
LEAVE   - Trap is triggered by leaving the room
OPEN    - Trap is triggered by opening
CLOSE   - Trap is triggered by closing
GET     - Trap is triggered by getting the object
PUT     - Trap is triggered by putting the object
EXAMINE - Trap is triggered by examining the object
PICK    - Trap is triggered by picking the object
UNLOCK  - Trap is triggered by unlocking the object
NORTH   - Trap is triggered by moving north
SOUTH   - Trap is triggered by moving south
EAST    - Trap is triggered by moving east
WEST    - Trap is triggered by moving west
UP      - Trap is triggered by moving up
DOWN    - Trap is triggered by moving down

See RESET, TRAPSETTING and TRAPTYPES.
~

52 TRAPSETTING~
Setting a trap is a little tricky.

Parameters: <vnum> <type> <charges> <flags>
VNUM    - The vnum of either the room or object to be trapped.
TYPE    - The type of trap.  (See TRAPTYPES)
CHARGES - The number of charges this trap should contain.
FLAGS   - Flags specifying the characteristics of the trap.
		  (ie: room trap or object trap, what triggers the trap, etc.)

See RESETS, TRAPTYPES and TRAPFLAGS.
~

52 TRAPTYPES~
Types of traps:

 --------------------------------------------------------------------
 | Number | Description             | Number | Description          |
 --------------------------------------------------------------------
 |    1   | Poison gas              |    8   | Flame                |
 |    2   | Poison dart             |    9   | Explosion            |
 |    3   | Poison needle           |   10   | Acid Spray           |
 |    4   | Poison dagger           |   11   | Electric Shock       |
 |    5   | Poison arrow            |   12   | Blade                |
 |    6   | Blindness gas           |   13   | Sex change spell     |
 |    7   | Sleeping gas            |        |                      |
 --------------------------------------------------------------------

See RESET, TRAPSETTING and TRAPFLAGS.
~

1 'TREE OF LIFE'~
Recommended level range: 35 - 50


The origin of all life on Despair can be traced back to the Tree of Life.
Weaved by the essence of magic ages ago, the Tree grew the beginnings of
all existence; from the lowliest insect to the wisest of sages. Many have
visited the Tree through a magical portal leading into the past from the
present, those who return speak of many powerful entities who reside there.
~

53 TRIGGER~
A trigger is an action, phrase, or game event that causes a program
held within a room, mob or object, to begin playing out its commands.
 
Triggers can be anything from a player or mob entering a room, to a
player stating a particular phrase within a room, or to a mob or an
object.
 
For detailed information on triggers, see:
 
RPTRIGGERS, MPTRIGGERS, OPTRIGGERS
~

1 'TROLL DEN'~
Recommended level range: 10 - 20

A small group of trolls resides in the darker regions of Haon Dor.
These filthy creatures often wander the forest, seeking lone adventurers
to knock unconscious and bring back to their den for dinner. Though
they do not number many, their numbers appear to be multiplying at a
fast rate...
~

0 'TROLLISH VIGOR' TROLLISH VIGOR~
This spell increases your stamina during its duration.
~

57 'TRUE SIGHT'~
Syntax:  cast 'true sight'
 
This spell can only be cast upon yourself.  It is a combination of
infravision (enabling you to see in the dark), detect invisible,
and detect hidden.  This spell also allows you to see through
blinding attacks.
~

1 TRUE TRUESIGHT~
Syntax:  cast truesight
Syntax:  c true
 
Truesight confers the caster with a very brief immunity to blindness
(from attacks such as gouge or the blindness spell itself).  While
under the spell's effect, the caster continues to see.  Be warned
that when the spell wears off the caster will become blind should
the effects of the blinding attack still remain.
Truesight cannot be cast on anyone but the caster itself.
~

60 TRUST~
Syntax: trust <character> <level>

TRUST sets a character's trust to the specified level.  This is similar to
advancing the character for accessing immortal commands, but has no effect
on combat strength, et cetera.  You can give more trust to mortal (or
immortal) characters to give them access to more power without messing up
the character.  You can also restrict a player's trust to less than their
natural level.

A trust of 0 means to use the character's natural level again.
~

-1 TSR D&&D AD&&D~
.               Dungeons && Dragons (tm) and TSR Hobbies Inc.

  Here we'd like to duplicate the original credits from the Basic Rules,
Dungeons && Dragons (tm), (c) 1974, 1977, 1978, 1981, 1983 TSR Hobbies Inc.

Acknowledgements:
The following individuals have made this work possible through its years of
evolution: Dave Arneson, Brian Blume, Dave Cook, Anne C. Gray, Ernie Gygax,
E. Gary Gygax, Allen Hammack, Kevin Hendryx, John Eric Holmes, Harrold
Johnston, Tim Kask, Jeff Key, Rob Kuntz, Alan Lucien, Steve Marsh, Tom
Moldvay, Mike Mornard, Jon Pickens, Brian Pitzer, Michael Price, Patrick L.
Price, Paul Reiche, Evan Robinson, Gordon Schick, Lawrence Schick, Don Snow,
Edward G. Sollers, Garry Spiegle, Stephen D. Sullivan, Ralph Wagner, Jim
Ward, Jean Wells, Bill Wilkerson, Donald Paterson, and Frank Mentzer.

	  DIKUMud's concepts were directly based on TSR's D&&D concepts.
~

1 TUMBLE~
Syntax:  operates independently
 
Tumble is a high-level thief skill for the evasion of incoming attacks.
The skill functions autonomically, and its effectiveness is greater for
more dexterous thieves.
 
~

1 'TWO RIVERS'~
Recommended level range: 1 - 15
 
The small farming and hunting town of Two Rivers lies north of the
Shire, across the shimmering Brandywine River. Its people are mere
peasants and offer very little aid in the battle against Darkness.
~

59 UNFOLDAREA~
Syntax:  unfoldarea <area filename>
 
This command will load up an area file.
 
NOTE:  It could be quite dangerous to unfold an area that is already
	   loaded, or one that has not been tested.
 
~

1 'UNHOLY GROUNDS'~
Recommended level range: 5 - 15

As you walk through this hellish cemetery, before the graves of those torn
from life before their time, you can hear the mournful cries of those
left behind.  A bell tolls in the distance, announcing the passing of
yet another lost soul.  A preacher speaks from a shoddy chapel, giving
hollow words of comfort to the mourners gathered there.  The vileness of
this place permeates your clothing, attacking your every sense.  Ghoulish
corpses littering the ground, unholy statues with the heads of gargoyles,
and a vile mausoleum filled with bloody carcasses rotting away - these are
the visions which assault your mind.
~

1 'UNRAVEL DEFENSE'~
Syntax: c 'unravel defense' <victim>
 
This spell renders the victim susceptible to both magic and nonmagic attacks.
~

1 UPLIFT~
Syntax:  c uplift <target>
 
Uplift is a cleric spell that can heal from afar, meant to be used in 
aiding players with negative hitpoints.
Uplift is not to be used as your common mode of healing.  Repeatedly asking
for uplifts on public channels is spammy and annoying for other players.  
Keep in mind that the clerics that are uplifting you are doing so out of 
kindness.  Do _not_ abuse it or consider it a right.
~

1 UPPERCUT~
Syntax:  uppercut
 
Uppercut is a skill which can only be used once a fight has started,
and can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

54 USEPROG~
Syntax: opedit <object> <command> [number] [use_prog] [percentage]
 
The use_prog is an objtrigger that can be used in object programs.  The
use_prog will be executed when the item is used.  To define what will
trigger the use_prog, here is a list:

* Wands - when you zap
* Staves - when you brandish
* Food/pills - when you eat
* Blood/fountains/drink containers - when you drink
* Lights/armour/weapons - when you wear/wield/hold
* Potions - when you quaff
* Pipes - when you smoke
 
When the use_prog is executed you will not see the standard 'use message'
(ie You quaff a violet potion). What you will will be any mpechoes placed
in the program.  Also, any mobprog commands can be used in use_prog (see 
MPCOMMANDS).

**NOTE** The use_progs on lights, armour, and weapons are executed BEFORE
the player wears/holds/wields any item. Therefore, a mpforce to remove the
item will not work in the use_prog.  You will have to use a wear trigger
to accomplish this.
~

54 USERS~
Syntax: users <host ip>
Syntax: users <playername>

USERS reports all of the visible users connected to the server, including users
in the process of logging in.
If used with an argument, it will show all users from that host ip.
Shortforms of host will work -- e.x. 205, or 205.113, etc.
Shortened names will also work.  e.x., users fre would show
Fredrick and Fred if they were on at the time.
The first number, (desc), is the descriptor number that this user is on.
The second number is the user's connected state.  (See CONSTATES)
The third number is the number of seconds the user has been idle.
The fourth number is the remote TCP port on the user's host machine.
Next is the user's character name, then the user's host address.
(Usually the IP number as name resolving is normally disabled.)

The FORCECLOSE command can be used to force a connect to close by its
descriptor number.
~

0 VALIANCE~
This spell increases your perserverence when you are on the verge of
losing consciousness.
~

1 'VALLEY OF THE ELVES'~
Recommended level range: 5 - 20

The Valley of the Elves lies far to the north of Darkhaven, beyond the
great Mount Olympus. The tribal, uncivilized elves of Despair reside
in the valley, oblivious to all the pain and destruction which occurs
while they sing, dance and hunt. A single elf is involved in aiding
the forces of Light: Talemon the Archmage. Trained at the High Tower
of Sorcery and considered noble by all, he is well-respected in
courts throughout the Realms and his insight has often saved many lives.
~

0 VAMPIRE VAMPIRES~
.
Vampires are one of the powerful creatures of the Realms.  Being a creature
of the undead, they require copious quantities of fresh blood.  Instead of
using mana, Vampires use blood points (bp) for spell casting.  If a Vampire
takes a large amount of damage, Blood points will be lost, but, Blood points
can give a small surge of hit points (hp) in battle when needed.  As a undead
creature of the night, Vampires recieve an armor class (ac) bonus at night,
a time when they can use the skill mistwalk.
See also : help MISTWALK
~

53 VARIABLE VARIABLES~
This is the list of variables to be used in actiondescs for objects and in
mob/room/object programs.
 
VARIABLE         MOBILE  ACTOR  VICTIM  RANDOM  OBJECT  2ND_OBJECT
---------------  ------  -----  ------  ------  ------  ----------
Name               $i     $n      $t      $r      $o        $p
shrt_desc/title    $I     $N      $T      $R      $O        $P
he/she/it          $j     $e      $E      $J      --        --
him/her/it         $k     $m      $M      $K      --        --
his/her/its        $l     $s      $S      $L      --        --
 
See also: MPSTAT, RPSTAT, OPSTAT, MPEDIT, RPEDIT, OPEDIT, TRIGGER, MPTRIGGERS,
		  RPTRIGGERS, OPTRIGGERS, MPCOMMANDS, RPCOMMANDS, OPCOMMANDS, IFCHECKS.
~

1 VAULT~
Syntax:  vault
 
Vault is a skill which can only be used once a fight has started, and
can only be used against your primary opponent.  If it successfully
lands, it inflicts damage on your opponent.
~

0 VENTRILOQUATE~
Syntax: cast ventriloquate <speaker> <message>

This spell throws your voice, making it appear that some other object or
character in the room is saying your message.  Victims who make their saving
throw will know that someone is using ventriloquism, but not who.  Victims who
fail their saving throw will think that the object or character really did say
your message.
~

1 'VILLAGE OF EDO'~
Recommended level range: 35 - 50

To the northwest of Old Thalos is a small village populated by fierce
warriors. For years, the warriors of Edo have been training their art
of self-defence and attack. They have finally accomplished their holy
quest and have now joined the five cities of Light in the battle against
Evil. Though they do not have the numbers to contribute, the training
they provide largely outweighs this inconvenience.
~

55 VNUMS~
Syntax: vnums [low] [high]

Lists the vnum range for rooms/mobs/objects in all prototype areas.
~

1 'VOMICA PRAVUS'~
Syntax:  vomica <victim>
	or:  vom    <victim>
 
A truly depraved afflicition which may be inflicted by a vampire upon
its victim, this curse will weaken an opponent's hitroll and damage
roll, deprive them of precious luck and curse them for a brief time.
The damroll and hitroll affects of this curse increase with the level
of the vampire.
~

1 VOTING VOTE VOTES~
Syntax: note vote <number> open/close/yes/no/abstain
 
Once a note has been posted on a bulletin board, the author may open
voting with 'note vote <number> open'.  All those who can read the
board may then vote on the issue in the note with 'note vote <number>
yes/no/abstain'. The author may close the voting; the syntax for that
should be clear enough.
 
Note list will show whether a note is not a voting note, open to voting
or closed to voting.  The character that separates the author and the
recipient in 'note list' will be a colon, a capital V or a capital C
accordingly.
~

58 VSEARCH~
Syntax: Vsearch <vnum>
 
This command will list all instances of an object with that vnum that
are currently in the game. 
~

1 WAR WARTALK~
Syntax:  war <message>
 
Wartalk is a channel created as a haven for those players who like to openly
discuss their exploits in combat - and brag against their opponents.  It is
most often used for those who declare war on other deadlies and is desirable
for those who like to invite others to battles in player versus player
whether it be in the arena or around the Realms.
 
Wartalk can be seen by all players in the game, and has the same
rules as other channels.  No harassment, profanity, spamming, or
inappropriate subject matter.
~

58 WARN ~
Syntax: warn class <field>
Syntax: warn race  <field>
Syntax: warn site  <field>
Field is either #(ban_number) or the site/class/race.
Example:  warn class #1
~

0 WARRIOR WARRIORS~
Warriors are the epitome of fighters, able to use all weaponry and armour
in the exercise of their most lethal of combat skills.  A warrior must be
strong in body to survive his dangerous lifestyle, and though he has no
magic and limited skills he is nevertheless a formidable force with which
to be reckoned.  Warriors learn no magic, and have no use for mana.
 
~

51 WATCH~
. &w
&W Syntax: &G watch                  &W Shows you a help screen
&W Syntax: &G watch size             &W Shows the size of your watch file
&W Syntax: &G watch clear            &W Deletes your watch file
&W Syntax: &G watch show             &W Shows all your active watches
&W Syntax: &G watch player <name>    &W Starts watching a player
&W Syntax: &G watch site <site>      &W Starts watching all players from site
&W Syntax: &G watch delete <number>  &W Stops a watch
&W Syntax: &G watch print 1          &W Shows file starting at line 1
&W Syntax: &G watch print 500        &W Shows file starting at line 500
&W Syntax: &G watch print 500 100    &W Shows 100 lines starting at line 500

Watch will work 24 hours a day from the time you put a watch on a player until
you take it off. You can also watch all players from a specific site.
 
We need you to be real careful about the size of your watch file. If you
are watching a number of players or sites, please do not just forget about
your watches and allow your watch file to grow to outrageous sizes. You
should never have more than 5,000 or 10,000 lines in your watch file.
If you are doing some watching, be sure you check your watch file daily
and either print it, display it, copy it to your hard drive or do whatever
you need to do with it but then ... please ... please ... be sure you
clear it so that it don't grow huge and eat up all our hard drive space.
If you clear your watch file daily ... there should be no problem. If you
aren't watching anyone ... you don't have to worry about this. But if you
start a watch, it is your responsibility to know how big your watch file
is and to stop the watch when you no longer need it. The command
&G"watch size" &W tells you how many lines are in your watch file.
The command &G"watch clear"&W clears (deletes) your watch file.
For the time being the maximum number of lines you can display at one time
is 1000. So ... even if you have 5,000 lines in your watch file ... you can
only display 1,000 at a time.
 
~

1 WEAKEN~
Syntax: cast weaken <victim>

This spell reduces the strength of the victim by two points.
~

53 WEAPONCONDITION WEAPONCONDITIONS~
Value0  Condition
------  ---------
  12    in superb condition.
  11    in excellent condition.
  10    in very good condition.
   9    in good shape.
   8    showing a bit of wear.
   7    a little run down.
   6    in need of repair.
   5    in great need of repair.
   4    in dire need of repair.
   3    very badly worn.
   2    practically worthless.
   1    almost broken.
   0    broken.
 
See also OSET, OBJECTTYPES, WEAPONTYPES, ITEMVALUES and OMENU.
~

1 WEAPONS~
Weapons are the primary source of fighting power for most classes,
especially at lower levels where other skills and spells remain
unlearned. To use a weapon, simply 'wield <weapon name>'. You will
hit more frequently with a weapon which is suited to your class, so
choose your weapon wisely. For instance, mages use short blades at 95%
efficiency. A mage wielding a long blade would hit his/her target less
frequently, dependant upon the hitroll of the weapon in hand. Also, be
sure to practice and adept your favored weapontype for best results.
~

53 WEAPONTYPES~
For items of type "weapon", the value3 field specifies the weapon type:
 
Value3 | Type     | Weapons     | Skill
-------------------------------------------------------------
   0   | hit      | general     |pugilism
   1   | slice    | knife/sword |long blades
   2   | stab     | dagger      |short blades
   3   | slash    | sword       |long blades
   4   | whip     | whip        |flexible arms
   5   | claw     | claw        |talonous arms
   6   | blast    | magical     |pugilism
   7   | pound    | club/hammer |bludgeons
   8   | crush    | club/hammer |bludgeons
   9   | grep     |             |
  10   | bite     |             |pugilism
  11   | pierce   | dagger      |short blades
  12   | suction  |             |pugilism
  13   | bolt     | crossbow    |missile weapons
  14   | arrow    | bow         |missile weapons
  15   | dart     | pipe        |missile weapons
  16   | stone    | sling       |missile weapons
  17   | pea      | peashooter  |missile weapons
 
See OSET, MISSILES, WEAPONCONDITION and ITEMVALUES.
~

53 WEARFLAGS~
These flags should be self explanatory:

 take   finger   neck    body    head   legs
 feet   hands    arms    shield  about  waist
 wrist  wield    hold    ears    eyes

See OSET, RESETCMDS, and ARMORCLASS.
~

53 WEARLOCS~
Here are the various locations where items may be equipped:

 ---------------------------------------------------------
 |  0 | light       |  1 | finger1     |  2 | finger2    |
 |  3 | neck1       |  4 | neck2       |  5 | body       |
 |  6 | head        |  7 | legs        |  8 | feet       |
 |  9 | hands       | 10 | arms        | 11 | shield     |
 | 12 | about       | 13 | waist       | 14 | wrist1     |
 | 15 | wrist2      | 16 | wield       | 17 | hold       |
 | 18 | dual_wield  | 19 | ears        | 20 | eyes       |
 ---------------------------------------------------------

See RESETS and RESETCMDS.
~

57 WH 51~
.
~

0 WHERE~
Syntax: where
Syntax: where <character>

WHERE without an argument tells you the location of visible players in the same
area as you are.

WHERE with an argument tells you the location of one character with that name
within your area, including monsters.
~

1 WHISPER~
whisper <name> msg
 
To whisper to another, you must be in the same room as the recipient
of the whisper.
~

1 WHO~
WHO shows the characters currently in the Realms.  Invisible characters will
not appear on this list if you cannot detect invisible.  Immortals who are
wizinvis higher than your own level also will not appear.
 
Syntax:  who                 who <class>    who <class> race>
		 who <level range>   who deadly     who <class> <race> <level range>
 
With arguments, WHO can show players of certain classes, races, or levels:
For example:
 
 who 10                  lists all characters level 10 or above
 who 15 20               lists all characters between level 15 and 20
 who cleric              lists all clerics playing
 who cleric elf          lists all cleric elfs playing
 who imm                 lists all Immortals playing
 who cleric 1 5          lists all clerics between levels 1 and 5
 who deadly              lists all deadly (pkill) characters playing
 
NEW ADDITIONS:
 who 'guild of mages'    lists all online members of the specified Guild
 who <order name>        lists all online members of the specified Order
 who <clan name>         lists all online members of the specified Clan
 who 'newbie council'    lists all online members of the specified Council
 who <deity name>        lists all online worshippers of the specified deity
 who group               lists all online grouped players
 who group 10 20         will list all players level 1 thru 10 who are grouped
						 or who desire to group. (see also help CONFIG)
 who leader              will list all leaders of clans, orders, guilds and
						 councils.  This can be used in conjuction with a
						 specific order if it is listed after the name.
						 For example who 'guild of mages' leader
~

1 'WHO LEADER'~
Typing 'who leader' will list the current leaders of various organizations
that are online.
~

0 WHOIS~
Syntax: whois <player>
 
The WHOIS command will tell you a bit of information about a player
who is online.
~

0 WIMPY~
Syntax:  wimpy
Syntax:  wimpy <value>
Syntax:  wimpy max
 
This command sets your wimpy value.  When your character takes damage that
reduces your hit points below your wimpy value, you will automatically
attempt to flee.
													  
'Wimpy' by itself sets your wimpy to about 20% your maximum hitpoints.
 
'Wimpy <value>' allows you to set your wimpy at a level you determine,
but it cannot exceed about 75% of your maximum hitpoints.
 
'Wimpy max' sets your wimpy at its maximum level for you.
 
Some monsters are wimpy.
 
See also FLEE
 
~

0 'WINTER MIST' WINTER MIST~
This spell makes the victim more susceptible to all forms of coldness.
~

1 WIS WISDOM~
Wisdom (WIS in your 'score') represents your character's wisdom and ability
to incorporate learning.  Among other things, it affects:
 
 - the number of practices a character gains each time it levels
 
 - the mana a character gains each time it levels, though intelligence
   affects this much more heavily
 
 - the percentage a character learns of a new language at each practice,
   though intelligence affects this slightly more
 
 - the ability to remove a trap or poison a weapon
 
Wisdom is the prime attribute of druids and clerics.
 
~

51 WIZHELP~
Syntax: wizhelp

WIZHELP provides a list of all the immortal commands.
~

51 WIZINVIS~
All immortals have the responsibility to be available to others whenever
possible, be they mortal or immortal.  When the use of wizinvis is called
for, the following are parameters for its use:
 
 - Immortals level 51 through 54 should be visible at all times, save
   for when snooping, running a quest or some similar circumstance.
 
 - Immortals level 55 and up may invis to any level at their discretion.
 
Guidelines for use of wizinvis by 55 and higher:
It is considered mandatory to be visible to all other immortals whenever
reasonably able to do so.  Using wizinvis beyond 51 to facilitate work on
a project, allow concentration on something, avoid excessive tells or the
like is fine, but it should only be used while necessary.
 
Guidelines for use of wizinvis beyond 51 in immortal channels:
Sightings of Someones in immortal channels should be kept to a minimum.
If you are free enough to be able to use an immortal channel, you should
be visible to the lowest immortal in that channel; no higher than 54 in
Muse, no higher than 51 in immtalk, etc.  Being a Someone to anyone on
an immortal channel should only occur if you're too tied up to go
visible but need to make a comment.
 
The same applies to all situations using channels, tells or actions.
Avoid being a Someone to mortals and immortals alike unless you have
a good reason to do otherwise.
~

0 WIZLIST~
Syntax: wizlist

Displays a list of the powerful beings who govern this SMAUG MUD!
~

0 'WORD OF RECALL'~
Syntax: cast 'word of recall'

This spell will recall the caster to his or her home sanctuary.
~

-1 WORTH~
Syntax: worth

WORTH shows a simple, easy-to-read table of important and widely used
statistics. This command is for the character itself and cannot be used
on others. The Statistics that follow have been included in the table:
Level, Favor, Alignment, Experience, Glory, Weight, Style, and Gold.
~

0 WYVERN 'WYVERN TOWER' 'WYVERNS TOWER'~
Recommended level range: 5 - 30
 
Crafted ages ago from the black magics of an evil cult, the Wyvern's Tower
was conquered two decades ago by the forces of Light. They set the tower on 
fire and left, believing that holy fire would finish the deed of purging the 
evil of the place. However, only months after, many races of Darkness began 
creeping back, making the tower's hallowed halls their home once again. The 
forces of Light, unfortunately, have not the time to deal with such minor 
threats. So, a group powerful enough to completely destroy the creatures 
within the tower has never risen to the challenge. The Wyvern's Tower has 
been used of late for training and testing of new initiates of Good.
~

53 XYZZY~
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
|   /\ d        `.&b--Sea-of----&w.'    Unknown Lands      `.&b------------&w.|
| /\ /\ /\/\  /\ :&bTranquility&w.'      ? ? ? ? ? ? ? ? ? ?:&b-----------&w:v|
|/\a/\  /\ /\/\/\`.&b--------&w.'       ?        * *  * s  .'&w-----------&w`.|
|\        c  /\  f`.&b-----&w.'        ?  * * ** *  **    `.&b-----------&w..'|
|                 /\`&b...&w'/\/\     /\* * ** * * **  * *  *`.&b--------&w'..|
|                /\R/\/\/\M/\/\ /\   * ** * * t  *  * ** * `.&b---------&w|
|               /\/\q/\/\/\ /\/\  * *  * * *  "" " " " **  .'&b--------&w.|
|             /\* *  ** /\ /\    * * ** * * "" "  """*""* .'&b--------&w:u|
|        ** *  * *  *  ** /\  * r * * *  *  "" "" "......'&b----------&w'.|
|       *  * ** *  *  * **  ** *   **  * .........'&b--------Sea-of-----&w|
|[DH]      g * * **  i * ** *   ***   **:&b------------------Sorrows----&w|
|-----\**  **  **  ** * * ** *  [n] **  `.&b----------------------------&w|
~

52 ZONES~
Syntax: zones [low] [high]

Lists the name of the file, and room/mob/object vnum range for each
non-prototype zone in the mud.
~

-1 _DIEMSG_~
...Everything begins to fade to black.

You feel yourself leaving your body... rising up into the air, you feel
more free than you have ever felt before...

However, before your deity comes to collect your soul, you feel a strange
pulling sensation as strange and colorful mists swirl around you...
~

0 $~


#$

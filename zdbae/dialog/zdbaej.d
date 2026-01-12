BEGIN ZDBAEJ

/* real housewives of athkatla intro */
IF ~Global("ZDBaeBoots","GLOBAL",1)~ THEN ZDBAETOSSACOINTOYOURBAELOTH
SAY @0
++ @1 + ZDBAEBOOTS1
++ @2 + ZDBAEBOOTS1
++ @3 DO ~SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

IF ~~ ZDBAEBOOTS1
SAY @4
IF ~~ DO ~AddJournalEntry(@1000001, QUEST) SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

/* item-based talks */
/* luxurious lizardskin leapers are equipped */
IF ~Global("zdbaeleapers","GLOBAL",1)~
THEN zdbaeleapers
  SAY @5
  IF ~~ THEN DO ~SetGlobal("zdbaeleapers","GLOBAL",2)~ EXIT
END

/* sturdy boots are equipped */
IF ~Global("zdbaesturdy","GLOBAL",1)~
THEN zdbaesturdy
  SAY @6
  IF ~~ THEN DO ~SetGlobal("zdbaesturdy","GLOBAL",2)~ EXIT
END

/* simple boots are equipped - how DARE you! */
// commented out because this item doesn't exist
//  IF ~Global("zdbaesimple","GLOBAL",1)~
// THEN zdbaesimple
//  SAY @~Blast these brutish boots! They are bereft of beauty and bland in design. They barely beguile the eye! Why am I, the brilliant Baeloth, forced to travel with such foul footwear?~
//  IF ~~ THEN DO ~SetGlobal("zdbaesimple","GLOBAL",2)~ EXIT
// END

/* boots with da fur are equipped */
IF ~Global("zdbaefurries","GLOBAL",1)~
THEN zdbaefurries
  SAY @7
  IF ~~ THEN DO ~SetGlobal("zdbaefurries","GLOBAL",2)~ EXIT
END

/* Obligatory Celvan Limerick */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAECelvan","AR0300",0)~
THEN CELVAN ZDBAECELV
@8
DO ~SetGlobal("ZDBAECelvan","AR0300",1)~
== ZDBAEJ @9
== ZDBAEJ @10
END CELVAN 1


/* interjections */
// Government District
// Viconia intro
I_C_T VICG1 1 ZDBAEMOB1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @11
END

I_C_T VICG1 2 ZDBAEMOB2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @12
END

I_C_T VICG1 5 ZDBAEMOB4
== VICG1 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @13
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @14
== VICG2 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @15
== VICG1 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @16
END

I_C_T VICONI 11 ZDBAEMOB3
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @17
END

// Corneil, Cowled Wizard selling licences
I_C_T CORNEIL 6 ZDBAECORN1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @18
END

// Temple District (AR0900)
// Response: Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!
INTERJECT CSGAAL 0 ZDBAEGAAL0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @19
END CSGAAL 1
// Response: I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!
INTERJECT_COPY_TRANS CSGAAL 3 ZDBAEGAAL1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @20
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @21
END

// Market District
// Circus, Aerie introduction
// Thanks for being vague when telling us you sense something is off, Baeloth
I_C_T AERIE 30 ZDBAECIRC1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @22
END

// Docks District
// Buy Jaheria a gift (dshop02.d)
// ~<CHARNAME>! You do not need to...
INTERJECT_COPY_TRANS JAHEIRAJ 247 ZDBAEJAHINTER0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
@23
  == JAHABOAM IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @24
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @25
END

// Spellhold
// Yoshimo's Betrayal
I_C_T YOSHJ 113 ZDBAEYOSB
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @26
END

// Lonk is dealt with so we're gathering the team & charging Irenicus
I_C_T PLAYER1 15 ZDBAELONK
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ @27
END

// Slayer Change
I_C_T PLAYER1 3 ZDBAESLAY1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @28
END

// Underdark
// Upon entry, speaking with Carlig, only if Viconia isn't present because we're stealing her drow-language line & reusing it for our own purposes
I_C_T UDDUER01 0 ZDBAECARLIG
== ZDBAEJ IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @29
== UDDUER01 IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @30
== UDDUER02 IF ~NumInPartyGT(2) !InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @31
== UDDUER02 IF ~!NumInPartyGT(2) !InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @32
== UDDUER01 IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @33
END

// Svirfneblin City Leader
// Once again reusing lines otherwise pulled for Viconia
EXTEND_TOP UDSVIR03 0 // Extend Top bad, I know, not sure if there's a better way to make this work though
IF ~!InParty("VICONIA") InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~
EXTERN UDSVIR03 ZDBAEDUER1
END

CHAIN UDSVIR03 ZDBAEDUER1
@34
== ZDBAEJ @35
END
IF ~~ DO ~EraseJournalEntry(57761)~ EXTERN UDSVIR03 3

EXTEND_TOP UDSVIR03 16 // Extend Top bad, I know, not sure if there's a better way to make this work though
IF ~!InParty("VICONIA") InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~
EXTERN UDSVIR03 ZDBAEDUER2
END

CHAIN UDSVIR03 ZDBAEDUER2
@36
== ZDBAEJ @37
END
IF ~~ EXTERN UDSVIR03 18

I_C_T UDSVIR03 23 ZDBAEDEUR3
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @38
END

// Svirfneblin Innkeeper
I_C_T UDSVIR04 5 ZDBAEGNOMEINN
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @39
END

// Svirfneblin Slaughter
I_C_T UDSVIR08 1 ZDBAEDEEPGNOMES
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @40
END

// Elven City
// Tree of Life approach
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) Global("ZDBAETreeOfLife","GLOBAL",0)~
EXTERN PLAYER1 ZDBAETREE1
END

CHAIN PLAYER1 ZDBAETREE1
@41
DO ~SetGlobal("ZDBAETreeOfLife","GLOBAL",1)~
END
++ @42 EXTERN ZDBAEJ ZDBAETREE2
++ @43 EXTERN ZDBAEJ  ZDBAETREE2
++ @44 EXTERN ZDBAEJ ZDBAETREE2


CHAIN ZDBAEJ ZDBAETREE2
@45
== ZDBAEJ @46
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead
I_C_T PLAYER1 16 ZDBAEIREN1
  == ZDBAEJ IF ~InParty("ZDBAE") Range("ZDBAE",15) !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN @47
END

// Entering the Hells
I_C_T PLAYER1 25 ZDBAEHELL1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @48
END

// Battling Irenicus in the Hells
I_C_T HELLJON 7 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @49
END

I_C_T HELLJON 8 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @49
END

I_C_T HELLJON 9 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @49
END

I_C_T HELLJON 10 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @49
END

/* friendship arc */

// 1 - General check-in & check up (shortly after recruitment, pre-Spellhold)
CHAIN IF ~Global("ZDBaeFriendshipTalks","GLOBAL",2)~ THEN ZDBAEJ BAEFT1
  @50
  DO ~SetGlobal("ZDBaeFriendshipTalks","GLOBAL",3) RealSetGlobalTimer("ZDBaeFriendshipTalksTimer","GLOBAL",3600)~
  == ZDBAEJ @51
END
  + ~NumInPartyGT(2)~ + @52 EXTERN ZDBAEJ BAEFT1.1
  + ~!NumInPartyGT(2)~ + @53 EXTERN ZDBAEJ BAEFT1.1
  // Should be OR(2) & also check for SOD completion
  + ~Global("BPINBG","GLOBAL",1)~ + @54 EXTERN ZDBAEJ BAEFT1.2
  + ~!Global("BPINBG","GLOBAL",1)~ + @55 EXTERN ZDBAEJ BAEFT1.3
  ++ @56 EXTERN ZDBAEJ BAEFT1.4

CHAIN ZDBAEJ BAEFT1.1
@57
== ZDBAEJ @58 EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.2
@59 EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.3
@60 EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.4
@61
END

CHAIN ZDBAEJ BFAEFT1.5
@62
END
  + ~!NumInPartyGT(2)~ + @63 EXTERN ZDBAEJ BAEFT1.6
  + ~NumInPartyGT(2)~ + @64 EXTERN ZDBAEJ BAEFT1.6
  ++ @65 EXTERN ZDBAEJ BAEFT1.6
  ++ @66 EXTERN ZDBAEJ BAEFT1.6
  ++ @67 EXTERN ZDBAEJ BAEFT1.6

CHAIN ZDBAEJ BAEFT1.6
@68
END

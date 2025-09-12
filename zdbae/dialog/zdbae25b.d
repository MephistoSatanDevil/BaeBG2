BEGIN ZDBAE25B

// Sarevok 1 - Chaotic Evil
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
	Alignment("SAREVOK",CHAOTIC_EVIL)
    Global("ZDBAE25BSARV1","GLOBAL",0)~
THEN BSAREV25 ZDBAE25BSARV1
~Drow, beneath your theatrics, I sense the same thirst that drives me.~
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B ~Ooh! Such flattery! Did I just make the fearsome Sarevok swoon?~
== BSAREV25 ~You crave conquest through spectacle, I through slaughter. We are not so different.~
== ZDBAE25B ~While your boundless bloodlust in the arena would indeed be entertaining, your capricious craving for power would be far less. You'd betray me at the first opportunity.~
== BSAREV25 ~You are not as dim as you seem.~
EXIT

// Sarevok 1 - Chaotic Good
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
	Alignment("SAREVOK",CHAOTIC_GOOD)
    Global("ZDBAE25BSARV1","GLOBAL",0)~
THEN BSAREV25 ZDBAE25BSARV1
~I look at you, Baeloth, and I see the shadow of my former self.~
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B ~Ooh! Such flattery! Did I make the fearsome Sarevok swoon?~
== BSAREV25 ~No. I have walked your path before, I know ambition and pride lead only to ruin.~
== ZDBAE25B ~Ah! Ruination, redemption, rejoicing, and then terrible tragedy! All part of the great performance of life.~
== BSAREV25 ~Play your part as you will. I have extended my warning.~
EXIT

// Sarevok 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("Sarevok")
    See("Sarevok")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)	
    Global("ZDBAE25BSARV2","GLOBAL",0)~
THEN ZDBAE25B ZDBAE25BSARV2
~Tell me something. How did you plot and outplay the politics of Baldur's Gate, proclaim yourself Grand Duke, and provoke a war with Amn?~
DO ~SetGlobal("ZDBAE25BSARV2","GLOBAL",1)~
== BSAREV25 IF ~Alignment("SAREVOK",CHAOTIC_EVIL)~ THEN ~Seeking out my secrets, are you? My plan was simple: I had the gold and influence to exert my will, and the strength to see my ambitions through.~
== BSAREV25 IF ~Alignment("SAREVOK",CHAOTIC_GOOD)~ THEN ~My actions are best left to the history books. I've no desire to dig up my past for your amusement.~
== ZDBAE25B ~I ask because, once, I held immense power and prestige in the Underdark. A fall from favor, alas, is a fate I'm far too familiar with.~
== BSAREV25 ~Do not seek sympathy, Baeloth, I have none to give. Never seek pity, seek lessons.~
EXIT

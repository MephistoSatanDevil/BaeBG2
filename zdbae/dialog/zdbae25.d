BEGIN ZDBAE25

// Summon Dialogue
IF ~Global("ZDBAE25Summoned","GLOBAL",1)~ ZDBAE25_1
    SAY ~Ah! The swirling shadows and acrid airs of...well, wherever this is. <CHARNAME>, pray tell, have I stumbled into some plane of pandemonium?~
    ++ ~You're not too far off the mark. This is my pocket plane, Baeloth, and I need your assistance.~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_2
    ++ ~Fall into line, drow. I'll explain on the way.~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_3
    ++ ~Stay here. I'll call on your talents later.~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_3_1
END

IF ~~ ZDBAE25_2
    SAY ~I was mere moments from a cosmic covenant, a compact both cunning and cruel, and yet you whimsically wrenched me away. How dreadfully inconvenient!~
    IF ~~ THEN REPLY ~I didn't know. But if we travel together, I'll make up for your loss.~ GOTO ZDBAE25_4
    IF ~~ THEN REPLY ~I don't have time for your dramatics. Stay here and I'll return for you later.~ GOTO ZDBAE25_3_1
END

IF ~~ ZDBAE25_3
    SAY ~Very well, I shall grace your shabby squad with the splendor of my company.~
    IF ~~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ ZDBAE25_4
    SAY ~As you ought to. Very well, I shall grace your shabby squad with the splendor of my company.~
    IF ~~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ ZDBAE25_3_1
    SAY ~You dare to confine me to this lackluster lair? Oh, very well, but know I am vexed about this.~
    IF ~~ DO ~MoveToPointNoInterrupt([1517.1517]) Face(1)~ EXIT
END

// Join Dialogue
IF ~Global("ZDBAE25Summoned","GLOBAL",2)~ THEN BEGIN ZDBAE25_5
    SAY ~Have you finally come to your senses? My powers are woefully wasted in this dreary domain.~
    IF ~~ THEN REPLY ~I have need of your skills, Baeloth, join me.~ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
    IF ~~ THEN REPLY ~Wait a little longer.~ GOTO ZDBAE25_6
END

IF ~~ ZDBAE25_6
    SAY ~I shall endure this tedious trifle for now - though my patience is limited.~
    IF ~~ EXIT
END

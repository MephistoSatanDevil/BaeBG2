BEGIN ZDBAE25

// Summon Dialogue
IF ~Global("ZDBAE25Summoned","GLOBAL",1)~ ZDBAE25_1
    SAY @0
    ++ @1 DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_2
    ++ @2 DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_3
    ++ @3 DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_3_1
END

IF ~~ ZDBAE25_2
    SAY @4
    IF ~~ THEN REPLY @5 GOTO ZDBAE25_4
    IF ~~ THEN REPLY @6 GOTO ZDBAE25_3_1
END

IF ~~ ZDBAE25_3
    SAY @7
    IF ~~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ ZDBAE25_4
    SAY @8
    IF ~~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ ZDBAE25_3_1
    SAY @9
    IF ~~ DO ~MoveToPointNoInterrupt([1517.1517]) Face(1)~ EXIT
END

// Join Dialogue
IF ~Global("ZDBAE25Summoned","GLOBAL",2)~ THEN BEGIN ZDBAE25_5
    SAY @10
    IF ~~ THEN REPLY @11 DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
    IF ~~ THEN REPLY @12 GOTO ZDBAE25_6
END

IF ~~ ZDBAE25_6
    SAY @13
    IF ~~ EXIT
END

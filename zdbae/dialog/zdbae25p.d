BEGIN ZDBAE25P

// Kickout Dialogue
IF ~Global("ZDBAE25KickedOut","GLOBAL",0)~ THEN BEGIN ZDBAEJ1
  SAY @0
  IF ~~ THEN REPLY @1  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @2 DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",1)~ EXIT
END

// Rejoin Dialogue
IF ~Global("ZDBAE25KickedOut","GLOBAL",1)~ THEN BEGIN ZDBAE25_5
    SAY @3
    IF ~~ THEN REPLY @4 DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
    IF ~~ THEN REPLY @5 GOTO ZDBAE25_6
END

IF ~~ ZDBAE25_6
    SAY @6
    IF ~~ EXIT
END

BEGIN ZDBAE25P

// Kickout Dialogue
IF ~Global("ZDBAE25KickedOut","GLOBAL",0)~ THEN BEGIN ZDBAEJ1
  SAY ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [ZDBAE52] 
  IF ~~ THEN REPLY ~Very well, your whining worked. You may remain.~  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~Wait here. I may call upon you later.~ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",1)~ EXIT
END

// Rejoin Dialogue
IF ~Global("ZDBAE25KickedOut","GLOBAL",1)~ THEN BEGIN ZDBAE25_5
    SAY ~Have you finally come to your senses? My powers are woefully wasted in this dreary domain.~
    IF ~~ THEN REPLY ~I have need of your skills, Baeloth, join me.~ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
    IF ~~ THEN REPLY ~Wait a little longer.~ GOTO ZDBAE25_6
END

IF ~~ ZDBAE25_6
    SAY ~I shall endure this tedious trifle for now - though my patience is limited.~
    IF ~~ EXIT
END

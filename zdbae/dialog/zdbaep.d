BEGIN ZDBAEP

// Kickout Dialogue
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "0")~ THEN BEGIN ZDBAEJ1
  SAY ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [ZDBAE52] 
  IF ~~ THEN REPLY ~Very well, your whining worked. You may remain.~  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~Wait here. I may call upon you later.~ DO ~SetGlobal("ZDBAE_LEFT", "GLOBAL", "1")~ EXIT
END

// Rejoin
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "1")~ THEN BEGIN ZDBAEJ2
  SAY ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ [ZDBAE50] 
  IF ~~ THEN REPLY ~Hello to you too, Baeloth. I have need of your skills. Will you join me?~ GOTO ZDBAEJ3
  IF ~~ THEN REPLY ~Well, keep it up. You're doing a good job so far.~ EXIT
END

// Join
IF ~~ THEN BEGIN ZDBAEJ3
  SAY ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ [BAB028]
  IF ~~ THEN DO ~SetGlobal("ZDBAE_LEFT","GLOBAL",0) JoinParty()~ EXIT
END

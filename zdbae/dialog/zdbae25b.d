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
@0
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B @1
== BSAREV25 @2
== ZDBAE25B @3
== BSAREV25 @4
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
@5
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B @6
== BSAREV25 @7
== ZDBAE25B @8
== BSAREV25 @9
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
@10
DO ~SetGlobal("ZDBAE25BSARV2","GLOBAL",1)~
== BSAREV25 IF ~Alignment("SAREVOK",CHAOTIC_EVIL)~ THEN @11
== BSAREV25 IF ~Alignment("SAREVOK",CHAOTIC_GOOD)~ THEN @12
== ZDBAE25B @13
== BSAREV25 @14
EXIT

BEGIN ZDBAEB

// Aerie 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEAerie1","GLOBAL",0)~
THEN BAERIE ZDBAEAerie1
@0
DO ~SetGlobal("ZDBAEAerie1","GLOBAL",1)~
== ZDBAEB @1
== BAERIE @2
== BAERIE @3
== ZDBAEB @4
EXIT

// Anomen 1, Lawful Neutral, hasn't been knighted
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",LAWFUL_NEUTRAL)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
@5
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB @6
== BANOMEN @7
== ZDBAEB @8
== BANOMEN @9
== ZDBAEB @10
== ZDBAEB @11
== BANOMEN @12
== BKELDOR IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID) InParty("KELDORN")~ THEN @13
== BANOMEN IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID) InParty("KELDORN")~ THEN @14
== ZDBAEB @15
EXIT

// Anomen 1, Lawful Good, knighted
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",LAWFUL_GOOD)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
@5
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB @16
== BANOMEN @17
== ZDBAEB @18
EXIT

// Anomen 1, Chaotic Neutral, failed test
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",CHAOTIC_NEUTRAL)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
@5
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB @19
== BANOMEN @20
== ZDBAEB @21
== BANOMEN @22
== ZDBAEB @23
EXIT

// Cernd 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAECernd1","GLOBAL",0)~
THEN BCERND ZDBAECernd1
@24
DO ~SetGlobal("ZDBAECernd1","GLOBAL",1)~
== ZDBAEB @25
== ZDBAEB @26
== BCERND @27
== ZDBAEB @28
== ZDBAEB @29
EXIT

// Dorn 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("DORN")
    See("DORN")
    !StateCheck("DORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEDorn1","GLOBAL",0)~
THEN DORNJ ZDBAEDorn1
@30
DO ~SetGlobal("ZDBAEDorn1","GLOBAL",1)~
== ZDBAEB @31
== DORNJ @32
== ZDBAEB @33
== DORNJ @34
== ZDBAEB @35
== DORNJ @36
EXIT

// Edwin 1, setting up the beginning of their rivalry, Baeloth needs to *know* Edwin can't help him so he can tease the HECK out of him instead
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("EDWIN",MALE)
    InParty("EDWIN")
    See("EDWIN")
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin1","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin1
@37
DO ~SetGlobal("ZDBAEEdwin1","GLOBAL",1)~
== BEDWIN @38
== ZDBAEB @39
== BEDWIN @40
== ZDBAEB @41
== BEDWIN @42
== ZDBAEB @43
== BEDWIN @44
== ZDBAEB @45
== BEDWIN @46
EXIT

// Haer'dalis 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HAERDALIS")
    See("HAERDALIS")
    !StateCheck("HAERDALIS", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEHaerDalis1","GLOBAL",0)~
THEN ZDBAEB ZDBAEHaerDalis1
@47
DO ~SetGlobal("ZDBAEHaerDalis1","GLOBAL",1)~
== ZDBAEB @48
== BHAERDA @49
== ZDBAEB @50
EXIT

// Hexxat 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HEXXAT")
    See("HEXXAT")
    !StateCheck("HEXXAT", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEHexxat1","GLOBAL",0)~
THEN BHEXXAT ZDBAEHexxat1
@51
DO ~SetGlobal("ZDBAEHexxat1","GLOBAL",1)~
== ZDBAEB @52
== ZDBAEB @53
== BHEXXAT @54
== ZDBAEB @55
EXIT

/* Imoen 1, this is both deeply unsettling & also wholesome
Dave WHY?! */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("IMOEN2")
    See("IMOEN2")
    !StateCheck("IMOEN2", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEImoen21","GLOBAL",0)~
THEN ZDBAEB ZDBAEImoen21
@56
DO ~SetGlobal("ZDBAEImoen21","GLOBAL",1)~
== BIMOEN2 @57
== BIMOEN2 @58
== ZDBAEB @59
== BIMOEN2 @60
== ZDBAEB @61
== ZDBAEB @62
== BIMOEN2 @63
== ZDBAEB @64
== BIMOEN2 @65
== ZDBAEB @66
EXIT

// Jaheria 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAHEIRA")
    See("JAHEIRA")
    !StateCheck("JAHEIRA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEJaheira1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJaheira1
@67
DO ~SetGlobal("ZDBAEJaheira1","GLOBAL",1)~
== BJAHEIR @68
EXIT

// Jan 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEJan1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJan1
@69
DO ~SetGlobal("ZDBAEJan1","GLOBAL",1)~
== BJAN @70
== BJAN @71
== BJAN @72
== ZDBAEB @73
== BJAN @74
== ZDBAEB @75
== BJAN @73
== ZDBAEB @76
EXIT

// Keldorn 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKeldorn1","GLOBAL",0)~
THEN BKELDOR ZDBAEKeldorn1
@77
DO ~SetGlobal("ZDBAEKeldorn1","GLOBAL",1)~
== ZDBAEB @78
== BKELDOR @79
== ZDBAEB @80
== BKELDOR @81
== BKELDOR @82
== ZDBAEB @83
EXIT

// Korgan 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKorgan1","GLOBAL",0)~
THEN ZDBAE ZDBAEKorgan1
@84
DO ~SetGlobal("ZDBAEKorgan1","GLOBAL",1)~
== BKORGAN @85
== ZDBAEB @86
== BKORGAN @87
== ZDBAEB @88
EXIT

// Mazzy 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MAZZY")
    See("MAZZY")
    !StateCheck("MAZZY", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEMazzy1","GLOBAL",0)~
THEN ZDBAEB ZDBAEMazzy1
@89
DO ~SetGlobal("ZDBAEMazzy1","GLOBAL",1)~
== BMAZZY @90
== ZDBAEB @91
== BMAZZY @92
== ZDBAEB @93
EXIT

// Minsc 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MINSC")
    See("MINSC")
    !StateCheck("MINSC", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEMinsc1","GLOBAL",0)~
THEN BMINSC ZDBAEMinsc1
@94
DO ~SetGlobal("ZDBAEMinsc1","GLOBAL",1)~
== ZDBAEB @95
== BMINSC @96
== ZDBAEB @97
== BMINSC @98
== ZDBAEB @99
EXIT

// Nalia 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NALIA")
    See("NALIA")
    !StateCheck("NALIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAENalia1","GLOBAL",0)~
THEN ZDBAEB ZDBAENalia1
@100
DO ~SetGlobal("ZDBAENalia1","GLOBAL",1)~
== BNALIA @101
== ZDBAEB @102
== BNALIA @103
== BNALIA @104
== ZDBAEB @105
== BNALIA @106
EXIT

// Neera 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NEERA")
    See("NEERA")
    !StateCheck("NEERA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAENeera1","GLOBAL",0)~
THEN ZDBAEB ZDBAENeera1
@107
DO ~SetGlobal("ZDBAENeera1","GLOBAL",1)~
== BNEERA @108
== ZDBAEB @109
== BNEERA @110
== BNEERA @111
EXIT

// Rasaad 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("RASAAD")
    See("RASAAD")
    !StateCheck("RASAAD", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAERasaad1","GLOBAL",0)~
THEN BRASAAD ZDBAERasaad1
@112
DO ~SetGlobal("ZDBAERasaad1","GLOBAL",1)~
== ZDBAEB @113
== BRASAAD @114
== ZDBAEB @115
== BRASAAD @116
EXIT

// Valygar 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VALYGAR")
    See("VALYGAR")
    !StateCheck("VALYGAR", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEValygar1","GLOBAL",0)~
THEN BVALYGA ZDBAEValygar1
@117
DO ~SetGlobal("ZDBAEValygar1","GLOBAL",1)~
== ZDBAEB @118
== BVALYGA @119
== BVALYGA @120
EXIT

// Viconia 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEViconia1","GLOBAL",0)~
THEN BVICONI ZDBAEViconia1
@121
DO ~SetGlobal("ZDBAEViconia1","GLOBAL",1)~
== ZDBAEB @122
== BVICONI @123
== ZDBAEB @124
EXIT

// Wilson 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("WILSON")
    See("WILSON")
    !StateCheck("WILSON", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEWILSON1","GLOBAL",0)~
THEN ZDBAEB ZDBAEWILSON1
@125
DO ~SetGlobal("ZDBAEWILSON1","GLOBAL",1)~
== WILSON @126
== ZDBAEB @127
== WILSON @128
== ZDBAEB @129
EXIT

// Yoshimo 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("YOSHIMO")
    See("YOSHIMO")
    !StateCheck("YOSHIMO", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEYoshimo1","GLOBAL",0)~
THEN BYOSHIM ZDBAEYoshimo1
@130
DO ~SetGlobal("ZDBAEYoshimo1","GLOBAL",1)~
== ZDBAEB @131
== BYOSHIM @132
== ZDBAEB @133
== BYOSHIM @134
EXIT

// Aerie 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEAerie2","GLOBAL",0)~
THEN ZDBAEB ZDBAEAerie2
@135
DO ~SetGlobal("ZDBAEAerie2","GLOBAL",1)~
== BAERIE @136
== ZDBAEB @137
== ZDBAEB @138
== BAERIE @139
== ZDBAEB @140
== BAERIE @141
== ZDBAEB @142
EXIT

// Cernd 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAECernd1","GLOBAL", 1)
    Global("ZDBAECernd2","GLOBAL",0)~
THEN CERNDJ ZDBAECernd1
@143
DO ~SetGlobal("ZDBAECernd2","GLOBAL",1)~
== ZDBAEB @144
== CERNDJ @145
== CERNDJ @146
== ZDBAEB @147
EXIT

// Edwin 2 - The Age-Old Sorcerer vs Mage rivalry
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",MALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin1","GLOBAL",1)
    Global("ZDBAEEdwin2","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin2
@148
DO ~SetGlobal("ZDBAEEdwin2","GLOBAL",1)~
== BEDWIN @149
== ZDBAEB @150
== BEDWIN @151
== ZDBAEB @152
EXIT

// Jan 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAE25BJAN1","GLOBAL",0)~
THEN ZDBAE25B ZDBAE25BJAN1
@153
DO ~SetGlobal("ZDBAE25BJAN1","GLOBAL",1)~
== BJAN25 @154
== ZDBAE25B @155
== BJAN25 @156
== BJAN25 @157
== ZDBAE25B @158
EXIT

// Korgan 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKorgan2","GLOBAL",0)~
THEN BKORGAN ZDBAEKorgan2
@159
DO ~SetGlobal("ZDBAEKorgan2","GLOBAL",1)~
== ZDBAEB @160
== ZDBAEB @161
== BKORGAN @162
EXIT

/* Edwin 3 - Enter Edwina, Stage Right */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",FEMALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin3","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin3
@163
DO ~SetGlobal("ZDBAEEdwin3","GLOBAL",1)~
== BEDWIN @164
== ZDBAEB @165
== BEDWIN @166
== ZDBAEB @167
EXIT

/* Viconia 3, if she's in a romance */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEViconia3","GLOBAL",0)
    OR(2)
    Global("ViconiaRomanceActive","GLOBAL",1)
    Global("ViconiaRomanceActive","GLOBAL",2)~
THEN BVICONI ZDBAEViconia3
@168
DO ~SetGlobal("ZDBAEViconia3","GLOBAL",1)~
== ZDBAEB @169
== ZDBAEB @170
== BVICONI @171
== ZDBAEB @172
EXIT

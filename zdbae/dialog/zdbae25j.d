BEGIN ZDBAE25J

/* interjections */

/* saradush, volo */
EXTEND_TOP SARVOLO 9 #3
+ ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ + @0 + ZDBaeVoloBio
END

CHAIN SARVOLO ZDBaeVoloBio
@1
== ZDBAE25J @2
== SARVOLO @3
== ZDBAE25J @4
== ZDBAE25J @5
== SARVOLO @6
EXTERN SARVOLO 9

/* solar, tob finale */
I_C_T FINSOL01 27 ZDBaeSolar
== ZDBAE25J IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN @7
END

MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3
	dname \4, NAME_LENGTH
	db \5, \6, \7
	dw \8
	dname \9, NAME_LENGTH
	db \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH
	; DVs forced to $ff, $ff for all trades: player-obtained mons get max DVs
	; (see difficulty design doc, Section 5).
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MACHOP,     "MUSCLE", $ff, $ff, GOLD_BERRY,   37460, "MIKE",   TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY",  $ff, $ff, BITTER_BERRY, 48926, "KYLE",   TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "VOLTY",  $ff, $ff, PRZCUREBERRY, 29189, "TIM",    TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,  DODRIO,     "DORIS",  $ff, $ff, SMOKE_BALL,   00283, "EMY",    TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    XATU,       "PAUL",   $ff, $ff, MYSTERYBERRY, 15616, "CHRIS",  TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      CHANSEY,    AERODACTYL, "AEROY",  $ff, $ff, GOLD_BERRY,   26491, "KIM",    TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, DUGTRIO,    MAGNETON,   "MAGGIE", $ff, $ff, METAL_COAT,   50082, "FOREST", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES

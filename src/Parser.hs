{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import Declare
import Prelude hiding (GT, LT)
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,353) ([6112,16513,2052,0,0,4,0,32768,65022,17,0,0,0,0,0,0,0,0,0,0,16384,0,0,16,4478,17416,24448,516,57361,33047,1088,17912,4128,1,63482,327,0,8192,40960,65407,4,0,272,0,17408,256,0,57344,33047,1088,0,0,32256,2065,32836,1119,4354,6112,16513,63492,8261,272,4478,17416,24448,516,57361,33047,1088,17912,4128,32257,2065,32836,1119,4354,6112,16513,63492,8261,272,4478,17416,24448,516,57361,33047,1088,17912,4128,1,4,32768,1119,4354,40960,32639,12,57320,319,63488,17409,0,126,17,8064,1088,57344,4103,1,55288,71,65024,4593,32768,31775,4,2016,287,0,17409,0,64,17,4096,1088,0,4100,1,480,68,30720,4352,40960,65407,4,0,32,0,0,0,0,57344,33047,1088,0,0,0,0,16,0,1024,0,0,0,0,0,64000,18423,24448,516,57361,33047,1088,17912,4128,1,63482,103,65152,6653,40960,32639,4,2,0,0,0,0,0,57348,33047,1088,59392,40927,1,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","var","id","int","true","false","if","else","func","';'","'='","'+'","'-'","'*'","'/'","'%'","'**'","'=='","'!='","'!'","'&&'","'||'","'<'","'<='","'>'","'>='","'('","')'","'{'","'}'","'['","']'","','","%eof"]
        bit_start = st Prelude.* 38
        bit_end = (st Prelude.+ 1) Prelude.* 38
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..37]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (13) = happyShift action_9
action_0 (17) = happyShift action_10
action_0 (24) = happyShift action_11
action_0 (31) = happyShift action_12
action_0 (35) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_38
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (14) = happyShift action_21
action_3 (16) = happyShift action_22
action_3 (17) = happyShift action_23
action_3 (18) = happyShift action_24
action_3 (19) = happyShift action_25
action_3 (20) = happyShift action_26
action_3 (21) = happyShift action_27
action_3 (22) = happyShift action_28
action_3 (23) = happyShift action_29
action_3 (25) = happyShift action_30
action_3 (26) = happyShift action_31
action_3 (27) = happyShift action_32
action_3 (28) = happyShift action_33
action_3 (29) = happyShift action_34
action_3 (30) = happyShift action_35
action_3 (31) = happyShift action_36
action_3 (35) = happyShift action_37
action_3 (38) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_7

action_5 _ = happyReduce_8

action_6 _ = happyReduce_9

action_7 _ = happyReduce_10

action_8 (31) = happyShift action_20
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (31) = happyShift action_19
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (13) = happyShift action_9
action_10 (17) = happyShift action_10
action_10 (24) = happyShift action_11
action_10 (31) = happyShift action_12
action_10 (35) = happyShift action_13
action_10 (4) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (13) = happyShift action_9
action_11 (17) = happyShift action_10
action_11 (24) = happyShift action_11
action_11 (31) = happyShift action_12
action_11 (35) = happyShift action_13
action_11 (4) = happyGoto action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (9) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (11) = happyShift action_8
action_12 (13) = happyShift action_9
action_12 (17) = happyShift action_10
action_12 (24) = happyShift action_11
action_12 (31) = happyShift action_12
action_12 (35) = happyShift action_13
action_12 (4) = happyGoto action_16
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (9) = happyShift action_6
action_13 (10) = happyShift action_7
action_13 (11) = happyShift action_8
action_13 (13) = happyShift action_9
action_13 (17) = happyShift action_10
action_13 (24) = happyShift action_11
action_13 (31) = happyShift action_12
action_13 (35) = happyShift action_13
action_13 (4) = happyGoto action_14
action_13 (5) = happyGoto action_15
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_21
action_14 (16) = happyShift action_22
action_14 (17) = happyShift action_23
action_14 (18) = happyShift action_24
action_14 (19) = happyShift action_25
action_14 (20) = happyShift action_26
action_14 (21) = happyShift action_27
action_14 (22) = happyShift action_28
action_14 (23) = happyShift action_29
action_14 (25) = happyShift action_30
action_14 (26) = happyShift action_31
action_14 (27) = happyShift action_32
action_14 (28) = happyShift action_33
action_14 (29) = happyShift action_34
action_14 (30) = happyShift action_35
action_14 (31) = happyShift action_36
action_14 (35) = happyShift action_37
action_14 (37) = happyShift action_60
action_14 _ = happyReduce_30

action_15 (36) = happyShift action_59
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (14) = happyShift action_21
action_16 (16) = happyShift action_22
action_16 (17) = happyShift action_23
action_16 (18) = happyShift action_24
action_16 (19) = happyShift action_25
action_16 (20) = happyShift action_26
action_16 (21) = happyShift action_27
action_16 (22) = happyShift action_28
action_16 (23) = happyShift action_29
action_16 (25) = happyShift action_30
action_16 (26) = happyShift action_31
action_16 (27) = happyShift action_32
action_16 (28) = happyShift action_33
action_16 (29) = happyShift action_34
action_16 (30) = happyShift action_35
action_16 (31) = happyShift action_36
action_16 (32) = happyShift action_58
action_16 (35) = happyShift action_37
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (31) = happyShift action_36
action_17 (35) = happyShift action_37
action_17 _ = happyReduce_20

action_18 (31) = happyShift action_36
action_18 (35) = happyShift action_37
action_18 _ = happyReduce_17

action_19 (7) = happyShift action_57
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (11) = happyShift action_8
action_20 (13) = happyShift action_9
action_20 (17) = happyShift action_10
action_20 (24) = happyShift action_11
action_20 (31) = happyShift action_12
action_20 (35) = happyShift action_13
action_20 (4) = happyGoto action_56
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_28

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (13) = happyShift action_9
action_22 (17) = happyShift action_10
action_22 (24) = happyShift action_11
action_22 (31) = happyShift action_12
action_22 (35) = happyShift action_13
action_22 (4) = happyGoto action_55
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (11) = happyShift action_8
action_23 (13) = happyShift action_9
action_23 (17) = happyShift action_10
action_23 (24) = happyShift action_11
action_23 (31) = happyShift action_12
action_23 (35) = happyShift action_13
action_23 (4) = happyGoto action_54
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (11) = happyShift action_8
action_24 (13) = happyShift action_9
action_24 (17) = happyShift action_10
action_24 (24) = happyShift action_11
action_24 (31) = happyShift action_12
action_24 (35) = happyShift action_13
action_24 (4) = happyGoto action_53
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (11) = happyShift action_8
action_25 (13) = happyShift action_9
action_25 (17) = happyShift action_10
action_25 (24) = happyShift action_11
action_25 (31) = happyShift action_12
action_25 (35) = happyShift action_13
action_25 (4) = happyGoto action_52
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (11) = happyShift action_8
action_26 (13) = happyShift action_9
action_26 (17) = happyShift action_10
action_26 (24) = happyShift action_11
action_26 (31) = happyShift action_12
action_26 (35) = happyShift action_13
action_26 (4) = happyGoto action_51
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (10) = happyShift action_7
action_27 (11) = happyShift action_8
action_27 (13) = happyShift action_9
action_27 (17) = happyShift action_10
action_27 (24) = happyShift action_11
action_27 (31) = happyShift action_12
action_27 (35) = happyShift action_13
action_27 (4) = happyGoto action_50
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (9) = happyShift action_6
action_28 (10) = happyShift action_7
action_28 (11) = happyShift action_8
action_28 (13) = happyShift action_9
action_28 (17) = happyShift action_10
action_28 (24) = happyShift action_11
action_28 (31) = happyShift action_12
action_28 (35) = happyShift action_13
action_28 (4) = happyGoto action_49
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (9) = happyShift action_6
action_29 (10) = happyShift action_7
action_29 (11) = happyShift action_8
action_29 (13) = happyShift action_9
action_29 (17) = happyShift action_10
action_29 (24) = happyShift action_11
action_29 (31) = happyShift action_12
action_29 (35) = happyShift action_13
action_29 (4) = happyGoto action_48
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (10) = happyShift action_7
action_30 (11) = happyShift action_8
action_30 (13) = happyShift action_9
action_30 (17) = happyShift action_10
action_30 (24) = happyShift action_11
action_30 (31) = happyShift action_12
action_30 (35) = happyShift action_13
action_30 (4) = happyGoto action_47
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (10) = happyShift action_7
action_31 (11) = happyShift action_8
action_31 (13) = happyShift action_9
action_31 (17) = happyShift action_10
action_31 (24) = happyShift action_11
action_31 (31) = happyShift action_12
action_31 (35) = happyShift action_13
action_31 (4) = happyGoto action_46
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (9) = happyShift action_6
action_32 (10) = happyShift action_7
action_32 (11) = happyShift action_8
action_32 (13) = happyShift action_9
action_32 (17) = happyShift action_10
action_32 (24) = happyShift action_11
action_32 (31) = happyShift action_12
action_32 (35) = happyShift action_13
action_32 (4) = happyGoto action_45
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (10) = happyShift action_7
action_33 (11) = happyShift action_8
action_33 (13) = happyShift action_9
action_33 (17) = happyShift action_10
action_33 (24) = happyShift action_11
action_33 (31) = happyShift action_12
action_33 (35) = happyShift action_13
action_33 (4) = happyGoto action_44
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (9) = happyShift action_6
action_34 (10) = happyShift action_7
action_34 (11) = happyShift action_8
action_34 (13) = happyShift action_9
action_34 (17) = happyShift action_10
action_34 (24) = happyShift action_11
action_34 (31) = happyShift action_12
action_34 (35) = happyShift action_13
action_34 (4) = happyGoto action_43
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (9) = happyShift action_6
action_35 (10) = happyShift action_7
action_35 (11) = happyShift action_8
action_35 (13) = happyShift action_9
action_35 (17) = happyShift action_10
action_35 (24) = happyShift action_11
action_35 (31) = happyShift action_12
action_35 (35) = happyShift action_13
action_35 (4) = happyGoto action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (9) = happyShift action_6
action_36 (10) = happyShift action_7
action_36 (11) = happyShift action_8
action_36 (13) = happyShift action_9
action_36 (17) = happyShift action_10
action_36 (24) = happyShift action_11
action_36 (31) = happyShift action_12
action_36 (35) = happyShift action_13
action_36 (4) = happyGoto action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (9) = happyShift action_6
action_37 (10) = happyShift action_7
action_37 (11) = happyShift action_8
action_37 (13) = happyShift action_9
action_37 (17) = happyShift action_10
action_37 (24) = happyShift action_11
action_37 (31) = happyShift action_12
action_37 (35) = happyShift action_13
action_37 (4) = happyGoto action_40
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (15) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (9) = happyShift action_6
action_39 (10) = happyShift action_7
action_39 (11) = happyShift action_8
action_39 (13) = happyShift action_9
action_39 (17) = happyShift action_10
action_39 (24) = happyShift action_11
action_39 (31) = happyShift action_12
action_39 (35) = happyShift action_13
action_39 (4) = happyGoto action_66
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_21
action_40 (16) = happyShift action_22
action_40 (17) = happyShift action_23
action_40 (18) = happyShift action_24
action_40 (19) = happyShift action_25
action_40 (20) = happyShift action_26
action_40 (21) = happyShift action_27
action_40 (22) = happyShift action_28
action_40 (23) = happyShift action_29
action_40 (25) = happyShift action_30
action_40 (26) = happyShift action_31
action_40 (27) = happyShift action_32
action_40 (28) = happyShift action_33
action_40 (29) = happyShift action_34
action_40 (30) = happyShift action_35
action_40 (31) = happyShift action_36
action_40 (35) = happyShift action_37
action_40 (36) = happyShift action_65
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (14) = happyShift action_21
action_41 (16) = happyShift action_22
action_41 (17) = happyShift action_23
action_41 (18) = happyShift action_24
action_41 (19) = happyShift action_25
action_41 (20) = happyShift action_26
action_41 (21) = happyShift action_27
action_41 (22) = happyShift action_28
action_41 (23) = happyShift action_29
action_41 (25) = happyShift action_30
action_41 (26) = happyShift action_31
action_41 (27) = happyShift action_32
action_41 (28) = happyShift action_33
action_41 (29) = happyShift action_34
action_41 (30) = happyShift action_35
action_41 (31) = happyShift action_36
action_41 (32) = happyShift action_64
action_41 (35) = happyShift action_37
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (16) = happyShift action_22
action_42 (17) = happyShift action_23
action_42 (18) = happyShift action_24
action_42 (19) = happyShift action_25
action_42 (20) = happyShift action_26
action_42 (21) = happyShift action_27
action_42 (31) = happyShift action_36
action_42 (35) = happyShift action_37
action_42 _ = happyReduce_26

action_43 (16) = happyShift action_22
action_43 (17) = happyShift action_23
action_43 (18) = happyShift action_24
action_43 (19) = happyShift action_25
action_43 (20) = happyShift action_26
action_43 (21) = happyShift action_27
action_43 (31) = happyShift action_36
action_43 (35) = happyShift action_37
action_43 _ = happyReduce_25

action_44 (16) = happyShift action_22
action_44 (17) = happyShift action_23
action_44 (18) = happyShift action_24
action_44 (19) = happyShift action_25
action_44 (20) = happyShift action_26
action_44 (21) = happyShift action_27
action_44 (31) = happyShift action_36
action_44 (35) = happyShift action_37
action_44 _ = happyReduce_24

action_45 (16) = happyShift action_22
action_45 (17) = happyShift action_23
action_45 (18) = happyShift action_24
action_45 (19) = happyShift action_25
action_45 (20) = happyShift action_26
action_45 (21) = happyShift action_27
action_45 (31) = happyShift action_36
action_45 (35) = happyShift action_37
action_45 _ = happyReduce_23

action_46 (16) = happyShift action_22
action_46 (17) = happyShift action_23
action_46 (18) = happyShift action_24
action_46 (19) = happyShift action_25
action_46 (20) = happyShift action_26
action_46 (21) = happyShift action_27
action_46 (22) = happyShift action_28
action_46 (23) = happyShift action_29
action_46 (25) = happyShift action_30
action_46 (27) = happyShift action_32
action_46 (28) = happyShift action_33
action_46 (29) = happyShift action_34
action_46 (30) = happyShift action_35
action_46 (31) = happyShift action_36
action_46 (35) = happyShift action_37
action_46 _ = happyReduce_22

action_47 (16) = happyShift action_22
action_47 (17) = happyShift action_23
action_47 (18) = happyShift action_24
action_47 (19) = happyShift action_25
action_47 (20) = happyShift action_26
action_47 (21) = happyShift action_27
action_47 (22) = happyShift action_28
action_47 (23) = happyShift action_29
action_47 (27) = happyShift action_32
action_47 (28) = happyShift action_33
action_47 (29) = happyShift action_34
action_47 (30) = happyShift action_35
action_47 (31) = happyShift action_36
action_47 (35) = happyShift action_37
action_47 _ = happyReduce_21

action_48 (16) = happyShift action_22
action_48 (17) = happyShift action_23
action_48 (18) = happyShift action_24
action_48 (19) = happyShift action_25
action_48 (20) = happyShift action_26
action_48 (21) = happyShift action_27
action_48 (27) = happyShift action_32
action_48 (28) = happyShift action_33
action_48 (29) = happyShift action_34
action_48 (30) = happyShift action_35
action_48 (31) = happyShift action_36
action_48 (35) = happyShift action_37
action_48 _ = happyReduce_19

action_49 (16) = happyShift action_22
action_49 (17) = happyShift action_23
action_49 (18) = happyShift action_24
action_49 (19) = happyShift action_25
action_49 (20) = happyShift action_26
action_49 (21) = happyShift action_27
action_49 (27) = happyShift action_32
action_49 (28) = happyShift action_33
action_49 (29) = happyShift action_34
action_49 (30) = happyShift action_35
action_49 (31) = happyShift action_36
action_49 (35) = happyShift action_37
action_49 _ = happyReduce_18

action_50 (21) = happyShift action_27
action_50 (31) = happyShift action_36
action_50 (35) = happyShift action_37
action_50 _ = happyReduce_16

action_51 (21) = happyShift action_27
action_51 (31) = happyShift action_36
action_51 (35) = happyShift action_37
action_51 _ = happyReduce_15

action_52 (21) = happyShift action_27
action_52 (31) = happyShift action_36
action_52 (35) = happyShift action_37
action_52 _ = happyReduce_14

action_53 (21) = happyShift action_27
action_53 (31) = happyShift action_36
action_53 (35) = happyShift action_37
action_53 _ = happyReduce_13

action_54 (18) = happyShift action_24
action_54 (19) = happyShift action_25
action_54 (20) = happyShift action_26
action_54 (21) = happyShift action_27
action_54 (31) = happyShift action_36
action_54 (35) = happyShift action_37
action_54 _ = happyReduce_12

action_55 (18) = happyShift action_24
action_55 (19) = happyShift action_25
action_55 (20) = happyShift action_26
action_55 (21) = happyShift action_27
action_55 (31) = happyShift action_36
action_55 (35) = happyShift action_37
action_55 _ = happyReduce_11

action_56 (14) = happyShift action_21
action_56 (16) = happyShift action_22
action_56 (17) = happyShift action_23
action_56 (18) = happyShift action_24
action_56 (19) = happyShift action_25
action_56 (20) = happyShift action_26
action_56 (21) = happyShift action_27
action_56 (22) = happyShift action_28
action_56 (23) = happyShift action_29
action_56 (25) = happyShift action_30
action_56 (26) = happyShift action_31
action_56 (27) = happyShift action_32
action_56 (28) = happyShift action_33
action_56 (29) = happyShift action_34
action_56 (30) = happyShift action_35
action_56 (31) = happyShift action_36
action_56 (32) = happyShift action_63
action_56 (35) = happyShift action_37
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (32) = happyShift action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_27

action_59 _ = happyReduce_5

action_60 (6) = happyShift action_2
action_60 (7) = happyShift action_4
action_60 (8) = happyShift action_5
action_60 (9) = happyShift action_6
action_60 (10) = happyShift action_7
action_60 (11) = happyShift action_8
action_60 (13) = happyShift action_9
action_60 (17) = happyShift action_10
action_60 (24) = happyShift action_11
action_60 (31) = happyShift action_12
action_60 (35) = happyShift action_13
action_60 (4) = happyGoto action_14
action_60 (5) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_29

action_62 (33) = happyShift action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (33) = happyShift action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_4

action_65 _ = happyReduce_6

action_66 (14) = happyShift action_67
action_66 (16) = happyShift action_22
action_66 (17) = happyShift action_23
action_66 (18) = happyShift action_24
action_66 (19) = happyShift action_25
action_66 (20) = happyShift action_26
action_66 (21) = happyShift action_27
action_66 (22) = happyShift action_28
action_66 (23) = happyShift action_29
action_66 (25) = happyShift action_30
action_66 (26) = happyShift action_31
action_66 (27) = happyShift action_32
action_66 (28) = happyShift action_33
action_66 (29) = happyShift action_34
action_66 (30) = happyShift action_35
action_66 (31) = happyShift action_36
action_66 (35) = happyShift action_37
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (6) = happyShift action_2
action_67 (7) = happyShift action_4
action_67 (8) = happyShift action_5
action_67 (9) = happyShift action_6
action_67 (10) = happyShift action_7
action_67 (11) = happyShift action_8
action_67 (13) = happyShift action_9
action_67 (17) = happyShift action_10
action_67 (24) = happyShift action_11
action_67 (31) = happyShift action_12
action_67 (35) = happyShift action_13
action_67 (4) = happyGoto action_72
action_67 _ = happyReduce_28

action_68 (6) = happyShift action_2
action_68 (7) = happyShift action_4
action_68 (8) = happyShift action_5
action_68 (9) = happyShift action_6
action_68 (10) = happyShift action_7
action_68 (11) = happyShift action_8
action_68 (13) = happyShift action_9
action_68 (17) = happyShift action_10
action_68 (24) = happyShift action_11
action_68 (31) = happyShift action_12
action_68 (35) = happyShift action_13
action_68 (4) = happyGoto action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (6) = happyShift action_2
action_69 (7) = happyShift action_4
action_69 (8) = happyShift action_5
action_69 (9) = happyShift action_6
action_69 (10) = happyShift action_7
action_69 (11) = happyShift action_8
action_69 (13) = happyShift action_9
action_69 (17) = happyShift action_10
action_69 (24) = happyShift action_11
action_69 (31) = happyShift action_12
action_69 (35) = happyShift action_13
action_69 (4) = happyGoto action_70
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (14) = happyShift action_21
action_70 (16) = happyShift action_22
action_70 (17) = happyShift action_23
action_70 (18) = happyShift action_24
action_70 (19) = happyShift action_25
action_70 (20) = happyShift action_26
action_70 (21) = happyShift action_27
action_70 (22) = happyShift action_28
action_70 (23) = happyShift action_29
action_70 (25) = happyShift action_30
action_70 (26) = happyShift action_31
action_70 (27) = happyShift action_32
action_70 (28) = happyShift action_33
action_70 (29) = happyShift action_34
action_70 (30) = happyShift action_35
action_70 (31) = happyShift action_36
action_70 (34) = happyShift action_74
action_70 (35) = happyShift action_37
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (14) = happyShift action_21
action_71 (16) = happyShift action_22
action_71 (17) = happyShift action_23
action_71 (18) = happyShift action_24
action_71 (19) = happyShift action_25
action_71 (20) = happyShift action_26
action_71 (21) = happyShift action_27
action_71 (22) = happyShift action_28
action_71 (23) = happyShift action_29
action_71 (25) = happyShift action_30
action_71 (26) = happyShift action_31
action_71 (27) = happyShift action_32
action_71 (28) = happyShift action_33
action_71 (29) = happyShift action_34
action_71 (30) = happyShift action_35
action_71 (31) = happyShift action_36
action_71 (34) = happyShift action_73
action_71 (35) = happyShift action_37
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (14) = happyShift action_21
action_72 (16) = happyShift action_22
action_72 (17) = happyShift action_23
action_72 (18) = happyShift action_24
action_72 (19) = happyShift action_25
action_72 (20) = happyShift action_26
action_72 (21) = happyShift action_27
action_72 (22) = happyShift action_28
action_72 (23) = happyShift action_29
action_72 (25) = happyShift action_30
action_72 (26) = happyShift action_31
action_72 (27) = happyShift action_32
action_72 (28) = happyShift action_33
action_72 (29) = happyShift action_34
action_72 (30) = happyShift action_35
action_72 (31) = happyShift action_36
action_72 (35) = happyShift action_37
action_72 _ = happyReduce_1

action_73 (12) = happyShift action_75
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_3

action_75 (33) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (6) = happyShift action_2
action_76 (7) = happyShift action_4
action_76 (8) = happyShift action_5
action_76 (9) = happyShift action_6
action_76 (10) = happyShift action_7
action_76 (11) = happyShift action_8
action_76 (13) = happyShift action_9
action_76 (17) = happyShift action_10
action_76 (24) = happyShift action_11
action_76 (31) = happyShift action_12
action_76 (35) = happyShift action_13
action_76 (4) = happyGoto action_77
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (14) = happyShift action_21
action_77 (16) = happyShift action_22
action_77 (17) = happyShift action_23
action_77 (18) = happyShift action_24
action_77 (19) = happyShift action_25
action_77 (20) = happyShift action_26
action_77 (21) = happyShift action_27
action_77 (22) = happyShift action_28
action_77 (23) = happyShift action_29
action_77 (25) = happyShift action_30
action_77 (26) = happyShift action_31
action_77 (27) = happyShift action_32
action_77 (28) = happyShift action_33
action_77 (29) = happyShift action_34
action_77 (30) = happyShift action_35
action_77 (31) = happyShift action_36
action_77 (34) = happyShift action_78
action_77 (35) = happyShift action_37
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_2

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Decl happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 11 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 7 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenSym happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Func happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 4 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Arr happy_var_2
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Index happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn4
		 (Lit (VInt happy_var_1)
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn4
		 (Lit (VBool True)
	)

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn4
		 (Lit (VBool False)
	)

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mult happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mod happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Pow happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Neg happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Eq happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Ineq happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Not happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  4 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  5 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_30 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar -> cont 6;
	TokenSym happy_dollar_dollar -> cont 7;
	TokenInt happy_dollar_dollar -> cont 8;
	TokenTrue -> cont 9;
	TokenFalse -> cont 10;
	TokenIf -> cont 11;
	TokenElse -> cont 12;
	TokenFunc -> cont 13;
	TokenSemi -> cont 14;
	TokenAssign -> cont 15;
	TokenAdd -> cont 16;
	TokenSub -> cont 17;
	TokenMult -> cont 18;
	TokenDiv -> cont 19;
	TokenMod -> cont 20;
	TokenPow -> cont 21;
	TokenEq -> cont 22;
	TokenIneq -> cont 23;
	TokenNot -> cont 24;
	TokenAnd -> cont 25;
	TokenOr -> cont 26;
	TokenLT -> cont 27;
	TokenLE -> cont 28;
	TokenGT -> cont 29;
	TokenGE -> cont 30;
	TokenLBracket -> cont 31;
	TokenRBracket -> cont 32;
	TokenLCBracket -> cont 33;
	TokenRCBracket -> cont 34;
	TokenLSBracket -> cont 35;
	TokenRSBracket -> cont 36;
	TokenComma -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> Either String a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> Either String a
happyError' = (\(tokens, _) -> parseError tokens)
parser tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError _ = Left "Parse error"
parseExpr = parser . scanTokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

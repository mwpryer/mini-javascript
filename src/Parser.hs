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

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,333) ([12224,33026,8200,0,0,32,0,0,57320,287,0,0,0,0,0,0,0,0,0,0,0,128,0,16384,61440,16523,544,17912,4128,64513,4130,136,4478,17416,0,64509,163,0,8192,16384,65279,9,0,1088,0,8192,4098,0,0,8956,34832,0,0,0,2239,8708,24448,516,49169,559,2177,6112,16513,61444,16523,544,17912,4128,64513,4130,136,4478,17416,48896,1032,32802,1119,4354,12224,33026,57352,33047,1088,35824,8256,63490,8261,272,8956,34832,32256,2065,68,512,0,24448,516,17,65344,6398,0,32768,0,4032,544,57344,4103,1,1008,136,63488,17409,0,60412,35,65024,4593,0,63551,8,8064,1148,0,8200,2,1024,272,0,34818,0,256,68,61440,8704,0,120,17,65344,2558,0,32768,0,0,2048,0,0,0,0,0,4478,17416,0,0,0,1,0,0,0,2,0,256,0,0,0,0,0,62464,36847,32256,2065,68,2239,8708,24448,516,17,0,0,40960,32639,6,49104,831,59392,8159,1,1,0,0,0,0,0,32776,1119,4354,16384,65279,12,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","ParamList","var","id","int","true","false","if","else","func","';'","'='","'+'","'-'","'*'","'/'","'%'","'**'","'=='","'!='","'!'","'&&'","'||'","'<'","'<='","'>'","'>='","'('","')'","'{'","'}'","'['","']'","','","%eof"]
        bit_start = st Prelude.* 39
        bit_end = (st Prelude.+ 1) Prelude.* 39
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..38]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (11) = happyShift action_7
action_0 (12) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (25) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (36) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_38
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (15) = happyShift action_21
action_3 (17) = happyShift action_22
action_3 (18) = happyShift action_23
action_3 (19) = happyShift action_24
action_3 (20) = happyShift action_25
action_3 (21) = happyShift action_26
action_3 (22) = happyShift action_27
action_3 (23) = happyShift action_28
action_3 (24) = happyShift action_29
action_3 (26) = happyShift action_30
action_3 (27) = happyShift action_31
action_3 (28) = happyShift action_32
action_3 (29) = happyShift action_33
action_3 (30) = happyShift action_34
action_3 (31) = happyShift action_35
action_3 (32) = happyShift action_36
action_3 (36) = happyShift action_37
action_3 (39) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_7

action_5 _ = happyReduce_8

action_6 _ = happyReduce_9

action_7 _ = happyReduce_10

action_8 (32) = happyShift action_20
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (32) = happyShift action_19
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (11) = happyShift action_7
action_10 (12) = happyShift action_8
action_10 (14) = happyShift action_9
action_10 (18) = happyShift action_10
action_10 (25) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (36) = happyShift action_13
action_10 (4) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_2
action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (11) = happyShift action_7
action_11 (12) = happyShift action_8
action_11 (14) = happyShift action_9
action_11 (18) = happyShift action_10
action_11 (25) = happyShift action_11
action_11 (32) = happyShift action_12
action_11 (36) = happyShift action_13
action_11 (4) = happyGoto action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (10) = happyShift action_6
action_12 (11) = happyShift action_7
action_12 (12) = happyShift action_8
action_12 (14) = happyShift action_9
action_12 (18) = happyShift action_10
action_12 (25) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (36) = happyShift action_13
action_12 (4) = happyGoto action_16
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (10) = happyShift action_6
action_13 (11) = happyShift action_7
action_13 (12) = happyShift action_8
action_13 (14) = happyShift action_9
action_13 (18) = happyShift action_10
action_13 (25) = happyShift action_11
action_13 (32) = happyShift action_12
action_13 (36) = happyShift action_13
action_13 (4) = happyGoto action_14
action_13 (5) = happyGoto action_15
action_13 _ = happyReduce_31

action_14 (15) = happyShift action_21
action_14 (17) = happyShift action_22
action_14 (18) = happyShift action_23
action_14 (19) = happyShift action_24
action_14 (20) = happyShift action_25
action_14 (21) = happyShift action_26
action_14 (22) = happyShift action_27
action_14 (23) = happyShift action_28
action_14 (24) = happyShift action_29
action_14 (26) = happyShift action_30
action_14 (27) = happyShift action_31
action_14 (28) = happyShift action_32
action_14 (29) = happyShift action_33
action_14 (30) = happyShift action_34
action_14 (31) = happyShift action_35
action_14 (32) = happyShift action_36
action_14 (36) = happyShift action_37
action_14 (38) = happyShift action_61
action_14 _ = happyReduce_30

action_15 (37) = happyShift action_60
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (15) = happyShift action_21
action_16 (17) = happyShift action_22
action_16 (18) = happyShift action_23
action_16 (19) = happyShift action_24
action_16 (20) = happyShift action_25
action_16 (21) = happyShift action_26
action_16 (22) = happyShift action_27
action_16 (23) = happyShift action_28
action_16 (24) = happyShift action_29
action_16 (26) = happyShift action_30
action_16 (27) = happyShift action_31
action_16 (28) = happyShift action_32
action_16 (29) = happyShift action_33
action_16 (30) = happyShift action_34
action_16 (31) = happyShift action_35
action_16 (32) = happyShift action_36
action_16 (33) = happyShift action_59
action_16 (36) = happyShift action_37
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (32) = happyShift action_36
action_17 (36) = happyShift action_37
action_17 _ = happyReduce_20

action_18 (32) = happyShift action_36
action_18 (36) = happyShift action_37
action_18 _ = happyReduce_17

action_19 (8) = happyShift action_58
action_19 (6) = happyGoto action_57
action_19 _ = happyReduce_34

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_6
action_20 (11) = happyShift action_7
action_20 (12) = happyShift action_8
action_20 (14) = happyShift action_9
action_20 (18) = happyShift action_10
action_20 (25) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (36) = happyShift action_13
action_20 (4) = happyGoto action_56
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_28

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (10) = happyShift action_6
action_22 (11) = happyShift action_7
action_22 (12) = happyShift action_8
action_22 (14) = happyShift action_9
action_22 (18) = happyShift action_10
action_22 (25) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (36) = happyShift action_13
action_22 (4) = happyGoto action_55
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (10) = happyShift action_6
action_23 (11) = happyShift action_7
action_23 (12) = happyShift action_8
action_23 (14) = happyShift action_9
action_23 (18) = happyShift action_10
action_23 (25) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (36) = happyShift action_13
action_23 (4) = happyGoto action_54
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (11) = happyShift action_7
action_24 (12) = happyShift action_8
action_24 (14) = happyShift action_9
action_24 (18) = happyShift action_10
action_24 (25) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (36) = happyShift action_13
action_24 (4) = happyGoto action_53
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (11) = happyShift action_7
action_25 (12) = happyShift action_8
action_25 (14) = happyShift action_9
action_25 (18) = happyShift action_10
action_25 (25) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (36) = happyShift action_13
action_25 (4) = happyGoto action_52
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (11) = happyShift action_7
action_26 (12) = happyShift action_8
action_26 (14) = happyShift action_9
action_26 (18) = happyShift action_10
action_26 (25) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (36) = happyShift action_13
action_26 (4) = happyGoto action_51
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (11) = happyShift action_7
action_27 (12) = happyShift action_8
action_27 (14) = happyShift action_9
action_27 (18) = happyShift action_10
action_27 (25) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (36) = happyShift action_13
action_27 (4) = happyGoto action_50
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (10) = happyShift action_6
action_28 (11) = happyShift action_7
action_28 (12) = happyShift action_8
action_28 (14) = happyShift action_9
action_28 (18) = happyShift action_10
action_28 (25) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (36) = happyShift action_13
action_28 (4) = happyGoto action_49
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_2
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_6
action_29 (11) = happyShift action_7
action_29 (12) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (18) = happyShift action_10
action_29 (25) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (36) = happyShift action_13
action_29 (4) = happyGoto action_48
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (10) = happyShift action_6
action_30 (11) = happyShift action_7
action_30 (12) = happyShift action_8
action_30 (14) = happyShift action_9
action_30 (18) = happyShift action_10
action_30 (25) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (36) = happyShift action_13
action_30 (4) = happyGoto action_47
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_6
action_31 (11) = happyShift action_7
action_31 (12) = happyShift action_8
action_31 (14) = happyShift action_9
action_31 (18) = happyShift action_10
action_31 (25) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (36) = happyShift action_13
action_31 (4) = happyGoto action_46
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_2
action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_6
action_32 (11) = happyShift action_7
action_32 (12) = happyShift action_8
action_32 (14) = happyShift action_9
action_32 (18) = happyShift action_10
action_32 (25) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (36) = happyShift action_13
action_32 (4) = happyGoto action_45
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (10) = happyShift action_6
action_33 (11) = happyShift action_7
action_33 (12) = happyShift action_8
action_33 (14) = happyShift action_9
action_33 (18) = happyShift action_10
action_33 (25) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (36) = happyShift action_13
action_33 (4) = happyGoto action_44
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (10) = happyShift action_6
action_34 (11) = happyShift action_7
action_34 (12) = happyShift action_8
action_34 (14) = happyShift action_9
action_34 (18) = happyShift action_10
action_34 (25) = happyShift action_11
action_34 (32) = happyShift action_12
action_34 (36) = happyShift action_13
action_34 (4) = happyGoto action_43
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (10) = happyShift action_6
action_35 (11) = happyShift action_7
action_35 (12) = happyShift action_8
action_35 (14) = happyShift action_9
action_35 (18) = happyShift action_10
action_35 (25) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (36) = happyShift action_13
action_35 (4) = happyGoto action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (10) = happyShift action_6
action_36 (11) = happyShift action_7
action_36 (12) = happyShift action_8
action_36 (14) = happyShift action_9
action_36 (18) = happyShift action_10
action_36 (25) = happyShift action_11
action_36 (32) = happyShift action_12
action_36 (36) = happyShift action_13
action_36 (4) = happyGoto action_14
action_36 (5) = happyGoto action_41
action_36 _ = happyReduce_31

action_37 (7) = happyShift action_2
action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_6
action_37 (11) = happyShift action_7
action_37 (12) = happyShift action_8
action_37 (14) = happyShift action_9
action_37 (18) = happyShift action_10
action_37 (25) = happyShift action_11
action_37 (32) = happyShift action_12
action_37 (36) = happyShift action_13
action_37 (4) = happyGoto action_40
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (16) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_2
action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (10) = happyShift action_6
action_39 (11) = happyShift action_7
action_39 (12) = happyShift action_8
action_39 (14) = happyShift action_9
action_39 (18) = happyShift action_10
action_39 (25) = happyShift action_11
action_39 (32) = happyShift action_12
action_39 (36) = happyShift action_13
action_39 (4) = happyGoto action_68
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (15) = happyShift action_21
action_40 (17) = happyShift action_22
action_40 (18) = happyShift action_23
action_40 (19) = happyShift action_24
action_40 (20) = happyShift action_25
action_40 (21) = happyShift action_26
action_40 (22) = happyShift action_27
action_40 (23) = happyShift action_28
action_40 (24) = happyShift action_29
action_40 (26) = happyShift action_30
action_40 (27) = happyShift action_31
action_40 (28) = happyShift action_32
action_40 (29) = happyShift action_33
action_40 (30) = happyShift action_34
action_40 (31) = happyShift action_35
action_40 (32) = happyShift action_36
action_40 (36) = happyShift action_37
action_40 (37) = happyShift action_67
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (33) = happyShift action_66
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (17) = happyShift action_22
action_42 (18) = happyShift action_23
action_42 (19) = happyShift action_24
action_42 (20) = happyShift action_25
action_42 (21) = happyShift action_26
action_42 (22) = happyShift action_27
action_42 (32) = happyShift action_36
action_42 (36) = happyShift action_37
action_42 _ = happyReduce_26

action_43 (17) = happyShift action_22
action_43 (18) = happyShift action_23
action_43 (19) = happyShift action_24
action_43 (20) = happyShift action_25
action_43 (21) = happyShift action_26
action_43 (22) = happyShift action_27
action_43 (32) = happyShift action_36
action_43 (36) = happyShift action_37
action_43 _ = happyReduce_25

action_44 (17) = happyShift action_22
action_44 (18) = happyShift action_23
action_44 (19) = happyShift action_24
action_44 (20) = happyShift action_25
action_44 (21) = happyShift action_26
action_44 (22) = happyShift action_27
action_44 (32) = happyShift action_36
action_44 (36) = happyShift action_37
action_44 _ = happyReduce_24

action_45 (17) = happyShift action_22
action_45 (18) = happyShift action_23
action_45 (19) = happyShift action_24
action_45 (20) = happyShift action_25
action_45 (21) = happyShift action_26
action_45 (22) = happyShift action_27
action_45 (32) = happyShift action_36
action_45 (36) = happyShift action_37
action_45 _ = happyReduce_23

action_46 (17) = happyShift action_22
action_46 (18) = happyShift action_23
action_46 (19) = happyShift action_24
action_46 (20) = happyShift action_25
action_46 (21) = happyShift action_26
action_46 (22) = happyShift action_27
action_46 (23) = happyShift action_28
action_46 (24) = happyShift action_29
action_46 (26) = happyShift action_30
action_46 (28) = happyShift action_32
action_46 (29) = happyShift action_33
action_46 (30) = happyShift action_34
action_46 (31) = happyShift action_35
action_46 (32) = happyShift action_36
action_46 (36) = happyShift action_37
action_46 _ = happyReduce_22

action_47 (17) = happyShift action_22
action_47 (18) = happyShift action_23
action_47 (19) = happyShift action_24
action_47 (20) = happyShift action_25
action_47 (21) = happyShift action_26
action_47 (22) = happyShift action_27
action_47 (23) = happyShift action_28
action_47 (24) = happyShift action_29
action_47 (28) = happyShift action_32
action_47 (29) = happyShift action_33
action_47 (30) = happyShift action_34
action_47 (31) = happyShift action_35
action_47 (32) = happyShift action_36
action_47 (36) = happyShift action_37
action_47 _ = happyReduce_21

action_48 (17) = happyShift action_22
action_48 (18) = happyShift action_23
action_48 (19) = happyShift action_24
action_48 (20) = happyShift action_25
action_48 (21) = happyShift action_26
action_48 (22) = happyShift action_27
action_48 (28) = happyShift action_32
action_48 (29) = happyShift action_33
action_48 (30) = happyShift action_34
action_48 (31) = happyShift action_35
action_48 (32) = happyShift action_36
action_48 (36) = happyShift action_37
action_48 _ = happyReduce_19

action_49 (17) = happyShift action_22
action_49 (18) = happyShift action_23
action_49 (19) = happyShift action_24
action_49 (20) = happyShift action_25
action_49 (21) = happyShift action_26
action_49 (22) = happyShift action_27
action_49 (28) = happyShift action_32
action_49 (29) = happyShift action_33
action_49 (30) = happyShift action_34
action_49 (31) = happyShift action_35
action_49 (32) = happyShift action_36
action_49 (36) = happyShift action_37
action_49 _ = happyReduce_18

action_50 (22) = happyShift action_27
action_50 (32) = happyShift action_36
action_50 (36) = happyShift action_37
action_50 _ = happyReduce_16

action_51 (22) = happyShift action_27
action_51 (32) = happyShift action_36
action_51 (36) = happyShift action_37
action_51 _ = happyReduce_15

action_52 (22) = happyShift action_27
action_52 (32) = happyShift action_36
action_52 (36) = happyShift action_37
action_52 _ = happyReduce_14

action_53 (22) = happyShift action_27
action_53 (32) = happyShift action_36
action_53 (36) = happyShift action_37
action_53 _ = happyReduce_13

action_54 (19) = happyShift action_24
action_54 (20) = happyShift action_25
action_54 (21) = happyShift action_26
action_54 (22) = happyShift action_27
action_54 (32) = happyShift action_36
action_54 (36) = happyShift action_37
action_54 _ = happyReduce_12

action_55 (19) = happyShift action_24
action_55 (20) = happyShift action_25
action_55 (21) = happyShift action_26
action_55 (22) = happyShift action_27
action_55 (32) = happyShift action_36
action_55 (36) = happyShift action_37
action_55 _ = happyReduce_11

action_56 (15) = happyShift action_21
action_56 (17) = happyShift action_22
action_56 (18) = happyShift action_23
action_56 (19) = happyShift action_24
action_56 (20) = happyShift action_25
action_56 (21) = happyShift action_26
action_56 (22) = happyShift action_27
action_56 (23) = happyShift action_28
action_56 (24) = happyShift action_29
action_56 (26) = happyShift action_30
action_56 (27) = happyShift action_31
action_56 (28) = happyShift action_32
action_56 (29) = happyShift action_33
action_56 (30) = happyShift action_34
action_56 (31) = happyShift action_35
action_56 (32) = happyShift action_36
action_56 (33) = happyShift action_65
action_56 (36) = happyShift action_37
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (33) = happyShift action_64
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (38) = happyShift action_63
action_58 _ = happyReduce_33

action_59 _ = happyReduce_27

action_60 _ = happyReduce_5

action_61 (7) = happyShift action_2
action_61 (8) = happyShift action_4
action_61 (9) = happyShift action_5
action_61 (10) = happyShift action_6
action_61 (11) = happyShift action_7
action_61 (12) = happyShift action_8
action_61 (14) = happyShift action_9
action_61 (18) = happyShift action_10
action_61 (25) = happyShift action_11
action_61 (32) = happyShift action_12
action_61 (36) = happyShift action_13
action_61 (4) = happyGoto action_14
action_61 (5) = happyGoto action_62
action_61 _ = happyReduce_31

action_62 _ = happyReduce_29

action_63 (8) = happyShift action_58
action_63 (6) = happyGoto action_72
action_63 _ = happyReduce_34

action_64 (34) = happyShift action_71
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (34) = happyShift action_70
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_4

action_67 _ = happyReduce_6

action_68 (15) = happyShift action_69
action_68 (17) = happyShift action_22
action_68 (18) = happyShift action_23
action_68 (19) = happyShift action_24
action_68 (20) = happyShift action_25
action_68 (21) = happyShift action_26
action_68 (22) = happyShift action_27
action_68 (23) = happyShift action_28
action_68 (24) = happyShift action_29
action_68 (26) = happyShift action_30
action_68 (27) = happyShift action_31
action_68 (28) = happyShift action_32
action_68 (29) = happyShift action_33
action_68 (30) = happyShift action_34
action_68 (31) = happyShift action_35
action_68 (32) = happyShift action_36
action_68 (36) = happyShift action_37
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (7) = happyShift action_2
action_69 (8) = happyShift action_4
action_69 (9) = happyShift action_5
action_69 (10) = happyShift action_6
action_69 (11) = happyShift action_7
action_69 (12) = happyShift action_8
action_69 (14) = happyShift action_9
action_69 (18) = happyShift action_10
action_69 (25) = happyShift action_11
action_69 (32) = happyShift action_12
action_69 (36) = happyShift action_13
action_69 (4) = happyGoto action_75
action_69 _ = happyReduce_28

action_70 (7) = happyShift action_2
action_70 (8) = happyShift action_4
action_70 (9) = happyShift action_5
action_70 (10) = happyShift action_6
action_70 (11) = happyShift action_7
action_70 (12) = happyShift action_8
action_70 (14) = happyShift action_9
action_70 (18) = happyShift action_10
action_70 (25) = happyShift action_11
action_70 (32) = happyShift action_12
action_70 (36) = happyShift action_13
action_70 (4) = happyGoto action_74
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (7) = happyShift action_2
action_71 (8) = happyShift action_4
action_71 (9) = happyShift action_5
action_71 (10) = happyShift action_6
action_71 (11) = happyShift action_7
action_71 (12) = happyShift action_8
action_71 (14) = happyShift action_9
action_71 (18) = happyShift action_10
action_71 (25) = happyShift action_11
action_71 (32) = happyShift action_12
action_71 (36) = happyShift action_13
action_71 (4) = happyGoto action_73
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_32

action_73 (15) = happyShift action_21
action_73 (17) = happyShift action_22
action_73 (18) = happyShift action_23
action_73 (19) = happyShift action_24
action_73 (20) = happyShift action_25
action_73 (21) = happyShift action_26
action_73 (22) = happyShift action_27
action_73 (23) = happyShift action_28
action_73 (24) = happyShift action_29
action_73 (26) = happyShift action_30
action_73 (27) = happyShift action_31
action_73 (28) = happyShift action_32
action_73 (29) = happyShift action_33
action_73 (30) = happyShift action_34
action_73 (31) = happyShift action_35
action_73 (32) = happyShift action_36
action_73 (35) = happyShift action_77
action_73 (36) = happyShift action_37
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (15) = happyShift action_21
action_74 (17) = happyShift action_22
action_74 (18) = happyShift action_23
action_74 (19) = happyShift action_24
action_74 (20) = happyShift action_25
action_74 (21) = happyShift action_26
action_74 (22) = happyShift action_27
action_74 (23) = happyShift action_28
action_74 (24) = happyShift action_29
action_74 (26) = happyShift action_30
action_74 (27) = happyShift action_31
action_74 (28) = happyShift action_32
action_74 (29) = happyShift action_33
action_74 (30) = happyShift action_34
action_74 (31) = happyShift action_35
action_74 (32) = happyShift action_36
action_74 (35) = happyShift action_76
action_74 (36) = happyShift action_37
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (15) = happyShift action_21
action_75 (17) = happyShift action_22
action_75 (18) = happyShift action_23
action_75 (19) = happyShift action_24
action_75 (20) = happyShift action_25
action_75 (21) = happyShift action_26
action_75 (22) = happyShift action_27
action_75 (23) = happyShift action_28
action_75 (24) = happyShift action_29
action_75 (26) = happyShift action_30
action_75 (27) = happyShift action_31
action_75 (28) = happyShift action_32
action_75 (29) = happyShift action_33
action_75 (30) = happyShift action_34
action_75 (31) = happyShift action_35
action_75 (32) = happyShift action_36
action_75 (36) = happyShift action_37
action_75 _ = happyReduce_1

action_76 (13) = happyShift action_78
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_3

action_78 (34) = happyShift action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (7) = happyShift action_2
action_79 (8) = happyShift action_4
action_79 (9) = happyShift action_5
action_79 (10) = happyShift action_6
action_79 (11) = happyShift action_7
action_79 (12) = happyShift action_8
action_79 (14) = happyShift action_9
action_79 (18) = happyShift action_10
action_79 (25) = happyShift action_11
action_79 (32) = happyShift action_12
action_79 (36) = happyShift action_13
action_79 (4) = happyGoto action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (15) = happyShift action_21
action_80 (17) = happyShift action_22
action_80 (18) = happyShift action_23
action_80 (19) = happyShift action_24
action_80 (20) = happyShift action_25
action_80 (21) = happyShift action_26
action_80 (22) = happyShift action_27
action_80 (23) = happyShift action_28
action_80 (24) = happyShift action_29
action_80 (26) = happyShift action_30
action_80 (27) = happyShift action_31
action_80 (28) = happyShift action_32
action_80 (29) = happyShift action_33
action_80 (30) = happyShift action_34
action_80 (31) = happyShift action_35
action_80 (32) = happyShift action_36
action_80 (35) = happyShift action_81
action_80 (36) = happyShift action_37
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_2

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
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Func (PVars happy_var_3) happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 4 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Call happy_var_1 (Args happy_var_3)
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

happyReduce_31 = happySpecReduce_0  5 happyReduction_31
happyReduction_31  =  HappyAbsSyn5
		 ([]
	)

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn6
		 ((PVar happy_var_1) : happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  6 happyReduction_33
happyReduction_33 (HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn6
		 ([PVar happy_var_1]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_0  6 happyReduction_34
happyReduction_34  =  HappyAbsSyn6
		 ([]
	)

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar -> cont 7;
	TokenSym happy_dollar_dollar -> cont 8;
	TokenInt happy_dollar_dollar -> cont 9;
	TokenTrue -> cont 10;
	TokenFalse -> cont 11;
	TokenIf -> cont 12;
	TokenElse -> cont 13;
	TokenFunc -> cont 14;
	TokenSemi -> cont 15;
	TokenAssign -> cont 16;
	TokenAdd -> cont 17;
	TokenSub -> cont 18;
	TokenMult -> cont 19;
	TokenDiv -> cont 20;
	TokenMod -> cont 21;
	TokenPow -> cont 22;
	TokenEq -> cont 23;
	TokenIneq -> cont 24;
	TokenNot -> cont 25;
	TokenAnd -> cont 26;
	TokenOr -> cont 27;
	TokenLT -> cont 28;
	TokenLE -> cont 29;
	TokenGT -> cont 30;
	TokenGE -> cont 31;
	TokenLBracket -> cont 32;
	TokenRBracket -> cont 33;
	TokenLCBracket -> cont 34;
	TokenRCBracket -> cont 35;
	TokenLSBracket -> cont 36;
	TokenRSBracket -> cont 37;
	TokenComma -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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

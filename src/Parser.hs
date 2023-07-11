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

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,214) ([17392,4128,32,0,128,0,0,32511,0,0,0,0,0,0,0,0,0,0,57360,16519,49184,33039,32832,543,129,65024,765,0,0,0,0,8696,2064,17392,4128,34784,8256,4032,16513,8064,33026,16128,516,32257,1032,64514,2064,63492,4129,61448,8259,57360,16519,49184,33039,32832,543,129,1087,258,2174,516,1024,0,8696,2064,57344,7,49152,15,32768,31,0,63,0,62974,0,58364,1,49656,3,33776,7,1024,0,2048,0,4096,0,8192,0,30720,0,61440,0,63488,3063,0,0,0,16384,53248,8127,4032,16513,8064,33026,0,65022,8,64508,1,1,0,0,61472,8259,16,49088,287,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","var","id","int","true","false","if","else","';'","'='","'+'","'-'","'*'","'/'","'%'","'**'","'=='","'!='","'!'","'&&'","'||'","'<'","'<='","'>'","'>='","'('","')'","'{'","'}'","%eof"]
        bit_start = st Prelude.* 33
        bit_end = (st Prelude.+ 1) Prelude.* 33
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..32]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (15) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_30
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (14) = happyShift action_16
action_3 (15) = happyShift action_17
action_3 (16) = happyShift action_18
action_3 (17) = happyShift action_19
action_3 (18) = happyShift action_20
action_3 (19) = happyShift action_21
action_3 (20) = happyShift action_22
action_3 (21) = happyShift action_23
action_3 (23) = happyShift action_24
action_3 (24) = happyShift action_25
action_3 (25) = happyShift action_26
action_3 (26) = happyShift action_27
action_3 (27) = happyShift action_28
action_3 (28) = happyShift action_29
action_3 (33) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_4

action_6 _ = happyReduce_5

action_7 _ = happyReduce_6

action_8 (29) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_2
action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (10) = happyShift action_8
action_9 (15) = happyShift action_9
action_9 (22) = happyShift action_10
action_9 (29) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (10) = happyShift action_8
action_10 (15) = happyShift action_9
action_10 (22) = happyShift action_10
action_10 (29) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_2
action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_6
action_11 (9) = happyShift action_7
action_11 (10) = happyShift action_8
action_11 (15) = happyShift action_9
action_11 (22) = happyShift action_10
action_11 (29) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (14) = happyShift action_16
action_12 (15) = happyShift action_17
action_12 (16) = happyShift action_18
action_12 (17) = happyShift action_19
action_12 (18) = happyShift action_20
action_12 (19) = happyShift action_21
action_12 (20) = happyShift action_22
action_12 (21) = happyShift action_23
action_12 (23) = happyShift action_24
action_12 (24) = happyShift action_25
action_12 (25) = happyShift action_26
action_12 (26) = happyShift action_27
action_12 (27) = happyShift action_28
action_12 (28) = happyShift action_29
action_12 (30) = happyShift action_47
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_16

action_14 _ = happyReduce_13

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_7
action_15 (10) = happyShift action_8
action_15 (15) = happyShift action_9
action_15 (22) = happyShift action_10
action_15 (29) = happyShift action_11
action_15 (4) = happyGoto action_46
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_6
action_16 (9) = happyShift action_7
action_16 (10) = happyShift action_8
action_16 (15) = happyShift action_9
action_16 (22) = happyShift action_10
action_16 (29) = happyShift action_11
action_16 (4) = happyGoto action_45
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (9) = happyShift action_7
action_17 (10) = happyShift action_8
action_17 (15) = happyShift action_9
action_17 (22) = happyShift action_10
action_17 (29) = happyShift action_11
action_17 (4) = happyGoto action_44
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (10) = happyShift action_8
action_18 (15) = happyShift action_9
action_18 (22) = happyShift action_10
action_18 (29) = happyShift action_11
action_18 (4) = happyGoto action_43
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (15) = happyShift action_9
action_19 (22) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (4) = happyGoto action_42
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (9) = happyShift action_7
action_20 (10) = happyShift action_8
action_20 (15) = happyShift action_9
action_20 (22) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (4) = happyGoto action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (10) = happyShift action_8
action_21 (15) = happyShift action_9
action_21 (22) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (4) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (9) = happyShift action_7
action_22 (10) = happyShift action_8
action_22 (15) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (4) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_2
action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_7
action_23 (10) = happyShift action_8
action_23 (15) = happyShift action_9
action_23 (22) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (4) = happyGoto action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_2
action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (9) = happyShift action_7
action_24 (10) = happyShift action_8
action_24 (15) = happyShift action_9
action_24 (22) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (4) = happyGoto action_37
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_2
action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (9) = happyShift action_7
action_25 (10) = happyShift action_8
action_25 (15) = happyShift action_9
action_25 (22) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (4) = happyGoto action_36
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (5) = happyShift action_2
action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (9) = happyShift action_7
action_26 (10) = happyShift action_8
action_26 (15) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (4) = happyGoto action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (5) = happyShift action_2
action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (9) = happyShift action_7
action_27 (10) = happyShift action_8
action_27 (15) = happyShift action_9
action_27 (22) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (4) = happyGoto action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (5) = happyShift action_2
action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (9) = happyShift action_7
action_28 (10) = happyShift action_8
action_28 (15) = happyShift action_9
action_28 (22) = happyShift action_10
action_28 (29) = happyShift action_11
action_28 (4) = happyGoto action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_2
action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (9) = happyShift action_7
action_29 (10) = happyShift action_8
action_29 (15) = happyShift action_9
action_29 (22) = happyShift action_10
action_29 (29) = happyShift action_11
action_29 (4) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (5) = happyShift action_2
action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_6
action_31 (9) = happyShift action_7
action_31 (10) = happyShift action_8
action_31 (15) = happyShift action_9
action_31 (22) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (4) = happyGoto action_49
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_16
action_32 (15) = happyShift action_17
action_32 (16) = happyShift action_18
action_32 (17) = happyShift action_19
action_32 (18) = happyShift action_20
action_32 (19) = happyShift action_21
action_32 _ = happyReduce_22

action_33 (14) = happyShift action_16
action_33 (15) = happyShift action_17
action_33 (16) = happyShift action_18
action_33 (17) = happyShift action_19
action_33 (18) = happyShift action_20
action_33 (19) = happyShift action_21
action_33 _ = happyReduce_21

action_34 (14) = happyShift action_16
action_34 (15) = happyShift action_17
action_34 (16) = happyShift action_18
action_34 (17) = happyShift action_19
action_34 (18) = happyShift action_20
action_34 (19) = happyShift action_21
action_34 _ = happyReduce_20

action_35 (14) = happyShift action_16
action_35 (15) = happyShift action_17
action_35 (16) = happyShift action_18
action_35 (17) = happyShift action_19
action_35 (18) = happyShift action_20
action_35 (19) = happyShift action_21
action_35 _ = happyReduce_19

action_36 (14) = happyShift action_16
action_36 (15) = happyShift action_17
action_36 (16) = happyShift action_18
action_36 (17) = happyShift action_19
action_36 (18) = happyShift action_20
action_36 (19) = happyShift action_21
action_36 (20) = happyShift action_22
action_36 (21) = happyShift action_23
action_36 (23) = happyShift action_24
action_36 (25) = happyShift action_26
action_36 (26) = happyShift action_27
action_36 (27) = happyShift action_28
action_36 (28) = happyShift action_29
action_36 _ = happyReduce_18

action_37 (14) = happyShift action_16
action_37 (15) = happyShift action_17
action_37 (16) = happyShift action_18
action_37 (17) = happyShift action_19
action_37 (18) = happyShift action_20
action_37 (19) = happyShift action_21
action_37 (20) = happyShift action_22
action_37 (21) = happyShift action_23
action_37 (25) = happyShift action_26
action_37 (26) = happyShift action_27
action_37 (27) = happyShift action_28
action_37 (28) = happyShift action_29
action_37 _ = happyReduce_17

action_38 (14) = happyShift action_16
action_38 (15) = happyShift action_17
action_38 (16) = happyShift action_18
action_38 (17) = happyShift action_19
action_38 (18) = happyShift action_20
action_38 (19) = happyShift action_21
action_38 (25) = happyShift action_26
action_38 (26) = happyShift action_27
action_38 (27) = happyShift action_28
action_38 (28) = happyShift action_29
action_38 _ = happyReduce_15

action_39 (14) = happyShift action_16
action_39 (15) = happyShift action_17
action_39 (16) = happyShift action_18
action_39 (17) = happyShift action_19
action_39 (18) = happyShift action_20
action_39 (19) = happyShift action_21
action_39 (25) = happyShift action_26
action_39 (26) = happyShift action_27
action_39 (27) = happyShift action_28
action_39 (28) = happyShift action_29
action_39 _ = happyReduce_14

action_40 (19) = happyShift action_21
action_40 _ = happyReduce_12

action_41 (19) = happyShift action_21
action_41 _ = happyReduce_11

action_42 (19) = happyShift action_21
action_42 _ = happyReduce_10

action_43 (19) = happyShift action_21
action_43 _ = happyReduce_9

action_44 (16) = happyShift action_18
action_44 (17) = happyShift action_19
action_44 (18) = happyShift action_20
action_44 (19) = happyShift action_21
action_44 _ = happyReduce_8

action_45 (16) = happyShift action_18
action_45 (17) = happyShift action_19
action_45 (18) = happyShift action_20
action_45 (19) = happyShift action_21
action_45 _ = happyReduce_7

action_46 (14) = happyShift action_16
action_46 (15) = happyShift action_17
action_46 (16) = happyShift action_18
action_46 (17) = happyShift action_19
action_46 (18) = happyShift action_20
action_46 (19) = happyShift action_21
action_46 (20) = happyShift action_22
action_46 (21) = happyShift action_23
action_46 (23) = happyShift action_24
action_46 (24) = happyShift action_25
action_46 (25) = happyShift action_26
action_46 (26) = happyShift action_27
action_46 (27) = happyShift action_28
action_46 (28) = happyShift action_29
action_46 (30) = happyShift action_48
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_23

action_48 (31) = happyShift action_51
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (12) = happyShift action_50
action_49 (14) = happyShift action_16
action_49 (15) = happyShift action_17
action_49 (16) = happyShift action_18
action_49 (17) = happyShift action_19
action_49 (18) = happyShift action_20
action_49 (19) = happyShift action_21
action_49 (20) = happyShift action_22
action_49 (21) = happyShift action_23
action_49 (23) = happyShift action_24
action_49 (24) = happyShift action_25
action_49 (25) = happyShift action_26
action_49 (26) = happyShift action_27
action_49 (27) = happyShift action_28
action_49 (28) = happyShift action_29
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (5) = happyShift action_2
action_50 (6) = happyShift action_4
action_50 (7) = happyShift action_5
action_50 (8) = happyShift action_6
action_50 (9) = happyShift action_7
action_50 (10) = happyShift action_8
action_50 (15) = happyShift action_9
action_50 (22) = happyShift action_10
action_50 (29) = happyShift action_11
action_50 (4) = happyGoto action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (5) = happyShift action_2
action_51 (6) = happyShift action_4
action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_6
action_51 (9) = happyShift action_7
action_51 (10) = happyShift action_8
action_51 (15) = happyShift action_9
action_51 (22) = happyShift action_10
action_51 (29) = happyShift action_11
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_16
action_52 (15) = happyShift action_17
action_52 (16) = happyShift action_18
action_52 (17) = happyShift action_19
action_52 (18) = happyShift action_20
action_52 (19) = happyShift action_21
action_52 (20) = happyShift action_22
action_52 (21) = happyShift action_23
action_52 (23) = happyShift action_24
action_52 (24) = happyShift action_25
action_52 (25) = happyShift action_26
action_52 (26) = happyShift action_27
action_52 (27) = happyShift action_28
action_52 (28) = happyShift action_29
action_52 (32) = happyShift action_54
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_16
action_53 (15) = happyShift action_17
action_53 (16) = happyShift action_18
action_53 (17) = happyShift action_19
action_53 (18) = happyShift action_20
action_53 (19) = happyShift action_21
action_53 (20) = happyShift action_22
action_53 (21) = happyShift action_23
action_53 (23) = happyShift action_24
action_53 (24) = happyShift action_25
action_53 (25) = happyShift action_26
action_53 (26) = happyShift action_27
action_53 (27) = happyShift action_28
action_53 (28) = happyShift action_29
action_53 _ = happyReduce_1

action_54 (11) = happyShift action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (31) = happyShift action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (5) = happyShift action_2
action_56 (6) = happyShift action_4
action_56 (7) = happyShift action_5
action_56 (8) = happyShift action_6
action_56 (9) = happyShift action_7
action_56 (10) = happyShift action_8
action_56 (15) = happyShift action_9
action_56 (22) = happyShift action_10
action_56 (29) = happyShift action_11
action_56 (4) = happyGoto action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (14) = happyShift action_16
action_57 (15) = happyShift action_17
action_57 (16) = happyShift action_18
action_57 (17) = happyShift action_19
action_57 (18) = happyShift action_20
action_57 (19) = happyShift action_21
action_57 (20) = happyShift action_22
action_57 (21) = happyShift action_23
action_57 (23) = happyShift action_24
action_57 (24) = happyShift action_25
action_57 (25) = happyShift action_26
action_57 (26) = happyShift action_27
action_57 (27) = happyShift action_28
action_57 (28) = happyShift action_29
action_57 (32) = happyShift action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_2

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

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn4
		 (Lit (VInt happy_var_1)
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn4
		 (Lit (VBool True)
	)

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn4
		 (Lit (VBool False)
	)

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mult happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mod happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Pow happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Neg happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Eq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Ineq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Not happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar -> cont 5;
	TokenSym happy_dollar_dollar -> cont 6;
	TokenInt happy_dollar_dollar -> cont 7;
	TokenTrue -> cont 8;
	TokenFalse -> cont 9;
	TokenIf -> cont 10;
	TokenElse -> cont 11;
	TokenSemi -> cont 12;
	TokenAssign -> cont 13;
	TokenAdd -> cont 14;
	TokenSub -> cont 15;
	TokenMult -> cont 16;
	TokenDiv -> cont 17;
	TokenMod -> cont 18;
	TokenPow -> cont 19;
	TokenEq -> cont 20;
	TokenIneq -> cont 21;
	TokenNot -> cont 22;
	TokenAnd -> cont 23;
	TokenOr -> cont 24;
	TokenLT -> cont 25;
	TokenLE -> cont 26;
	TokenGT -> cont 27;
	TokenGE -> cont 28;
	TokenLBracket -> cont 29;
	TokenRBracket -> cont 30;
	TokenLCBracket -> cont 31;
	TokenRCBracket -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError _ = error "Parse error"
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

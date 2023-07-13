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
happyExpList = Happy_Data_Array.listArray (0,275) ([35824,8256,64,0,512,0,0,61424,15,0,0,0,0,0,0,0,0,0,8192,0,32768,48896,1032,64514,4130,61448,16523,32,65280,510,0,512,0,2048,32,0,12224,33026,48896,1032,64514,4130,61448,16523,49184,559,129,2239,516,8956,2064,35824,8256,12224,33026,48896,1032,64514,4130,61448,16523,49184,559,129,2239,516,8956,2064,35824,8256,32768,0,48896,1032,2,61424,31,4032,32,16128,128,64512,512,61440,2051,49152,16063,0,63743,0,57596,3,33776,15,2048,32,8192,128,32768,512,0,2050,0,8207,0,32828,0,64508,7,0,16,0,0,0,512,0,2048,0,0,53248,16319,12224,33026,48896,1032,64514,4130,8,49088,319,65280,1278,64512,1019,256,0,0,0,0,0,48898,1032,2,61424,79,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","var","id","int","true","false","if","else","func","';'","'='","'+'","'-'","'*'","'/'","'%'","'**'","'=='","'!='","'!'","'&&'","'||'","'<'","'<='","'>'","'>='","'('","')'","'{'","'}'","%eof"]
        bit_start = st Prelude.* 34
        bit_end = (st Prelude.+ 1) Prelude.* 34
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..33]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (16) = happyShift action_10
action_0 (23) = happyShift action_11
action_0 (30) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_33
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (15) = happyShift action_18
action_3 (16) = happyShift action_19
action_3 (17) = happyShift action_20
action_3 (18) = happyShift action_21
action_3 (19) = happyShift action_22
action_3 (20) = happyShift action_23
action_3 (21) = happyShift action_24
action_3 (22) = happyShift action_25
action_3 (24) = happyShift action_26
action_3 (25) = happyShift action_27
action_3 (26) = happyShift action_28
action_3 (27) = happyShift action_29
action_3 (28) = happyShift action_30
action_3 (29) = happyShift action_31
action_3 (30) = happyShift action_32
action_3 (34) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 (30) = happyShift action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (30) = happyShift action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (10) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (16) = happyShift action_10
action_10 (23) = happyShift action_11
action_10 (30) = happyShift action_12
action_10 (4) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_2
action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_6
action_11 (9) = happyShift action_7
action_11 (10) = happyShift action_8
action_11 (12) = happyShift action_9
action_11 (16) = happyShift action_10
action_11 (23) = happyShift action_11
action_11 (30) = happyShift action_12
action_11 (4) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_2
action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_6
action_12 (9) = happyShift action_7
action_12 (10) = happyShift action_8
action_12 (12) = happyShift action_9
action_12 (16) = happyShift action_10
action_12 (23) = happyShift action_11
action_12 (30) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_18
action_13 (16) = happyShift action_19
action_13 (17) = happyShift action_20
action_13 (18) = happyShift action_21
action_13 (19) = happyShift action_22
action_13 (20) = happyShift action_23
action_13 (21) = happyShift action_24
action_13 (22) = happyShift action_25
action_13 (24) = happyShift action_26
action_13 (25) = happyShift action_27
action_13 (26) = happyShift action_28
action_13 (27) = happyShift action_29
action_13 (28) = happyShift action_30
action_13 (29) = happyShift action_31
action_13 (30) = happyShift action_32
action_13 (31) = happyShift action_52
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_32
action_14 _ = happyReduce_18

action_15 (30) = happyShift action_32
action_15 _ = happyReduce_15

action_16 (6) = happyShift action_51
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (9) = happyShift action_7
action_17 (10) = happyShift action_8
action_17 (12) = happyShift action_9
action_17 (16) = happyShift action_10
action_17 (23) = happyShift action_11
action_17 (30) = happyShift action_12
action_17 (4) = happyGoto action_50
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (10) = happyShift action_8
action_18 (12) = happyShift action_9
action_18 (16) = happyShift action_10
action_18 (23) = happyShift action_11
action_18 (30) = happyShift action_12
action_18 (4) = happyGoto action_49
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (12) = happyShift action_9
action_19 (16) = happyShift action_10
action_19 (23) = happyShift action_11
action_19 (30) = happyShift action_12
action_19 (4) = happyGoto action_48
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (9) = happyShift action_7
action_20 (10) = happyShift action_8
action_20 (12) = happyShift action_9
action_20 (16) = happyShift action_10
action_20 (23) = happyShift action_11
action_20 (30) = happyShift action_12
action_20 (4) = happyGoto action_47
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (10) = happyShift action_8
action_21 (12) = happyShift action_9
action_21 (16) = happyShift action_10
action_21 (23) = happyShift action_11
action_21 (30) = happyShift action_12
action_21 (4) = happyGoto action_46
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (9) = happyShift action_7
action_22 (10) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (16) = happyShift action_10
action_22 (23) = happyShift action_11
action_22 (30) = happyShift action_12
action_22 (4) = happyGoto action_45
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_2
action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_7
action_23 (10) = happyShift action_8
action_23 (12) = happyShift action_9
action_23 (16) = happyShift action_10
action_23 (23) = happyShift action_11
action_23 (30) = happyShift action_12
action_23 (4) = happyGoto action_44
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_2
action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (9) = happyShift action_7
action_24 (10) = happyShift action_8
action_24 (12) = happyShift action_9
action_24 (16) = happyShift action_10
action_24 (23) = happyShift action_11
action_24 (30) = happyShift action_12
action_24 (4) = happyGoto action_43
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_2
action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (9) = happyShift action_7
action_25 (10) = happyShift action_8
action_25 (12) = happyShift action_9
action_25 (16) = happyShift action_10
action_25 (23) = happyShift action_11
action_25 (30) = happyShift action_12
action_25 (4) = happyGoto action_42
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (5) = happyShift action_2
action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (9) = happyShift action_7
action_26 (10) = happyShift action_8
action_26 (12) = happyShift action_9
action_26 (16) = happyShift action_10
action_26 (23) = happyShift action_11
action_26 (30) = happyShift action_12
action_26 (4) = happyGoto action_41
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (5) = happyShift action_2
action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (9) = happyShift action_7
action_27 (10) = happyShift action_8
action_27 (12) = happyShift action_9
action_27 (16) = happyShift action_10
action_27 (23) = happyShift action_11
action_27 (30) = happyShift action_12
action_27 (4) = happyGoto action_40
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (5) = happyShift action_2
action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (9) = happyShift action_7
action_28 (10) = happyShift action_8
action_28 (12) = happyShift action_9
action_28 (16) = happyShift action_10
action_28 (23) = happyShift action_11
action_28 (30) = happyShift action_12
action_28 (4) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_2
action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (9) = happyShift action_7
action_29 (10) = happyShift action_8
action_29 (12) = happyShift action_9
action_29 (16) = happyShift action_10
action_29 (23) = happyShift action_11
action_29 (30) = happyShift action_12
action_29 (4) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (5) = happyShift action_2
action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_6
action_30 (9) = happyShift action_7
action_30 (10) = happyShift action_8
action_30 (12) = happyShift action_9
action_30 (16) = happyShift action_10
action_30 (23) = happyShift action_11
action_30 (30) = happyShift action_12
action_30 (4) = happyGoto action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (5) = happyShift action_2
action_31 (6) = happyShift action_4
action_31 (7) = happyShift action_5
action_31 (8) = happyShift action_6
action_31 (9) = happyShift action_7
action_31 (10) = happyShift action_8
action_31 (12) = happyShift action_9
action_31 (16) = happyShift action_10
action_31 (23) = happyShift action_11
action_31 (30) = happyShift action_12
action_31 (4) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (5) = happyShift action_2
action_32 (6) = happyShift action_4
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_6
action_32 (9) = happyShift action_7
action_32 (10) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (16) = happyShift action_10
action_32 (23) = happyShift action_11
action_32 (30) = happyShift action_12
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (5) = happyShift action_2
action_34 (6) = happyShift action_4
action_34 (7) = happyShift action_5
action_34 (8) = happyShift action_6
action_34 (9) = happyShift action_7
action_34 (10) = happyShift action_8
action_34 (12) = happyShift action_9
action_34 (16) = happyShift action_10
action_34 (23) = happyShift action_11
action_34 (30) = happyShift action_12
action_34 (4) = happyGoto action_56
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_18
action_35 (16) = happyShift action_19
action_35 (17) = happyShift action_20
action_35 (18) = happyShift action_21
action_35 (19) = happyShift action_22
action_35 (20) = happyShift action_23
action_35 (21) = happyShift action_24
action_35 (22) = happyShift action_25
action_35 (24) = happyShift action_26
action_35 (25) = happyShift action_27
action_35 (26) = happyShift action_28
action_35 (27) = happyShift action_29
action_35 (28) = happyShift action_30
action_35 (29) = happyShift action_31
action_35 (30) = happyShift action_32
action_35 (31) = happyShift action_55
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (15) = happyShift action_18
action_36 (16) = happyShift action_19
action_36 (17) = happyShift action_20
action_36 (18) = happyShift action_21
action_36 (19) = happyShift action_22
action_36 (20) = happyShift action_23
action_36 (30) = happyShift action_32
action_36 _ = happyReduce_24

action_37 (15) = happyShift action_18
action_37 (16) = happyShift action_19
action_37 (17) = happyShift action_20
action_37 (18) = happyShift action_21
action_37 (19) = happyShift action_22
action_37 (20) = happyShift action_23
action_37 (30) = happyShift action_32
action_37 _ = happyReduce_23

action_38 (15) = happyShift action_18
action_38 (16) = happyShift action_19
action_38 (17) = happyShift action_20
action_38 (18) = happyShift action_21
action_38 (19) = happyShift action_22
action_38 (20) = happyShift action_23
action_38 (30) = happyShift action_32
action_38 _ = happyReduce_22

action_39 (15) = happyShift action_18
action_39 (16) = happyShift action_19
action_39 (17) = happyShift action_20
action_39 (18) = happyShift action_21
action_39 (19) = happyShift action_22
action_39 (20) = happyShift action_23
action_39 (30) = happyShift action_32
action_39 _ = happyReduce_21

action_40 (15) = happyShift action_18
action_40 (16) = happyShift action_19
action_40 (17) = happyShift action_20
action_40 (18) = happyShift action_21
action_40 (19) = happyShift action_22
action_40 (20) = happyShift action_23
action_40 (21) = happyShift action_24
action_40 (22) = happyShift action_25
action_40 (24) = happyShift action_26
action_40 (26) = happyShift action_28
action_40 (27) = happyShift action_29
action_40 (28) = happyShift action_30
action_40 (29) = happyShift action_31
action_40 (30) = happyShift action_32
action_40 _ = happyReduce_20

action_41 (15) = happyShift action_18
action_41 (16) = happyShift action_19
action_41 (17) = happyShift action_20
action_41 (18) = happyShift action_21
action_41 (19) = happyShift action_22
action_41 (20) = happyShift action_23
action_41 (21) = happyShift action_24
action_41 (22) = happyShift action_25
action_41 (26) = happyShift action_28
action_41 (27) = happyShift action_29
action_41 (28) = happyShift action_30
action_41 (29) = happyShift action_31
action_41 (30) = happyShift action_32
action_41 _ = happyReduce_19

action_42 (15) = happyShift action_18
action_42 (16) = happyShift action_19
action_42 (17) = happyShift action_20
action_42 (18) = happyShift action_21
action_42 (19) = happyShift action_22
action_42 (20) = happyShift action_23
action_42 (26) = happyShift action_28
action_42 (27) = happyShift action_29
action_42 (28) = happyShift action_30
action_42 (29) = happyShift action_31
action_42 (30) = happyShift action_32
action_42 _ = happyReduce_17

action_43 (15) = happyShift action_18
action_43 (16) = happyShift action_19
action_43 (17) = happyShift action_20
action_43 (18) = happyShift action_21
action_43 (19) = happyShift action_22
action_43 (20) = happyShift action_23
action_43 (26) = happyShift action_28
action_43 (27) = happyShift action_29
action_43 (28) = happyShift action_30
action_43 (29) = happyShift action_31
action_43 (30) = happyShift action_32
action_43 _ = happyReduce_16

action_44 (20) = happyShift action_23
action_44 (30) = happyShift action_32
action_44 _ = happyReduce_14

action_45 (20) = happyShift action_23
action_45 (30) = happyShift action_32
action_45 _ = happyReduce_13

action_46 (20) = happyShift action_23
action_46 (30) = happyShift action_32
action_46 _ = happyReduce_12

action_47 (20) = happyShift action_23
action_47 (30) = happyShift action_32
action_47 _ = happyReduce_11

action_48 (17) = happyShift action_20
action_48 (18) = happyShift action_21
action_48 (19) = happyShift action_22
action_48 (20) = happyShift action_23
action_48 (30) = happyShift action_32
action_48 _ = happyReduce_10

action_49 (17) = happyShift action_20
action_49 (18) = happyShift action_21
action_49 (19) = happyShift action_22
action_49 (20) = happyShift action_23
action_49 (30) = happyShift action_32
action_49 _ = happyReduce_9

action_50 (15) = happyShift action_18
action_50 (16) = happyShift action_19
action_50 (17) = happyShift action_20
action_50 (18) = happyShift action_21
action_50 (19) = happyShift action_22
action_50 (20) = happyShift action_23
action_50 (21) = happyShift action_24
action_50 (22) = happyShift action_25
action_50 (24) = happyShift action_26
action_50 (25) = happyShift action_27
action_50 (26) = happyShift action_28
action_50 (27) = happyShift action_29
action_50 (28) = happyShift action_30
action_50 (29) = happyShift action_31
action_50 (30) = happyShift action_32
action_50 (31) = happyShift action_54
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (31) = happyShift action_53
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_25

action_53 (32) = happyShift action_59
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (32) = happyShift action_58
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_4

action_56 (13) = happyShift action_57
action_56 (15) = happyShift action_18
action_56 (16) = happyShift action_19
action_56 (17) = happyShift action_20
action_56 (18) = happyShift action_21
action_56 (19) = happyShift action_22
action_56 (20) = happyShift action_23
action_56 (21) = happyShift action_24
action_56 (22) = happyShift action_25
action_56 (24) = happyShift action_26
action_56 (25) = happyShift action_27
action_56 (26) = happyShift action_28
action_56 (27) = happyShift action_29
action_56 (28) = happyShift action_30
action_56 (29) = happyShift action_31
action_56 (30) = happyShift action_32
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (5) = happyShift action_2
action_57 (6) = happyShift action_4
action_57 (7) = happyShift action_5
action_57 (8) = happyShift action_6
action_57 (9) = happyShift action_7
action_57 (10) = happyShift action_8
action_57 (12) = happyShift action_9
action_57 (16) = happyShift action_10
action_57 (23) = happyShift action_11
action_57 (30) = happyShift action_12
action_57 (4) = happyGoto action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (5) = happyShift action_2
action_58 (6) = happyShift action_4
action_58 (7) = happyShift action_5
action_58 (8) = happyShift action_6
action_58 (9) = happyShift action_7
action_58 (10) = happyShift action_8
action_58 (12) = happyShift action_9
action_58 (16) = happyShift action_10
action_58 (23) = happyShift action_11
action_58 (30) = happyShift action_12
action_58 (4) = happyGoto action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (5) = happyShift action_2
action_59 (6) = happyShift action_4
action_59 (7) = happyShift action_5
action_59 (8) = happyShift action_6
action_59 (9) = happyShift action_7
action_59 (10) = happyShift action_8
action_59 (12) = happyShift action_9
action_59 (16) = happyShift action_10
action_59 (23) = happyShift action_11
action_59 (30) = happyShift action_12
action_59 (4) = happyGoto action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_18
action_60 (16) = happyShift action_19
action_60 (17) = happyShift action_20
action_60 (18) = happyShift action_21
action_60 (19) = happyShift action_22
action_60 (20) = happyShift action_23
action_60 (21) = happyShift action_24
action_60 (22) = happyShift action_25
action_60 (24) = happyShift action_26
action_60 (25) = happyShift action_27
action_60 (26) = happyShift action_28
action_60 (27) = happyShift action_29
action_60 (28) = happyShift action_30
action_60 (29) = happyShift action_31
action_60 (30) = happyShift action_32
action_60 (33) = happyShift action_64
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_18
action_61 (16) = happyShift action_19
action_61 (17) = happyShift action_20
action_61 (18) = happyShift action_21
action_61 (19) = happyShift action_22
action_61 (20) = happyShift action_23
action_61 (21) = happyShift action_24
action_61 (22) = happyShift action_25
action_61 (24) = happyShift action_26
action_61 (25) = happyShift action_27
action_61 (26) = happyShift action_28
action_61 (27) = happyShift action_29
action_61 (28) = happyShift action_30
action_61 (29) = happyShift action_31
action_61 (30) = happyShift action_32
action_61 (33) = happyShift action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (15) = happyShift action_18
action_62 (16) = happyShift action_19
action_62 (17) = happyShift action_20
action_62 (18) = happyShift action_21
action_62 (19) = happyShift action_22
action_62 (20) = happyShift action_23
action_62 (21) = happyShift action_24
action_62 (22) = happyShift action_25
action_62 (24) = happyShift action_26
action_62 (25) = happyShift action_27
action_62 (26) = happyShift action_28
action_62 (27) = happyShift action_29
action_62 (28) = happyShift action_30
action_62 (29) = happyShift action_31
action_62 (30) = happyShift action_32
action_62 _ = happyReduce_1

action_63 (11) = happyShift action_65
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_3

action_65 (32) = happyShift action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (5) = happyShift action_2
action_66 (6) = happyShift action_4
action_66 (7) = happyShift action_5
action_66 (8) = happyShift action_6
action_66 (9) = happyShift action_7
action_66 (10) = happyShift action_8
action_66 (12) = happyShift action_9
action_66 (16) = happyShift action_10
action_66 (23) = happyShift action_11
action_66 (30) = happyShift action_12
action_66 (4) = happyGoto action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (15) = happyShift action_18
action_67 (16) = happyShift action_19
action_67 (17) = happyShift action_20
action_67 (18) = happyShift action_21
action_67 (19) = happyShift action_22
action_67 (20) = happyShift action_23
action_67 (21) = happyShift action_24
action_67 (22) = happyShift action_25
action_67 (24) = happyShift action_26
action_67 (25) = happyShift action_27
action_67 (26) = happyShift action_28
action_67 (27) = happyShift action_29
action_67 (28) = happyShift action_30
action_67 (29) = happyShift action_31
action_67 (30) = happyShift action_32
action_67 (33) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_2

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

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn4
		 (Lit (VInt happy_var_1)
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 _
	 =  HappyAbsSyn4
		 (Lit (VBool True)
	)

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn4
		 (Lit (VBool False)
	)

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mult happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mod happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Pow happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Neg happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Eq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Ineq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Not happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 34 34 notHappyAtAll (HappyState action) sts stk []

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
	TokenFunc -> cont 12;
	TokenSemi -> cont 13;
	TokenAssign -> cont 14;
	TokenAdd -> cont 15;
	TokenSub -> cont 16;
	TokenMult -> cont 17;
	TokenDiv -> cont 18;
	TokenMod -> cont 19;
	TokenPow -> cont 20;
	TokenEq -> cont 21;
	TokenIneq -> cont 22;
	TokenNot -> cont 23;
	TokenAnd -> cont 24;
	TokenOr -> cont 25;
	TokenLT -> cont 26;
	TokenLE -> cont 27;
	TokenGT -> cont 28;
	TokenGE -> cont 29;
	TokenLBracket -> cont 30;
	TokenRBracket -> cont 31;
	TokenLCBracket -> cont 32;
	TokenRCBracket -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
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

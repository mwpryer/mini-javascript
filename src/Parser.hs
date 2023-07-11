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
happyExpList = Happy_Data_Array.listArray (0,161) ([4592,1032,2,32768,0,0,64508,1,0,0,0,0,0,0,61440,2065,15876,33026,18368,4128,64512,1531,0,0,0,31744,516,36737,8256,4592,1032,574,49281,8263,63504,1032,7938,16513,9184,2064,1148,33026,16527,61472,2065,15876,33026,18368,4128,2296,516,64,57344,4131,8,126,49152,15,63488,1,16128,0,24544,15,58364,32769,15391,61440,1923,16384,0,2048,0,256,0,32,32768,7,61440,0,0,0,61428,31751,516,49153,8127,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","var","id","int","true","false","';'","'='","'+'","'-'","'*'","'/'","'%'","'**'","'=='","'!='","'!'","'&&'","'||'","'<'","'<='","'>'","'>='","'('","')'","%eof"]
        bit_start = st Prelude.* 29
        bit_end = (st Prelude.+ 1) Prelude.* 29
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..28]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_2
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (6) = happyShift action_28
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (12) = happyShift action_14
action_3 (13) = happyShift action_15
action_3 (14) = happyShift action_16
action_3 (15) = happyShift action_17
action_3 (16) = happyShift action_18
action_3 (17) = happyShift action_19
action_3 (18) = happyShift action_20
action_3 (19) = happyShift action_21
action_3 (21) = happyShift action_22
action_3 (22) = happyShift action_23
action_3 (23) = happyShift action_24
action_3 (24) = happyShift action_25
action_3 (25) = happyShift action_26
action_3 (26) = happyShift action_27
action_3 (29) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 _ = happyReduce_5

action_8 (5) = happyShift action_2
action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (9) = happyShift action_7
action_8 (13) = happyShift action_8
action_8 (20) = happyShift action_9
action_8 (27) = happyShift action_10
action_8 (4) = happyGoto action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_2
action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (20) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_2
action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (13) = happyShift action_8
action_10 (20) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (4) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_14
action_11 (13) = happyShift action_15
action_11 (14) = happyShift action_16
action_11 (15) = happyShift action_17
action_11 (16) = happyShift action_18
action_11 (17) = happyShift action_19
action_11 (18) = happyShift action_20
action_11 (19) = happyShift action_21
action_11 (21) = happyShift action_22
action_11 (22) = happyShift action_23
action_11 (23) = happyShift action_24
action_11 (24) = happyShift action_25
action_11 (25) = happyShift action_26
action_11 (26) = happyShift action_27
action_11 (28) = happyShift action_44
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_15

action_13 _ = happyReduce_12

action_14 (5) = happyShift action_2
action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_6
action_14 (9) = happyShift action_7
action_14 (13) = happyShift action_8
action_14 (20) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (4) = happyGoto action_43
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_2
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_7
action_15 (13) = happyShift action_8
action_15 (20) = happyShift action_9
action_15 (27) = happyShift action_10
action_15 (4) = happyGoto action_42
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_2
action_16 (6) = happyShift action_4
action_16 (7) = happyShift action_5
action_16 (8) = happyShift action_6
action_16 (9) = happyShift action_7
action_16 (13) = happyShift action_8
action_16 (20) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (4) = happyGoto action_41
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_2
action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_5
action_17 (8) = happyShift action_6
action_17 (9) = happyShift action_7
action_17 (13) = happyShift action_8
action_17 (20) = happyShift action_9
action_17 (27) = happyShift action_10
action_17 (4) = happyGoto action_40
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_2
action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (13) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (4) = happyGoto action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_2
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (13) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (4) = happyGoto action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_2
action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (9) = happyShift action_7
action_20 (13) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (4) = happyGoto action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_2
action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (13) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_2
action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (9) = happyShift action_7
action_22 (13) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_2
action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_7
action_23 (13) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_2
action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (9) = happyShift action_7
action_24 (13) = happyShift action_8
action_24 (20) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_2
action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (9) = happyShift action_7
action_25 (13) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (5) = happyShift action_2
action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (9) = happyShift action_7
action_26 (13) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (5) = happyShift action_2
action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (9) = happyShift action_7
action_27 (13) = happyShift action_8
action_27 (20) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_2
action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (9) = happyShift action_7
action_29 (13) = happyShift action_8
action_29 (20) = happyShift action_9
action_29 (27) = happyShift action_10
action_29 (4) = happyGoto action_45
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_14
action_30 (13) = happyShift action_15
action_30 (14) = happyShift action_16
action_30 (15) = happyShift action_17
action_30 (16) = happyShift action_18
action_30 (17) = happyShift action_19
action_30 _ = happyReduce_21

action_31 (12) = happyShift action_14
action_31 (13) = happyShift action_15
action_31 (14) = happyShift action_16
action_31 (15) = happyShift action_17
action_31 (16) = happyShift action_18
action_31 (17) = happyShift action_19
action_31 _ = happyReduce_20

action_32 (12) = happyShift action_14
action_32 (13) = happyShift action_15
action_32 (14) = happyShift action_16
action_32 (15) = happyShift action_17
action_32 (16) = happyShift action_18
action_32 (17) = happyShift action_19
action_32 _ = happyReduce_19

action_33 (12) = happyShift action_14
action_33 (13) = happyShift action_15
action_33 (14) = happyShift action_16
action_33 (15) = happyShift action_17
action_33 (16) = happyShift action_18
action_33 (17) = happyShift action_19
action_33 _ = happyReduce_18

action_34 (12) = happyShift action_14
action_34 (13) = happyShift action_15
action_34 (14) = happyShift action_16
action_34 (15) = happyShift action_17
action_34 (16) = happyShift action_18
action_34 (17) = happyShift action_19
action_34 (18) = happyShift action_20
action_34 (19) = happyShift action_21
action_34 (21) = happyShift action_22
action_34 (23) = happyShift action_24
action_34 (24) = happyShift action_25
action_34 (25) = happyShift action_26
action_34 (26) = happyShift action_27
action_34 _ = happyReduce_17

action_35 (12) = happyShift action_14
action_35 (13) = happyShift action_15
action_35 (14) = happyShift action_16
action_35 (15) = happyShift action_17
action_35 (16) = happyShift action_18
action_35 (17) = happyShift action_19
action_35 (18) = happyShift action_20
action_35 (19) = happyShift action_21
action_35 (23) = happyShift action_24
action_35 (24) = happyShift action_25
action_35 (25) = happyShift action_26
action_35 (26) = happyShift action_27
action_35 _ = happyReduce_16

action_36 (12) = happyShift action_14
action_36 (13) = happyShift action_15
action_36 (14) = happyShift action_16
action_36 (15) = happyShift action_17
action_36 (16) = happyShift action_18
action_36 (17) = happyShift action_19
action_36 (23) = happyShift action_24
action_36 (24) = happyShift action_25
action_36 (25) = happyShift action_26
action_36 (26) = happyShift action_27
action_36 _ = happyReduce_14

action_37 (12) = happyShift action_14
action_37 (13) = happyShift action_15
action_37 (14) = happyShift action_16
action_37 (15) = happyShift action_17
action_37 (16) = happyShift action_18
action_37 (17) = happyShift action_19
action_37 (23) = happyShift action_24
action_37 (24) = happyShift action_25
action_37 (25) = happyShift action_26
action_37 (26) = happyShift action_27
action_37 _ = happyReduce_13

action_38 (17) = happyShift action_19
action_38 _ = happyReduce_11

action_39 (17) = happyShift action_19
action_39 _ = happyReduce_10

action_40 (17) = happyShift action_19
action_40 _ = happyReduce_9

action_41 (17) = happyShift action_19
action_41 _ = happyReduce_8

action_42 (14) = happyShift action_16
action_42 (15) = happyShift action_17
action_42 (16) = happyShift action_18
action_42 (17) = happyShift action_19
action_42 _ = happyReduce_7

action_43 (14) = happyShift action_16
action_43 (15) = happyShift action_17
action_43 (16) = happyShift action_18
action_43 (17) = happyShift action_19
action_43 _ = happyReduce_6

action_44 _ = happyReduce_22

action_45 (10) = happyShift action_46
action_45 (12) = happyShift action_14
action_45 (13) = happyShift action_15
action_45 (14) = happyShift action_16
action_45 (15) = happyShift action_17
action_45 (16) = happyShift action_18
action_45 (17) = happyShift action_19
action_45 (18) = happyShift action_20
action_45 (19) = happyShift action_21
action_45 (21) = happyShift action_22
action_45 (22) = happyShift action_23
action_45 (23) = happyShift action_24
action_45 (24) = happyShift action_25
action_45 (25) = happyShift action_26
action_45 (26) = happyShift action_27
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (5) = happyShift action_2
action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (9) = happyShift action_7
action_46 (13) = happyShift action_8
action_46 (20) = happyShift action_9
action_46 (27) = happyShift action_10
action_46 (4) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_14
action_47 (13) = happyShift action_15
action_47 (14) = happyShift action_16
action_47 (15) = happyShift action_17
action_47 (16) = happyShift action_18
action_47 (17) = happyShift action_19
action_47 (18) = happyShift action_20
action_47 (19) = happyShift action_21
action_47 (21) = happyShift action_22
action_47 (22) = happyShift action_23
action_47 (23) = happyShift action_24
action_47 (24) = happyShift action_25
action_47 (25) = happyShift action_26
action_47 (26) = happyShift action_27
action_47 _ = happyReduce_1

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

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenSym happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn4
		 (Lit (VInt happy_var_1)
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (Lit (VBool True)
	)

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn4
		 (Lit (VBool False)
	)

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mult happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Mod happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Pow happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Neg happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Eq happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Ineq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Unary Not happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 29 29 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar -> cont 5;
	TokenSym happy_dollar_dollar -> cont 6;
	TokenInt happy_dollar_dollar -> cont 7;
	TokenTrue -> cont 8;
	TokenFalse -> cont 9;
	TokenSemi -> cont 10;
	TokenAssign -> cont 11;
	TokenAdd -> cont 12;
	TokenSub -> cont 13;
	TokenMult -> cont 14;
	TokenDiv -> cont 15;
	TokenMod -> cont 16;
	TokenPow -> cont 17;
	TokenEq -> cont 18;
	TokenIneq -> cont 19;
	TokenNot -> cont 20;
	TokenAnd -> cont 21;
	TokenOr -> cont 22;
	TokenLT -> cont 23;
	TokenLE -> cont 24;
	TokenGT -> cont 25;
	TokenGE -> cont 26;
	TokenLBracket -> cont 27;
	TokenRBracket -> cont 28;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 29 tk tks = happyError' (tks, explist)
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

module Declare where

data Exp
  = Num Int
  | Add Exp Exp
  | Sub Exp Exp
  | Mult Exp Exp
  | Div Exp Exp
  | Pow Exp Exp
  | Neg Exp
  deriving (Show)
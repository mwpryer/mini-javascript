module Declare where

-- Abstract syntax of expressions in the language
data Exp
  = Num Int
  | Add Exp Exp
  | Sub Exp Exp
  | Mult Exp Exp
  | Div Exp Exp
  | Pow Exp Exp
  | Neg Exp
  | Var String
  | Decl String Exp Exp
  deriving (Show)

-- Represents association of a variable with its value
type Binding = (String, Int)

-- Execution environment for mapping variables to values
type Env = [Binding]
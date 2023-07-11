module Declare where

import Data.Maybe
import Prelude hiding (GT, LT)

data Value
  = VInt Int
  | VBool Bool
  | VClosure String Exp Env
  deriving (Eq)

instance Show Value where
  show (VInt n) = show n
  show (VBool True) = "true"
  show (VBool False) = "false"
  show (VClosure {}) = "closure"

data UnaryOp
  = Neg
  | Not
  deriving (Show, Eq)

data BinaryOp
  = Add
  | Sub
  | Mult
  | Div
  | Mod
  | Pow
  | Eq
  | Ineq
  | And
  | Or
  | LT
  | LE
  | GT
  | GE
  deriving (Show, Eq)

-- Abstract syntax of expressions in the language
data Exp
  = Lit Value
  | Unary UnaryOp Exp
  | Binary BinaryOp Exp Exp
  | Var String
  | Decl String Exp Exp
  | If Exp Exp Exp
  | Func String Exp
  | Call Exp Exp
  deriving (Eq)

instance Show Exp where
  show = showExp

-- Pretty printer for expressions
showExp :: Exp -> String
showExp (Lit v) = show v
showExp (Unary op e) = "(" ++ fromJust (lookup op ops) ++ showExp e ++ ")"
  where
    ops = [(Neg, "-"), (Not, "!")]
showExp (Binary op e1 e2) = "(" ++ showExp e1 ++ " " ++ fromJust (lookup op ops) ++ " " ++ showExp e2 ++ ")"
  where
    ops =
      [ (Add, "+"),
        (Sub, "-"),
        (Mult, "*"),
        (Div, "/"),
        (Mod, "%"),
        (Pow, "**"),
        (Eq, "=="),
        (Ineq, "!="),
        (And, "&&"),
        (Or, "||"),
        (LT, "<"),
        (LE, "<="),
        (GT, ">"),
        (GE, ">=")
      ]
showExp (Var x) = x
showExp (Decl x e body) = "var " ++ x ++ " = " ++ showExp e ++ "; " ++ showExp body
showExp (If cond e1 e2) = "if (" ++ showExp cond ++ ") { " ++ showExp e1 ++ " } else { " ++ showExp e2 ++ " }"
showExp (Func param body) = "function (" ++ param ++ ") { " ++ showExp body ++ " }"
showExp (Call f arg) = showExp f ++ "(" ++ showExp arg ++ ")"

-- Represents association of a variable with its value
type Binding = (String, Value)

-- Execution environment for mapping variables to values
type Env = [Binding]
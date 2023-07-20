module Declare where

import Data.List
import Data.Maybe
import Prelude hiding (GT, LT)

data Params
  = PVar String
  | PVars [Params]
  deriving (Eq)

instance Show Params where
  show (PVar x) = x
  show (PVars ns) = intercalate ", " (map show ns)

data Value
  = VInt Int
  | VBool Bool
  | VClosure Params Exp Env
  | VArr [Value]
  deriving (Eq)

instance Show Value where
  show (VInt n) = show n
  show (VBool True) = "true"
  show (VBool False) = "false"
  show (VClosure {}) = "closure"
  show (VArr vs) = "[" ++ intercalate ", " (map show vs) ++ "]"

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
  | Func Params Exp
  | Call Exp Exp
  | Args [Exp]
  | Arr [Exp]
  | Index Exp Exp
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
showExp (Func params body) = "function (" ++ show params ++ ") { " ++ showExp body ++ " }"
showExp (Call f args) = showExp f ++ "(" ++ showExp args ++ ")"
showExp (Args es) = intercalate ", " (map showExp es)
showExp (Arr es) = "[" ++ intercalate ", " (map showExp es) ++ "]"

-- Variable bindings are now closures to satisfy call-by-name evaluation
newtype ExpClosure = ExpClosure (Exp, Env) deriving (Eq)

-- Represents association of a variable with its value
type Binding = (String, ExpClosure)

-- Execution environment for mapping variables to values
type Env = [Binding]
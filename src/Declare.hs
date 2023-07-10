module Declare where

data Value
  = VInt Int
  | VBool Bool
  deriving (Eq)

instance Show Value where
  show (VInt n) = show n
  show (VBool True) = "true"
  show (VBool False) = "false"

-- Abstract syntax of expressions in the language
data Exp
  = Lit Value
  | Add Exp Exp
  | Sub Exp Exp
  | Mult Exp Exp
  | Div Exp Exp
  | Mod Exp Exp
  | Pow Exp Exp
  | Neg Exp
  | Eq Exp Exp
  | Ineq Exp Exp
  | Not Exp
  | And Exp Exp
  | Or Exp Exp
  | Var String
  | Decl String Exp Exp

instance Show Exp where
  show = showExp

-- Pretty printer for expressions
showExp :: Exp -> String
showExp (Lit v) = show v
showExp (Add e1 e2) = "(" ++ showExp e1 ++ " + " ++ showExp e2 ++ ")"
showExp (Sub e1 e2) = "(" ++ showExp e1 ++ " - " ++ showExp e2 ++ ")"
showExp (Mult e1 e2) = "(" ++ showExp e1 ++ " * " ++ showExp e2 ++ ")"
showExp (Div e1 e2) = "(" ++ showExp e1 ++ " / " ++ showExp e2 ++ ")"
showExp (Mod e1 e2) = "(" ++ showExp e1 ++ " % " ++ showExp e2 ++ ")"
showExp (Pow e1 e2) = "(" ++ showExp e1 ++ " ** " ++ showExp e2 ++ ")"
showExp (Neg e) = "(-" ++ showExp e ++ ")"
showExp (Eq e1 e2) = "(" ++ showExp e1 ++ " == " ++ showExp e2 ++ ")"
showExp (Ineq e1 e2) = "(" ++ showExp e1 ++ " != " ++ showExp e2 ++ ")"
showExp (Not e) = "(!" ++ showExp e ++ ")"
showExp (And e1 e2) = "(" ++ showExp e1 ++ " && " ++ showExp e2 ++ ")"
showExp (Or e1 e2) = "(" ++ showExp e1 ++ " || " ++ showExp e2 ++ ")"
showExp (Var x) = x
showExp (Decl x e body) = "var " ++ x ++ " = " ++ showExp e ++ "; " ++ showExp body

-- Represents association of a variable with its value
type Binding = (String, Value)

-- Execution environment for mapping variables to values
type Env = [Binding]
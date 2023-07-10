module Interpreter where

import Data.Maybe
import Declare
import Parser

evaluate :: Exp -> Value
evaluate e = evaluate' e []
  where
    evaluate' :: Exp -> Env -> Value
    evaluate' (Lit v) env = v
    evaluate' (Add e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VInt i1, VInt i2) -> VInt (i1 + i2)
    evaluate' (Sub e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VInt i1, VInt i2) -> VInt (i1 - i2)
    evaluate' (Mult e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VInt i1, VInt i2) -> VInt (i1 * i2)
    evaluate' (Div e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VInt i1, VInt i2) -> VInt (i1 `div` i2)
    evaluate' (Pow e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VInt i1, VInt i2) -> VInt (i1 ^ i2)
    evaluate' (Neg e) env = case evaluate' e env of
      (VInt i) -> VInt (-i)
    evaluate' (Eq e1 e2) env = VBool (evaluate' e1 env == evaluate' e2 env)
    evaluate' (Ineq e1 e2) env = VBool (evaluate' e1 env /= evaluate' e2 env)
    evaluate' (Not e) env = case evaluate' e env of
      (VBool b) -> VBool (not b)
    evaluate' (And e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VBool b1, VBool b2) -> VBool (b1 && b2)
    evaluate' (Or e1 e2) env = case (evaluate' e1 env, evaluate' e2 env) of
      (VBool b1, VBool b2) -> VBool (b1 || b2)
    evaluate' (Var x) env = fromJust (lookup x env) -- Search environment for variable (left to right)
    evaluate' (Decl x e body) env = evaluate' body newEnv
      where
        -- Prepend new variable binding to the environment to evaluate the body
        newEnv = (x, evaluate' e env) : env
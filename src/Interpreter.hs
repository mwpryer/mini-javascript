module Interpreter where

import Data.Maybe
import Declare
import Parser

evaluate :: Exp -> Int
evaluate e = evaluate' e []
  where
    evaluate' :: Exp -> Env -> Int
    evaluate' (Num x) env = x
    evaluate' (Add e1 e2) env = evaluate' e1 env + evaluate' e2 env
    evaluate' (Sub e1 e2) env = evaluate' e1 env - evaluate' e2 env
    evaluate' (Mult e1 e2) env = evaluate' e1 env * evaluate' e2 env
    evaluate' (Div e1 e2) env = evaluate' e1 env `div` evaluate' e2 env
    evaluate' (Pow e1 e2) env = evaluate' e1 env ^ evaluate' e2 env
    evaluate' (Neg e) env = -evaluate' e env
    evaluate' (Var x) env = fromJust (lookup x env) -- Search environment for variable (left to right)
    evaluate' (Decl x e body) env = evaluate' body newEnv
      where
        -- Prepend new variable binding to the environment to evaluate the body
        newEnv = (x, evaluate' e env) : env
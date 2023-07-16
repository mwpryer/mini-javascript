module Interpreter where

import Data.Maybe
import Declare
import Prelude hiding (GT, LT)

unary :: UnaryOp -> Value -> Value
unary Neg (VInt n) = VInt (-n)
unary Not (VBool b) = VBool (not b)

binary :: BinaryOp -> Value -> Value -> Value
binary Add (VInt i1) (VInt i2) = VInt (i1 + i2)
binary Sub (VInt i1) (VInt i2) = VInt (i1 - i2)
binary Mult (VInt i1) (VInt i2) = VInt (i1 * i2)
binary Div (VInt i1) (VInt i2) = VInt (i1 `div` i2)
binary Mod (VInt i1) (VInt i2) = VInt (i1 `mod` i2)
binary Pow (VInt i1) (VInt i2) = VInt (i1 ^ i2)
binary Eq (VInt i1) (VInt i2) = VBool (i1 == i2)
binary Eq (VBool b1) (VBool b2) = VBool (b1 == b2)
binary Ineq (VInt i1) (VInt i2) = VBool (i1 /= i2)
binary Ineq (VBool b1) (VBool b2) = VBool (b1 /= b2)
binary And (VBool b1) (VBool b2) = VBool (b1 && b2)
binary Or (VBool b1) (VBool b2) = VBool (b1 || b2)
binary LT (VInt i1) (VInt i2) = VBool (i1 < i2)
binary LE (VInt i1) (VInt i2) = VBool (i1 <= i2)
binary GT (VInt i1) (VInt i2) = VBool (i1 > i2)
binary GE (VInt i1) (VInt i2) = VBool (i1 >= i2)

evaluate :: Exp -> Env -> Value
evaluate (Lit v) env = v
evaluate (Unary op e) env = unary op (evaluate e env)
evaluate (Binary op e1 e2) env = binary op (evaluate e1 env) (evaluate e2 env)
-- Search environment for variable (left to right) and evaluate it under its closure
evaluate (Var x) env = evaluate e env'
  where
    (ExpClosure (e, env')) = fromJust (lookup x env)
evaluate (Decl x e body) env = evaluate body newEnv
  where
    -- Prepend new variable binding to the environment to evaluate the body
    newEnv = (x, ExpClosure (e, newEnv)) : env
evaluate (If cond e1 e2) env = if b then evaluate e1 env else evaluate e2 env
  where
    -- Evaluate condition expression to determine which branch to take
    (VBool b) = evaluate cond env
-- Create closure with current environment for static scoping
evaluate (Func x body) env = VClosure x body env
evaluate (Call f arg) env = evaluate body newEnv
  where
    (VClosure x body closeEnv) = evaluate f env
    -- Prepend new binding to the closure environment to evaluate the body
    newEnv = (x, ExpClosure (arg, env)) : closeEnv
evaluate (Arr es) env = VArr (map (\e -> evaluate e env) es)
evaluate (Index e1 e2) env = arr !! i
  where
    (VArr arr) = evaluate e1 env
    (VInt i) = evaluate e2 env

execute :: Exp -> Value
execute e = evaluate e []
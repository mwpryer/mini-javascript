module Interpreter where

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

evaluate :: Exp -> Env -> (Value, Env)
evaluate (Lit v) env = (v, env)
evaluate (Unary op e) env = (unary op v, env1)
  where
    (v, env1) = evaluate e env
evaluate (Binary op e1 e2) env = (binary op v1 v2, env2)
  where
    (v1, env1) = evaluate e1 env
    (v2, env2) = evaluate e2 env1
-- Search environment for variable (left to right) and evaluate it under its closure or return its value
evaluate (Var x) env = case lookup x env of
  Just (Left (ExpClosure (e, env1))) -> (v, (x, Right v) : env)
    where
      (v, _) = evaluate e env1
  Just (Right v) -> (v, env)
evaluate (Decl x e body) env = (v, env)
  where
    -- Prepend new variable binding to the environment to evaluate the body
    newEnv = (x, Left (ExpClosure (e, newEnv))) : env
    -- Drop binding for x after evaluating the body to respect lexical scoping
    (v, _) = evaluate body newEnv
evaluate (If cond e1 e2) env = if b then evaluate e1 env1 else evaluate e2 env1
  where
    -- Evaluate condition expression to determine which branch to take
    (VBool b, env1) = evaluate cond env
-- Create closure with current environment for static scoping
evaluate (Func x body) env = (VClosure x body env, env)
evaluate (Call f args) env = (v, env2)
  where
    (VClosure xs body env1, env2) = evaluate f env
    -- Drop binding for x after evaluating the function body to respect lexical scoping
    (v, _) = evaluate body newEnv
    -- Prepend new binding to the closure environment to evaluate the body
    newEnv = buildEnv xs args ++ env1
    buildEnv :: Params -> Exp -> Env
    buildEnv (PVars []) (Args []) = []
    buildEnv (PVars ((PVar x : xs))) (Args (arg : args)) = (x, Left (ExpClosure (arg, env))) : buildEnv (PVars xs) (Args args)
evaluate (Arr es) env = (VArr (map (\e -> fst (evaluate e env)) es), env)
evaluate (Index e1 e2) env = (a !! i, env2)
  where
    (VArr a, env1) = evaluate e1 env
    (VInt i, env2) = evaluate e2 env1

execute :: Exp -> Value
execute e = fst (evaluate e [])
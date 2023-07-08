module Interpreter where

import Declare
import Parser

evaluate :: Exp -> Int
evaluate (Num x) = x
evaluate (Add e1 e2) = evaluate e1 + evaluate e2
evaluate (Sub e1 e2) = evaluate e1 - evaluate e2
evaluate (Mult e1 e2) = evaluate e1 * evaluate e2
evaluate (Div e1 e2) = evaluate e1 `div` evaluate e2
evaluate (Pow e1 e2) = evaluate e1 ^ evaluate e2
evaluate (Neg e) = -evaluate e
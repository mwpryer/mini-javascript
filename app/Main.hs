module Main where

import Declare
import Interpreter
import Parser
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  src <- readFile . head $ args
  let ast = parseExpr src
  print . evaluate $ ast
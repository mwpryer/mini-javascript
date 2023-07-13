module Main where

import Control.Monad.State.Strict
import Data.List
import Declare
import Interpreter
import Parser
import System.Console.Repline
import System.Environment
import System.Exit

type Repl a = HaskelineT IO a

throwErr :: Show e => Either e a -> Repl a
throwErr (Left err) = do
  liftIO $ print err
  abort
throwErr (Right val) = return val

-- Execution
exec :: String -> Repl ()
exec src = do
  ast <- throwErr $ parseExpr src
  let val = execute ast
  liftIO $ print val

-- :load command
load :: String -> Repl ()
load args = do
  contents <- liftIO $ readFile args
  exec contents

-- :quit command
quit :: a -> Repl ()
quit _ = liftIO exitSuccess

-- Prefix tab completer
defaultMatcher :: MonadIO m => [(String, CompletionFunc m)]
defaultMatcher = [(":load", fileCompleter)]

-- Default tab completer
comp :: Monad m => WordCompleter m
comp n = do
  let cmds = [":load", ":quit"]
  return $ filter (isPrefixOf n) cmds

-- List of options and commands
opts :: [(String, String -> Repl ())]
opts = [("load", load), ("quit", quit)]

repl :: Repl () -> IO ()
repl ini =
  evalReplOpts $
    ReplOpts
      { banner = const $ return "MJS> ",
        command = exec,
        options = opts,
        prefix = Just ':',
        multilineCommand = Nothing,
        tabComplete = Prefix (wordCompleter comp) defaultMatcher,
        initialiser = ini,
        finaliser = return Exit
      }

main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> repl $ return ()
    [fname] -> do
      contents <- readFile fname
      case parseExpr contents of
        Left err -> putStrLn err
        Right ast -> do
          let val = execute ast
          print val
    _ -> putStrLn "Invalid arguments. Usage: mjs [filename]"
{
module Lexer where
}

%wrapper "basic"

$digit = 0-9

tokens :-
  $white+                       ;
  $digit+                       { \s -> TokenNum (read s) }
  \+                            { \s -> TokenAdd }
  \-                            { \s -> TokenSub }
  \*                            { \s -> TokenMult }
  \/                            { \s -> TokenDiv }
  \*\*                          { \s -> TokenPow }
  \(                            { \s -> TokenLBracket }
  \)                            { \s -> TokenRBracket }

{
data Token
  = TokenNum Int
  | TokenAdd
  | TokenSub
  | TokenMult
  | TokenDiv
  | TokenPow
  | TokenLBracket
  | TokenRBracket
  deriving (Eq, Show)

scanTokens = alexScanTokens
}

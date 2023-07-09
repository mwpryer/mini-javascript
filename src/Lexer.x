{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
  $white+                       ;
  "//".*                        ;
  var                           { \s -> TokenVar}
  $digit+                       { \s -> TokenNum (read s) }
  \;                            { \s -> TokenSemi }
  \=                            { \s -> TokenAssign }
  \+                            { \s -> TokenAdd }
  \-                            { \s -> TokenSub }
  \*                            { \s -> TokenMult }
  \/                            { \s -> TokenDiv }
  \*\*                          { \s -> TokenPow }
  \(                            { \s -> TokenLBracket }
  \)                            { \s -> TokenRBracket }
  $alpha [$alpha $digit \_ \']* { \s -> TokenSym s}

{
data Token
  = TokenVar
  | TokenSym String
  | TokenNum Int
  | TokenSemi
  | TokenAssign
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

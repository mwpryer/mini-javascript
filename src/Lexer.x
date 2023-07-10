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
  $digit+                       { \s -> TokenInt (read s) }
  true                          { \s -> TokenTrue }
  false                         { \s -> TokenFalse }
  \;                            { \s -> TokenSemi }
  \=                            { \s -> TokenAssign }
  \+                            { \s -> TokenAdd }
  \-                            { \s -> TokenSub }
  \*                            { \s -> TokenMult }
  \/                            { \s -> TokenDiv }
  \*\*                          { \s -> TokenPow }
  \(                            { \s -> TokenLBracket }
  \)                            { \s -> TokenRBracket }
  \=\=                          { \s -> TokenEq}
  \!\=                          { \s -> TokenIneq}
  \!                            { \s -> TokenNot}
  \&\&                          { \s -> TokenAnd}
  \|\|                          { \s -> TokenOr}
  $alpha [$alpha $digit \_ \']* { \s -> TokenSym s}

{
data Token
  = TokenVar
  | TokenSym String
  | TokenInt Int
  | TokenTrue
  | TokenFalse
  | TokenSemi
  | TokenAssign
  | TokenAdd
  | TokenSub
  | TokenMult
  | TokenDiv
  | TokenPow
  | TokenLBracket
  | TokenRBracket
  | TokenEq
  | TokenIneq
  | TokenNot
  | TokenAnd
  | TokenOr
  deriving (Eq, Show)

scanTokens = alexScanTokens
}

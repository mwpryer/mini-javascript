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
  if                            { \s -> TokenIf }
  else                          { \s -> TokenElse }
  function                      { \s -> TokenFunc }
  \;                            { \s -> TokenSemi }
  \=                            { \s -> TokenAssign }
  \+                            { \s -> TokenAdd }
  \-                            { \s -> TokenSub }
  \*                            { \s -> TokenMult }
  \/                            { \s -> TokenDiv }
  \%                            { \s -> TokenMod}
  \*\*                          { \s -> TokenPow }
  \=\=                          { \s -> TokenEq}
  \!\=                          { \s -> TokenIneq}
  \!                            { \s -> TokenNot}
  \&\&                          { \s -> TokenAnd}
  \|\|                          { \s -> TokenOr}
  \<                            { \s -> TokenLT}
  \<\=                          { \s -> TokenLE}
  \>                            { \s -> TokenGT}
  \>\=                          { \s -> TokenGE}
  \(                            { \s -> TokenLBracket }
  \)                            { \s -> TokenRBracket }
  \{                            { \s -> TokenLCBracket }
  \}                            { \s -> TokenRCBracket }
  \[                            { \s -> TokenLSBracket }
  \]                            { \s -> TokenRSBracket }
  \,                            { \s -> TokenComma }
  $alpha [$alpha $digit \_ \']* { \s -> TokenSym s}

{
data Token
  = TokenVar
  | TokenSym String
  | TokenInt Int
  | TokenTrue
  | TokenFalse
  | TokenIf
  | TokenElse
  | TokenFunc
  | TokenSemi
  | TokenAssign
  | TokenAdd
  | TokenSub
  | TokenMult
  | TokenDiv
  | TokenMod
  | TokenPow
  | TokenEq
  | TokenIneq
  | TokenNot
  | TokenAnd
  | TokenOr
  | TokenLT
  | TokenLE
  | TokenGT
  | TokenGE
  | TokenLBracket
  | TokenRBracket
  | TokenLCBracket
  | TokenRCBracket
  | TokenLSBracket
  | TokenRSBracket
  | TokenComma
  deriving (Eq, Show)

scanTokens = alexScanTokens
}

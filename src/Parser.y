{
module Parser where
import Lexer
import Declare
import Prelude hiding (GT, LT)
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    var     { TokenVar }
    id      { TokenSym $$ }
    int     { TokenInt $$ }
    true    { TokenTrue }
    false   { TokenFalse }
    ';'     { TokenSemi }
    '='     { TokenAssign }
    '+'     { TokenAdd }
    '-'     { TokenSub }
    '*'     { TokenMult }
    '/'     { TokenDiv }
    '%'     { TokenMod }
    '**'    { TokenPow }
    '=='    { TokenEq }
    '!='    { TokenIneq }
    '!'     { TokenNot }
    '&&'    { TokenAnd }
    '||'    { TokenOr }
    '<'     { TokenLT }
    '<='    { TokenLE }
    '>'     { TokenGT }
    '>='    { TokenGE }
    '('     { TokenLBracket }
    ')'     { TokenRBracket }

%right ';'
%right '='
%left '||'
%left '&&'
%left '==' '!='
%left '<' '<=' '>' '>='
%left '+' '-'
%left '*' '/' '%'
%right '**'
%nonassoc '!' UMINUS 
%left '(' ')'
%%

Exp : var id '=' Exp ';' Exp    { Decl $2 $4 $6 }
    | id                        { Var $1 }
    | int                       { Lit (VInt $1) }
    | true                      { Lit (VBool True) }
    | false                     { Lit (VBool False) }
    | Exp '+' Exp               { Binary Add $1 $3 }
    | Exp '-' Exp               { Binary Sub $1 $3 }
    | Exp '*' Exp               { Binary Mult $1 $3 }
    | Exp '/' Exp               { Binary Div $1 $3 }
    | Exp '%' Exp               { Binary Mod $1 $3 }
    | Exp '**' Exp              { Binary Pow $1 $3 }
    | '-' Exp %prec UMINUS      { Unary Neg $2 }
    | Exp '==' Exp              { Binary Eq $1 $3 }
    | Exp '!=' Exp              { Binary Ineq $1 $3 }
    | '!' Exp                   { Unary Not $2 }
    | Exp '&&' Exp              { Binary And $1 $3 }
    | Exp '||' Exp              { Binary Or $1 $3 }
    | Exp '<' Exp               { Binary LT $1 $3 }
    | Exp '<=' Exp              { Binary LE $1 $3 }
    | Exp '>' Exp               { Binary GT $1 $3 }
    | Exp '>=' Exp              { Binary GE $1 $3 }
    | '(' Exp ')'               { $2 }

{
parseError _ = error "Parse error"
parseExpr = parser . scanTokens
}

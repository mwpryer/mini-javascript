{
module Parser where
import Lexer
import Declare
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
    '**'    { TokenPow }
    '('     { TokenLBracket }
    ')'     { TokenRBracket }
    '=='    { TokenEq }
    '!='    { TokenIneq }
    '!'     { TokenNot }
    '&&'    { TokenAnd }
    '||'    { TokenOr }

%right ';'
%right '='
%left '||'
%left '&&'
%left '==' '!='
%left '+' '-'
%left '*' '/'
%right '**'
%nonassoc '!' UMINUS 
%left '(' ')'
%%

Exp : var id '=' Exp ';' Exp    { Decl $2 $4 $6 }
    | id                        { Var $1 }
    | int                       { Lit (VInt $1) }
    | true                      { Lit (VBool True) }
    | false                     { Lit (VBool False) }
    | Exp '+' Exp               { Add $1 $3 }
    | Exp '-' Exp               { Sub $1 $3 }
    | Exp '*' Exp               { Mult $1 $3 }
    | Exp '/' Exp               { Div $1 $3 }
    | Exp '**' Exp              { Pow $1 $3 }
    | '-' Exp %prec UMINUS      { Neg $2 }
    | '(' Exp ')'               { $2 }
    | Exp '==' Exp              { Eq $1 $3 }
    | Exp '!=' Exp              { Ineq $1 $3 }
    | '!' Exp                   { Not $2 }
    | Exp '&&' Exp              { And $1 $3 }
    | Exp '||' Exp              { Or $1 $3 }

{
parseError _ = error "Parse error"
parseExpr = parser . scanTokens
}

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
    num     { TokenNum $$ }
    ';'     { TokenSemi }
    '='     { TokenAssign }
    '+'     { TokenAdd }
    '-'     { TokenSub }
    '*'     { TokenMult }
    '/'     { TokenDiv }
    '**'    { TokenPow }
    '('     { TokenLBracket }
    ')'     { TokenRBracket }

%right ';'
%right '='
%left '+' '-'
%left '*' '/'
%right '**'
%left UMINUS
%%

Exp : var id '=' Exp ';' Exp    { Decl $2 $4 $6 }
    | id                        { Var $1 }
    | num                       { Num $1 }
    | Exp '+' Exp               { Add $1 $3 }
    | Exp '-' Exp               { Sub $1 $3 }
    | Exp '*' Exp               { Mult $1 $3 }
    | Exp '/' Exp               { Div $1 $3 }
    | Exp '**' Exp              { Pow $1 $3 }
    | '-' Exp %prec UMINUS      { Neg $2 }
    | '(' Exp ')'               { $2 }

{
parseError _ = error "Parse error"
parseExpr = parser . scanTokens
}

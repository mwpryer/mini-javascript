{
module Parser where
import Lexer
import Declare
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    num  { TokenNum $$ }
    '+'     { TokenAdd }
    '-'     { TokenSub }
    '*'     { TokenMult }
    '/'     { TokenDiv }
    '**'    { TokenPow }
    '('     { TokenLBracket }
    ')'     { TokenRBracket }

%left '+' '-'
%left '*' '/'
%left UMINUS
%right '**'
%%

Exp : Exp '+' Exp           { Add $1 $3 }
    | Exp '-' Exp           { Sub $1 $3 }
    | Exp '*' Exp           { Mult $1 $3 }
    | Exp '/' Exp           { Div $1 $3 }
    | Exp '**' Exp          { Pow $1 $3 }
    | '-' Exp %prec UMINUS  { Neg $2 }
    | '(' Exp ')'           { $2 }
    | num                { Num $1 }

{
parseError _ = error "Parse error"
parseExpr = parser . scanTokens
}

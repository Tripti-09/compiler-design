%{
#include<stdio.h>
void yyerror();
int yylex();
%}
%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithmeticExpression: E{
printf("\nResult=%d\n", $$);
return 0;
};
E:E'+'E {$$=$1+$3;}
 |E'-'E {$$=$1-$3;}
 |E'*'E {$$=$1*$3;}
 |E'/'E {$$=$1/$3;}
 |E'%'E {$$=$1%$3;}
 |'('E')' {$$=$2;}
 |NUMBER {$$=$1;}
;
%%
void main()
{
printf("\nEnter expression to calculate: ");
yyparse();
}
void yyerror()
{
printf("\nEntered arithmetic expression is Invalid\n\n");
}


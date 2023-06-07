%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *s);
%}
%token NUMBER
%left '+' '-'
%left '*' '/'
%right NEGATIVE
%%
S: E {printf("\n");}
 ;
E: E '+' E {printf("+");}
 |E '*' E {printf("*");}
 |E '-' E {printf("-");}
 |E '/' E {printf("/");}
 |'(' E ')'
 |'-' E {printf("-");}
 |NUMBER {printf("%d", yylval);}
 ;
%%
int main(){
 printf("Enter infix expression: ");
 yyparse();
}
void yyerror(const char *s) {
 //fprintf(stderr, "Error: %s\n", s);
 exit(1);
}


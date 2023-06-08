/* Design a LEX Code to identify and print valid Identifier of C/C++ in given Input pattern. */


%{
#include<stdio.h>
int count=0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {count++; printf("Valid identifier: %s\n", yytext);}
%%

int yywrap() {}

int main() 
{
    printf("Enter Input : \n");
    yylex();
    
    printf("Total Number of Valid Identifier = %d\n",count);
    return 0;
}

/* / Design a LEX Code to count the number of total characters, words, white space . */



%{
#include<stdio.h>
int totalChars=0,whiteSpace=0,word=0;
%}

%%
[ \n\t] {whiteSpace++;}
[^ \n\t]+ {word++; totalChars+=yyleng;}
%%

int yywrap() {}

int main()
{
    extern FILE *yyin;
    yyin = fopen("input.txt","r");

    yylex();

    printf("White Spaces : %d\nWords : %d\nTotal Characters : %d\n",whiteSpace,word,totalChars);

    return 0;
}




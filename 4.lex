/* Lex code for tokenizing C-code or Count number of tokens in a C code
*/


%{
#include<stdio.h>
int count=0;
%}

%%
"while"|"if"|"else"|"int"|"float" {count++; printf("\tKeyword : %s",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {count++; printf("tIdentifier : %s",yytext);}
"<="|"=="|"="|"++"|"--"|"-"|"*"|"+"|"("|")"|"," {count++; printf("\tOperator : %s",yytext);}
"{"|"}"|";" {count++; printf("\tSeperators : %s",yytext);}
-?[0-9]+"."[0-9]+ {count++; printf("\tFloat : %s",yytext);}
-?[0-9]+ {count++; printf("\tInteger : %s",yytext);}
%%

int yywrap() {}

int main()
{
    printf("Enter Input : ");
    yylex();

    printf("\nTotal Number of Tokens = %d\n",count);

    return 0;
}




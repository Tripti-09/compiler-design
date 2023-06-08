/* Check whether the number is integer or float */


%{
#include<stdio.h>
%}

%%
[-]?[0-9]+"."[0-9]+ {printf("\nFLOAT\n");}
[-]?[0-9]+ {printf("\nINTEGER\n");}
[\n] {return 0;}
%%

int yywrap() {}

int main()
{
	printf("Enter the number : ");
	yylex();
	return 0;
}




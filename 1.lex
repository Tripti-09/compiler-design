/* Design a LEX Code to count the number of lines, space, Tab-meta character and rest of characters in a given input pattern.
*/



%{
#include<stdio.h>
int linecnt=0,spacecnt=0,tabcnt=0,restcnt=0;
%}

%%
[\n] {linecnt++;}
[" "] {spacecnt++;} 
[\t] {tabcnt++;} 
[^\t" "\n] {restcnt++;} 
END {return 0;}
%%

int yywrap() {}

int main(void)
{
	printf("Enter the sentence : ");
	yylex();
	printf("Number of lines are : %d\n", linecnt);
	printf("Number of spaces are : %d\n", spacecnt);
	printf("Number of tab characters are : %d\n", tabcnt);
	printf("Number of rest characters are : %d\n", restcnt);
}




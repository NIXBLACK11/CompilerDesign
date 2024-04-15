/*Q2: Design a LEX Code to identify and print valid Identifier of C in given Input pattern.*/

%{
#include<stdio.h>
%}

%%
[a-zA-z][a-zA-Z0-9_]* {printf("Identifier : %s\n", yytext);}
[0-9]+ printf("Not an Identifier : %s\n", yytext);
.|\n ; 
%%

int yywrap(){ }

int main(void)
{
    yylex();
}
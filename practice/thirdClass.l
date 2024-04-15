/*lex code to identify and print valid c/c++ identifier*/

%{
    #include<stdio.h>
%}

%%
[a-zA-Z_][0-9a-zA-Z_]* {printf("\nIdentifier : %s\n", yytext);}
. {printf("\nNot an Identifier : %s\n", yytext);}
%%

int yywrap(){}

int main() {
    yylex();
}
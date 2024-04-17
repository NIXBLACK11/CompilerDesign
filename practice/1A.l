%{
    #include<stdio.h>
%}

%%
[+-]?[0-9]+ {printf("\nInteger : %s\n", yytext);}
. {printf("\nNot an integer : %s\n", yytext);}
%%

int yywrap(){}

int main() {
    yylex();
}
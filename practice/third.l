/*Q3: Design a LEX Code to identify and print integer and float value in given Input pattern.*/

%{
    #include<stdio.h>
%}

%%
[+-]?[0-9]+ {printf("integer : %s\n", yytext);}
[+-]?[0-9]+\.[0-9]+ {printf("float : %s\n", yytext);}
[+-]?[0-9]+\.[0-9]+[eE][+-]?[0-9]+ {printf("exponential : %s\n", yytext);}
. {printf("Invalid : %s\n", yytext);}
%%

int yywrap(){}

int main() {
    yylex();
}
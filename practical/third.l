/*Q3: Design a LEX Code to identify and print integer and float value in given Input pattern.*/

%{
    #include<stdio.h>
%}

%%
-?[0-9]+\.[0-9]+ {printf("\nFloat : %s\n", yytext);}
-?[0-9]+ {printf("\nInteger : %s\n", yytext);}
[0-9]+\.[0-9]+[eE][+-]?[0-9]+ {printf("\nExponential : %s\n", yytext);}
.|\n ;
%%

int yywrap(){}

int main() {
    yylex();
}
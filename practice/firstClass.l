/*Lex Program to count numbers of lines, words, spaces and characters in a given statement*/

%{
    #include<stdio.h>
    int cl = 0, cw = 0, cs = 0, cc = 0;
%}

%%
\n {cl++;}
[\t ] {cs++;cc+=yyleng;}
[^\n\t ]+ {cw++;cc+=yyleng;}
%%

int yywrap(){}

int main() {
    yylex();
    printf("\nNumber of lines : %d\n", cl);
    printf("\nNumber of words : %d\n", cw);
    printf("\nNumber of spaces : %d\n", cs);
    printf("\nNumber of characters : %d\n", cc);
}
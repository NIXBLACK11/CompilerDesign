%{
    #include<stdio.h>
%}

%%
^hello.* {printf("\n%s\n", yytext);}
.
%%

int yywrap(){}

int main() {
    yylex();
}
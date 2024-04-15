/*Upper case count*/

%{
    #include<stdio.h>
%}

%%
[A-Z] {printf("This is a capital letter : %s\n", yytext);}
[a-z] {printf("This is not a capital letter : %s\n", yytext);}
.|\n {printf("Not a alphabet : %s\n", yytext);}
%%

int yywrap(){}

int main() {
    yylex();
}
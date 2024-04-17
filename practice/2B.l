%{
    #include<stdio.h>
%}

%%
["][^"]*["] {printf("\n%s\n", yytext);}
.
%%

int yywrap(){}

int main() {
    yylex();
}
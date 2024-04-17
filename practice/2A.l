%{
    #include<stdio.h>
    int cL = 0, cC = 0;
%}

%%
[\n] {cL++;}
. {cC++;}
%%

int yywrap(){}

int main() {
    yylex();
    printf("\nlines : %d\n", cL);
    printf("\ncharacters : %d\n", cC);
}
%{
    #include<stdio.h>
%}

%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%
E:E'='P|P
P:P'+'Q|Q
Q:Q'-'R|R
R:R'*'S|S
S:S'/'T|T
T:NUMBER|ID
%%

int main() {
printf("Enter the expression\n");
yyparse();
printf(" Valid Expression \n");
}

yyerror() {
printf("\nExpression is invalid");
}
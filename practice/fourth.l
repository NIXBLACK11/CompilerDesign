/*Q4: Design a LEX Code for Tokenizing (Identify and print OPERATORS, SEPERATORS, KEYWORDS, IDENTIFERS) the following C-fragment:*/

%{
    #include<stdio.h>
%}

%%
int|float|short|void|string {printf("Keyword : %s\n", yytext);}
[+\-/*=%][=]?|[+\-]{2} {printf("Operator : %s\n", yytext);}
[;,(){}] {printf("Seperator : %s\n", yytext);}
[a-zA-Z_][0-9a-zA-Z_]* {printf("Identifier : %s\n", yytext);}
.|\n
%%

int yywrap(){}

int main() {
    yylex();
}
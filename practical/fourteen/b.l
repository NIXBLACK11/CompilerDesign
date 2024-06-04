/* Yacc-Lex code for converting infix expression to postfix expression. */

%{
#include<stdio.h>
#include "y.tab.h"
int val;
%}

%%
[0-9]+ { val = atoi(yytext); return NUM; }
\n     return 0;
.      return *yytext;
%%

int yywrap(){}
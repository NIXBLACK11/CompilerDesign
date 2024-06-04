/* Yacc-Lex code for converting infix expression to postfix expression. */

%{
#include "y.tab.h"
int val;
%}

%%

[0-9]+ { val = atoi(yytext); return NUM; }
\n     { return 0; } // Return 0 on encountering newline
.      { return *yytext; } // Return the character itself

%%

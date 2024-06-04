%{
    #include <stdlib.h>
    int val;
    #include "y.tab.h"
%}

%%
[a-z] { val = *yytext - 'a'; return id; }
[0-9]+ { val = atoi(yytext); return digit; }
[-+()=/*\n] { return *yytext; }
. ;
%%

int yywrap() { return 1; }

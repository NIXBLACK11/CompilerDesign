%{
    #include<stdio.h>
    int val;
    #include"y.tab.h"
%}

%%
[0-9]+ {val=atoi(yytext); return digit;}
[\-+/*\n] return *yytext;
%%

int yywrap(){}
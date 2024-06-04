%{
    #include<stdio.h>
    #include"y.tab.c"
    int val;    
%}

%%
[0-9]+ {val = atoi(yytext); return digit;}
[+\-*/\n] return *yytext;
%%

int yywrap(){}
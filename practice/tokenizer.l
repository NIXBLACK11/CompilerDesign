%{
    #include<stdio.h>    
%}

%%
"int"|"float"|"string"|"char"|"double" {printf("\nKeyword : %s\n", yytext);}
"++"|"--"|"=="|"+="|"+"|"-"|"-=" 
%%
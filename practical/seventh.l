/*Design a LEX Code to remove the comments from any C-Program given at run-time and store into ‘out.c’ file*/

%{
    #include<stdio.h>
%}

%%
"//"[^\n]* ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%

int yywrap(){}

int main(int argc, char *argv[]) {
    if(argc==3) {
        yyin=fopen(argv[1], "r");
        yyout=fopen(argv[2], "w");
    } else {
        printf("Enter the input");
        yyin=stdin;
        yyout=stdout;
    }

    yylex();
    fclose(yyin);
}
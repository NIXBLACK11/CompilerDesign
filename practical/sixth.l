/*Q6: Design a LEX Code to replace white spaces of ‘Input.txt’ file by a single blank character into ‘Output.txt’ file.*/

%{
    #include<stdio.h>
%}

%%
[\t ]+ {fprintf(yyout, " ");}
.|\n {fprintf(yyout, "%s", yytext);}
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
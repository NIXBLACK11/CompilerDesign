/*Q8: Design a LEX Code to extract all html tags in the given HTML file at run time and store into Text file given at run time.*/

%{
    #include<stdio.h>
%}

%%
"<"[^<]*">" {fprintf(yyout, "%s", yytext);}
.|\n ;
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
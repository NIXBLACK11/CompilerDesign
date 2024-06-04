%{
    #include<stdio.h>
    extern int val;
    int yylex();
    void yyerror(char *);    
%}

%token digit
%left '+' '-'
%left '*' '/'

%%
S : S E '\n' {printf("\n");}
  | ;
E : E '+' E {printf("+ ");}
  | E '-' E {printf("- ");}
  | E '*' E {printf("* ");}
  | E '/' E {printf("/ ");}
  | digit {printf("%d ", val);};
%%

int main() {
    yyparse();
}

void yyerror(char* msg) {
    printf("%s", msg);
}
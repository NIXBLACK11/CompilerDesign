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
S : S E '\n' { $$ = $2; printf("output = %d\n", $$); }
  | ;
E : E '+' E { $$ = $1 + $3; }
  | E '-' E { $$ = $1 - $3; }
  | E '*' E { $$ = $1 * $3; }
  | E '/' E { $$ = $1 / $3; }
  | digit { $$ = val; };
%%

int main() {
    yyparse();
    return 0;
}

void yyerror(char *msg) {
    printf("\n%s", msg);
    printf("\nArithmetic expression is invalid\n");
}

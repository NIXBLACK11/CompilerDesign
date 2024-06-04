%{
#include<stdio.h>
extern int val;
int yylex();
void yyerror(char*);    
%}

%token digit;

%%
S : S E '\n' { $$ = $2; printf("output = %d\n", $$); }
  | ;

E : E '+' T { $$ = $1 + $3; }
  | E '-' T { $$ = $1 - $3; }
  | T;

T : T '*' F { $$ = $1 * $3; }
  | T '/' F { $$ = $1 / $3; }
  | F;

F : digit { $$ = val; } ;
%%

int main() {
    yyparse();
}

void yyerror(char *msg) {
    printf("\n%s", msg);
    printf("\nArithmetic expression is invalid\n");
}

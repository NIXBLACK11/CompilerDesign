%{
#include<stdio.h>
extern int val;
%}

%token NUM
%left '+' '-'
%left '*' '/'
%right NEGATIVE

%%

S: E { printf("\n"); }
;

E: E '+' E { printf("+ "); }
  | E '*' E { printf("* "); }
  | E '-' E { printf("- "); }
  | E '/' E { printf("/ "); }
  | '(' E ')' { printf("( "); /* Added missing printf statement */ }
  | '-' E %prec NEGATIVE { printf("- "); }
  | NUM { printf("%d ", val); } ; /* Print the value of the number */
%%

int main() {
    yyparse();
    return 0; // Return 0 to indicate successful execution
}

int yyerror(char *msg) {
    fprintf(stderr, "Error: %s\n", msg); // Print error message to stderr
    return 1; // Return 1 to indicate error
}

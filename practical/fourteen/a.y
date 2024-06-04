%{
  #include<stdio.h>
  extern int val;
  int yylex();
  void yyerror(char*);
%}

%token NUM
%left '+' '-'
%left '*' '/'

%%

S: E { printf("\n"); };

E: E '+' E { printf("+ "); }
  | E '*' E { printf("* "); }
  | E '-' E { printf("- "); }
  | E '/' E { printf("/ "); }
  | '(' E ')'
  | NUM { printf("%d ", val); } ;
%%

int main() {
    yyparse();
}

void yyerror(char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
}

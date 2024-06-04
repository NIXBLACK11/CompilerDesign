%{
    #include <stdio.h>
    void yyerror(const char *);
    int yylex(void);
    extern int val;
    int sym[26];
%}

%token id digit
%left '+' '-'
%left '*' '/'

%%
P: P S '\n'
 | ;
S: E { printf("Output: %d\n", $1); }
 | id '=' E { sym[$1] = $3; } ;
E: digit { $$ = val; }
 | id { $$ = sym[$1]; }
 | E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | '(' E ')' { $$ = $2; } ;
%%

void yyerror(const char *s)
{
    printf("%s\n", s);
}

int main(void)
{
    return yyparse();
}

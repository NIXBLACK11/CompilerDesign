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
S : S E '\n' {$$ = $2; printf("Output: %d", $$);}
  | ;
E : E '+' E {$$ = $1+$3;}
  | E '-' E {$$ = $1-$3;}
  | E '*' E {$$ = $1*$3;}
  | E '/' E {$$ = $1/$3;}
  | digit {$$ = val;};
%%

int main() {
    yyparse();
}

void yyerror(char* msg) {
    printf("%s", msg);
}
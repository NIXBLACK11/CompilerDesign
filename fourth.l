/*Print interegr and float value*/

%{
  #include<stdio.h>
  int intCount=0, floatCount;
%}

%%
-?[0-9]+\.[0-9]+ {floatCount++;printf("\nFloat%s", yytext);};
-?[0-9]+ {intCount++;printf("\nInteger%s", yytext);};
. {}
%%

int yywrap( ){}

int main()
{
	printf("Enter the input:\n");
	yylex();
	printf("\n%d\n", intCount);
    printf("\n%d\n", floatCount);
}
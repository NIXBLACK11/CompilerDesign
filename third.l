/*lex code to identify and print valid c/c++ identifier*/

%{
  #include<stdio.h>
  int count=0;
%}

%%
[A-Za-b_][A-Za-z0-9_]* {count++;printf("\n%s", yytext);};
. {};
%%

int yywrap( ){}

int main()
{
	printf("Enter the input:\n");
	yylex();
	printf("\n%d\n", count);
}
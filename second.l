/*Upper case count*/

%{
  #include<stdio.h>
  int c=0;
%}

%%
[A-Z] {c++; printf("%s->is a capital letter\n", yytext);};
. {printf("%s->`is not a capital letter\n", yytext);};
%%

int yywrap( ){}

int main()
{
	printf("Enter the input:\n");
	yylex();
	printf("\nThe number of upper case characters are=%d\n",c);
}
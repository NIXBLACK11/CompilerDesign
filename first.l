/*Lex Program to count numbers of lines, words, spaces and characters in a given statement*/

%{
  #include<stdio.h>
  int tc=0,wc=0,lc=0,cc=0;
%}

%%
\n lc++;
\t {tc++;wc++;}
[ ] wc++;
. cc++;
%%

int yywrap( ){}

int main()
{
	printf("Enter the input:\n");
	yylex();
	printf("\nThe number of lines=%d",lc);
	printf("\nThe number of tabs=%d",tc);
	printf("\nThe number of words=%d",wc);
	printf("\nThe number of characters are=%d\n",cc);
}
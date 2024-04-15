/*Q1. Design a LEX Code to count the number of lines, space, tab-meta character and rest of characters in a given Input pattern.*/

%{
    #include<stdio.h>
    int numLines = 0;
    int numSpaces = 0;
    int numTabMeta = 0;
    int numRest = 0;
%}

%%
\n {numLines++;}
[ ] {numSpaces++;}
[\x01-\x09\x0b-\x1f\x7f] {numTabMeta++;}
. {numRest++;}
%%

int yywrap( ){}

int main(){
    yylex();
    printf("Number of lines: %d\n", numLines);
    printf("Number of spaces: %d\n", numSpaces);
    printf("Number of tabs/meta characters: %d\n", numTabMeta);
    printf("Number of other characters: %d\n", numRest);
}
/*Q1. Design a LEX Code to count the number of lines, space, tab-meta character and rest of characters in a given Input pattern.*/

%{
    #include<stdio.h>
    int cl = 0, cs = 0, cmc = 0, cc = 0;
%}

%%
\n {cl++;}
[ ] {cs++;}
[\x01-\x09\x0b-\x1f\x7f] {cmc++;}
. {cc++;}
%%

int yywrap(){}

int main() {
    yylex();
    printf("\nlines : %d\n", cl);
    printf("\nspaces : %d\n", cs);
    printf("\nmetaCharacters : %d\n", cmc);
    printf("\nother characters : %d\n", cc);
}
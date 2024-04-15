/*Q5: Design a LEX Code to count and print the number of total characters, words, white spaces in given ‘Input.txt’ file*/

%{
    #include<stdio.h>
    int numWords = 0, numSpace = 0, numChar = 0;
%}

%%
[ \t] {numChar+=yyleng;numSpace++;}
[^\t \n]+ {numWords++;numChar+=yyleng;}
%%

int yywrap(){}

int main(int argc ,char* argv[]) {
    if(argc==2)
    {
        yyin=fopen(argv[1],"r");
    }
    else
    {
        printf("Enter the input\n");
        yyin=stdin;
    }
    yylex();
    fclose(yyin);
    printf("The number of spaces=%d\n",numSpace);
    printf("The number of words=%d\n",numWords);
    printf("The number of characters are=%d\n",numChar);
}

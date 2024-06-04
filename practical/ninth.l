/*Q9: Design a DFA in LEX Code which accepts string containing even number of ‘a’ and even number of ‘b’ over input alphabet {a, b}.*/

%s A B C F

%%
<INITIAL>\n printf("Accepted\n"); BEGIN INITIAL;
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<INITIAL>[^ab\n] BEGIN F;

<A>\n printf("Not Accepted\n"); BEGIN INITIAL;
<A>a BEGIN INITIAL;
<A>b BEGIN C;
<A>[^ab\n] BEGIN F;

<B>\n printf("Not Accepted\n"); BEGIN INITIAL;
<B>a BEGIN C;
<B>b BEGIN INITIAL;
<B>[^ab\n] BEGIN F;

<C>\n printf("Not Accepted\n"); BEGIN INITIAL;
<C>a BEGIN B;
<C>b BEGIN A;
<C>[^ab\n] BEGIN F;

<F>\n printf("Invalid Input\n"); BEGIN INITIAL;
<F>[^\n] BEGIN F;
%%

int yywrap() {}

int main() {
    yylex();
}

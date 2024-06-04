/*Q10: Design a DFA in LEX Code which accepts string containing third last element ‘a’ over input alphabet {a, b}*/

%s A B C D E F G DEAD

%%
<INITIAL>b BEGIN INITIAL;
<INITIAL>a BEGIN A;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n printf("Not Accepted\n"); BEGIN INITIAL;

<A>b BEGIN F;
<A>a BEGIN B;
<A>[^ab\n] BEGIN DEAD;
<A>\n printf("Not Accepted\n"); BEGIN INITIAL;

<B>b BEGIN D;
<B>a BEGIN C;
<B>[^ab\n] BEGIN DEAD;
<B>\n printf("Not Accepted\n"); BEGIN INITIAL;

<C>b BEGIN D;
<C>a BEGIN C;
<C>[^ab\n] BEGIN DEAD;
<C>\n printf("Accepted\n"); BEGIN INITIAL;

<D>b BEGIN G;
<D>a BEGIN E;
<D>[^ab\n] BEGIN DEAD;
<D>\n printf("Accepted\n"); BEGIN INITIAL;

<E>b BEGIN F;
<E>a BEGIN B;
<E>[^ab\n] BEGIN DEAD;
<E>\n printf("Accepted\n"); BEGIN INITIAL;

<F>b BEGIN G;
<F>a BEGIN E;
<F>[^ab\n] BEGIN DEAD;
<F>\n printf("Not Accepted\n"); BEGIN INITIAL;

<G>b BEGIN INITIAL;
<G>a BEGIN A;
<G>[^ab\n] BEGIN DEAD;
<G>\n printf("Accepted\n"); BEGIN INITIAL;

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n printf("Invalid\n"); BEGIN INITIAL;
%%

int yywrap(){}

int main() {
    yylex();
}
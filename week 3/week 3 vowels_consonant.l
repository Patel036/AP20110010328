%{
#include<stdio.h>
#include<string.h>
int v = 0;
%}

%%
([' ']) ;
([\n])  ;
[aeiouAEIOU] {v++;}  

%%

int yywrap(void){
    return 1;
}
 
int main()
{
    printf("Consonants in the String ");
    // The function that starts the analysis
    yylex();
    printf("  %d",v);
    //yylex();
}
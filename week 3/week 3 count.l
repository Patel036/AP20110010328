%{
#include<stdio.h>
int v=0,c=0;
%}
  

%%
([ ]) ;
([\t\n]) {printf("consonant:%d Vowel:%d ",c,v);c=v=0;}
([aeiouAEIOU])   v++;
([^aeiouAEIOU]) {c++;}

%%

int yywrap(void){
    return 1;
}

  

int main()
{   
    printf("Enter the input String: ");
    yylex();
    //printf("no of vowels: %d\n",v);
    //printf("no of consonants: %d",c);
    
}

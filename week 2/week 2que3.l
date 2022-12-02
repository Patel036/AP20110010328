%%
([0-9])+    printf("Valid Number");
.*    printf("Not a  valid Number.");

%%
int yywrap(void){}
int main(){
    yylex();
return 0;    
}
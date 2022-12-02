%%
(<=)  goto A;
(>=)  goto A;
(==)  goto A;
(!=)  goto A;
(<)   goto A;
(>)   A:printf("Valid Relational operator");
.*    printf("Not a valid Relational operator");
%%
int yywrap(void){}
int main(){
    yylex();
    return 0;
}
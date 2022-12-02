%%
(int) printf("Its a keyword");
(for) printf("Its a keyword");
(while) printf("Its a keyword");
(char) printf("Its a keyword");
(NULL) printf("Its a keyword");
(float) printf("Its a keyword");
(double) printf("Its a keyword");
(long) printf("Its a keyword");

.*  printf("Its not a keyword");
%%
int yywrap(void){}

int main(){
    yylex();
}
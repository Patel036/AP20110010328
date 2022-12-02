#include<stdio.h>
#include<string.h>


int main()
{

    char value[100],c,s='a';

        fgets(value,99,stdin);
        for(int i=0;i<strlen(value);i++)
        {
            c=value[i];
            switch(s)
            {
                case 'a':if(c==' ' || c=='\n' || c=='\t');
                        else if(c>='0' && c<='9'){
                        s='b';
                        }
                        else{
                        s='g';
                        }
                break;
                case 'b':if(c>='0' && c<='9') s='b';
                        else if(c==' ' || c=='\n' || c=='\t')
                        s='e';
                        else if(c=='.')
                        s='c';
                        else
                        s='g';
                break;
                case 'c':if(c>='0' && c<='9') s='d';
                            else {
                            s='g';  
                            }
                break;
                case 'd':if(c>='0' && c<='9') s='d';
                else if(c==' ' || c=='\n' || c=='\t') s='e';
                else
                s='g';
                break;
                case 'e':if(c==' ' || c=='\n' || c=='\t')
                        s='e';
                        else 
                        s='g';
                case 'g': s='g';        
                break;
                default: printf("ERROR");        




            }

        }
    

    if(s=='e'||s=='b'|| s=='d')
    {
        printf("\nNo. given is in Acceptable formate\n");

    }
    else
    printf("\nGiven no. is not in correct format\n");

return 0;

}

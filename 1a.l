%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}
%%
[0-9][0-9]* {id++;printf("\n Identifier:");ECHO;}
[\+\-\*\/\=] {op++;printf("\n Operartor:");ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {;}
%%
int main()
{
printf("Enter the expression ");
yylex();
printf("\n Identifiers are:%d Operators are:%d\n",id,op);
printf("\n Expression is Valid\n");

return 1;
}
int yywrap()
{
return 1;
}
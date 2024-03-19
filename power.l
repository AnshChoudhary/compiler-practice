%{
#include <stdio.h>
#include <stdlib.h>
%}
%%

[0]*[1][0]+ { printf("The number is power of two."); }
[0-1]* { printf("The number is not power of two."); }
. { printf("Enter a binary number."); }

%%
int main() {
printf("\n Enter a binary number\n");
yylex();
}

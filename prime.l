%{
#include <stdio.h>
#include <stdlib.h>
int prime(int n);
%}
%% 
[0-9]+ { int n = atoi(yytext); prime(n); }
%%

int prime(int n) {
if (n%2 == 0) 
printf("the number is even\n");
else {
printf("the number is odd\n"); 
if (n <= 1)
    return 0; // Not prime
for (int i = 2; i * i <= n; i++) {
    if (n % i == 0)
        return 0; // Not prime
}
    return 1; // Prime
}
}

int main() {
printf("Enter a number: ");
yytext;
return 0;
}

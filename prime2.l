%{
#include <stdio.h>
#include <stdlib.h>
int prime(int n); // Function declaration for prime
%}

%% 
[0-9]+ { int n = atoi(yytext); prime(n); } // Call prime function with the parsed number
.      ; // Ignore any other characters

%%

int main() {
    printf("Enter a number: ");
    yylex(); // Call yylex to trigger the Flex scanner
    return 0;
}

int prime(int n) {
    if (n % 2 == 0) {
        printf("The number is even\n");
    } else {
        printf("The number is odd\n"); 
        if (n <= 1) {
            printf("The number is not prime\n");
        } else {
            int is_prime = 1; // Assume prime initially
            for (int i = 2; i * i <= n; i++) {
                if (n % i == 0) {
                    is_prime = 0; // Not prime
                    break;
                }
            }
            if (is_prime) {
                printf("The number is prime\n");
            } else {
                printf("The number is not prime\n");
            }
        }
    }
    return 0;
}

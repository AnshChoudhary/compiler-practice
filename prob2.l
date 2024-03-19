%{
#include <stdio.h>
int num_words = 0;
int num_chars = 0;
int num_lines = 0;
%}
%%

[ \t]+ { }
\n { num_lines++; } 
[a-zA-Z]+ { num_words++; num_chars += yyleng; }
"exit" {printf("Exiting program.\n"); return 0; }

%%
int main() {
yylex();
printf("Number of words= %d\n", num_words);
printf("Number of characters = %d\n", num_chars);
printf("Number of lines = %d\n", num_lines);
return 0;
}

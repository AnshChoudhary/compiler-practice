%{
#include <stdio.h>
int num_words = 0;
int num_chars = 0;
int num_lines = 0;
%}

%%
[ \t] { }
\n { num_lines++; } 
[a-zA-Z]{6,} { num_words++; num_chars = yyleng;  }
%%

int main() {
yylex();
printf("Number of words with length >= 6: %d\n", num_words);
printf("Number of characters in words with length >= 6: %d\n", num_chars);
printf("Number of lines: %d\n", num_lines);
return 0;
}


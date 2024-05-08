%{
int alpha_count = 0;
int non_alpha_count = 0;
%}

%%
[a-zA-Z]   { alpha_count++; }
[^a-zA-Z\n] { non_alpha_count++; }
\n         { non_alpha_count++; printf("Count of alphabets = %d, non-alphabets = %d\n", alpha_count, non_alpha_count); alpha_count = 0; non_alpha_count = 0; }

%%
int main() {
    yylex();
    return 0;
}


%{
#include <stdio.h>
%}

%%

[ \t\n]+    ;  

[a-zA-Z_][a-zA-Z0-9_]*[ \t]*=[ \t]*lambda[ \t]*\(?.*\)?.*  { printf("ACEPTA\n"); }

.    ;  

%%

int main() {
    int found = 0;
    while (yylex()) {
        found = 1;
    }
    if (!found) {
        printf("NO ACEPTA\n");
    }
    return 0;
}

int yywrap() {
    return 1;
}

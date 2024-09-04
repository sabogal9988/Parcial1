%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%%

lambda              { return LAMBDA; }
print               { return PRINT; }
[ \t\n]+            { /* Ignorar espacios y saltos de línea */ }
[a-zA-Z_][a-zA-Z0-9_]* {
                       yylval = strdup(yytext);
                       return VARIABLE;
                     }
[:=()]              { return yytext[0]; }
\*\*                { return POWER; }
[0-9]+              { yylval = atoi(yytext); return NUMBER; }

%%

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Uso: %s archivo.txt\n", argv[0]);
        return 1;
    }
    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror("Error al abrir el archivo");
        return 1;
    }
    yyin = file;
    int result = yyparse();
    fclose(file);
    return result;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void yyerror(const char *s);
int yylex();
%}

%token VARIABLE NUMBER LAMBDA PRINT

%%

input:
    statements
    ;

statements:
    statement
    | statements statement
    ;

statement:
    VARIABLE '=' LAMBDA VARIABLE ':' VARIABLE POWER NUMBER { printf("ACEPTA\n"); }
    | PRINT '(' VARIABLE ')' { printf("ACEPTA\n"); }
    ;

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
    yyparse();
    fclose(file);
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

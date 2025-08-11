/* Just like Unix wc */

/* Primera sección: declaraciones */
%{
#include <stdio.h>
#include <string.h>

int chars = 0;
int words = 0;
int lines = 0;
%}

%%
\n        { chars++; lines++; } // cuenta salto
.         { chars++; } //resto de caracteres
[^ \t\n\r\f\v]+ { words++; chars += strlen(yytext); } //cualquier secuencia de caracteres que esté separada por espacios o saltos de línea
%%

/* Tercera sección: funciones en C */
int main(int argc, char **argv)
{
    yylex();
    printf("%8d%8d%8d\n", lines, words, chars);
    return 0;
}

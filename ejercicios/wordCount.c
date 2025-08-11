#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Uso: %s archivo.txt\n", argv[0]);
        return 1;
    }

    FILE *fp = fopen(argv[1], "r");
    if (!fp) {
        perror("Error al abrir el archivo");
        return 1;
    }

    int c;
    int chars = 0, words = 0, lines = 0;
    int in_word = 0;

    while ((c = fgetc(fp)) != EOF) {
        chars++;

        if (c == '\n') {
            lines++;
        }

        if (isspace(c)) {
            in_word = 0;
        } else if (!in_word) {
            in_word = 1;
            words++;
        }
    }

    fclose(fp);

    printf("%8d%8d%8d %s\n", lines, words, chars, argv[1]);
    return 0;
}

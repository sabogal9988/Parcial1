#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFER_SIZE 1024

int countOccurrences(FILE *file, const char *key) {
    char buffer[BUFFER_SIZE];
    int count = 0;
    size_t key_len = strlen(key);

    while (fgets(buffer, BUFFER_SIZE, file) != NULL) {
        char *ptr = buffer;
        while ((ptr = strstr(ptr, key)) != NULL) {
            count++;
            ptr += key_len; // Mover el puntero para evitar contar la misma coincidencia varias veces
        }
    }

    return count;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Uso: %s <archivo> <palabra clave>\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        perror("Error al abrir el archivo");
        return 1;
    }

    const char *key = argv[2];
    int count = countOccurrences(file, key);

    printf("La palabra '%s' se repite %d veces en el texto.\n", key, count);

    fclose(file);
    return 0;
}

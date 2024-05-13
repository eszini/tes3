#include <stdio.h>
#include <stdarg.h>

// Función que suma un número variable de enteros
int sumar(int num_args, ...) {
    int suma = 0;
    va_list args; // Declara un objeto de tipo va_list
    va_start(args, num_args); // Inicializa el objeto va_list

    // Accede a los argumentos variables utilizando va_arg
    for (int i = 0; i < num_args; i++) {
        suma += va_arg(args, int);
    }

    va_end(args); // Finaliza el uso de va_list
    return suma;
}

int main() {
    // Llama a la función sumar con diferentes números de argumentos
    printf("Suma: %d\n", sumar(3, 1, 2, 3));
    printf("Suma: %d\n", sumar(5, 10, 20, 30, 40, 50));
    printf("Suma: %d\n", sumar(2, -5, 10));

    return 0;
}


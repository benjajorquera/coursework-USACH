#include <stdio.h>

int main() {

	// Cada año las ranas se cuadruplican y disminuye un 3/5 de su población.
	// Determinar cantidad de ranas después de un tiempo determinado
	
	// Recursivo
	int poblacionRanas(int ranas, int periodo) {
		
		// Caso base
		if (periodo == 0) return ranas;
		
		// Recursividad
		return poblacionRanas(4*ranas*2/5, periodo - 1);
	}

	int cantRanas = poblacionRanas(5, 5);

	printf("Utilizando recursvididad, la poblacion final de ranas despues de %d annos es: %d\n", 5, cantRanas);

	// Iterativo

	int ranasInicial = 20;
	int tiempo = 5;

	while(tiempo > 0){
		ranasInicial = 4*ranasInicial*2/5;
		tiempo--;
	}

	printf("Utilizando iteraciones, la poblacion final de bacterias despues de %d annos es: %d", 5, ranasInicial);

	return 0;
}
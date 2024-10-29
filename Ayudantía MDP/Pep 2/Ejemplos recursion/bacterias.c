#include <stdio.h>

int main(){

	// Cada hora las bacterias se cuadruplican y disminuye un 60% de su población.
	// Determinar cantidad de bacterias después de un tiempo determinado
	
	// Recursivo
	
	int poblacionBacterias(int cantBacterias, int horas){
	
		// Caso base:
		if (horas == 0) return cantBacterias;
		
		// Recursividad:
		return poblacionBacterias(cantBacterias*4*0.4, horas - 1);
	}
	
	int bacterias = poblacionBacterias(5, 5);
	
	printf("Utilizando recursvididad, la poblacion final de bacterias despues de %d horas es: %d\n", 5, bacterias);
	
	// Iterativo

	int bact = 5;
	int hrs = 5;

	while(hrs > 0){
		bact = 4*bact*0.4;
		hrs--;
	}

	printf("Utilizando iteraciones, la poblacion final de bacterias despues de %d horas es: %d", 5, bact);

	return 0;
}
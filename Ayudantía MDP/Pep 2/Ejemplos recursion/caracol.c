#include <stdio.h>

int main(){
	
	// En cuanto tiempo el caracol recorre 30 cm
	int calcularSegundos(int segundos, int distancia){
		
		// Caso base:
		if (distancia == 0) return segundos;
		
		// Recursividad:
		else {
			
			// Si los segundos son par:
			if (segundos % 2 == 0) return calcularSegundos(segundos + 1, distancia + 2);
			
			// Si los segundos son impar:
			else return calcularSegundos(segundos + 1, distancia - 3);
		}
	}
	
	int cantSegundos = calcularSegundos(0, 30);
	printf("El caracol recorre 30 cm en %d segundos\n", cantSegundos);
	
	// Iterativa:
	int segundos = 0;
	int distancia = 30;
	
	while(distancia > 0){
		if (segundos % 2 == 0){
			segundos++;
			distancia = distancia + 2;
		}
		else {
			segundos++;
			distancia = distancia - 3;
		}
			
	}
	
	printf("El caracol recorre 30 cm en %d segundos", segundos);
	
	return 0;
}
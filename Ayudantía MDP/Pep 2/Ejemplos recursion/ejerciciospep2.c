#include <stdio.h>

int main(){
	
	// Al final de cada día: 2% menos de zombies, 5 infectados por cada zombie.
	
	// Función recursiva:
	int cantZombies(int zInicial, int dias){
		
		// Caso base:
		if (dias == 0) return zInicial;
		// Llamada recursiva:
		zInicial = zInicial*0.98*5;
		return cantZombies(zInicial, dias - 1);
	}
	
	int z = cantZombies(10, 5);
	printf("Utilizando recursividad, la cantidad de zombies luego de %d dias: %d\n", 5, z);
	
	return 0;
}
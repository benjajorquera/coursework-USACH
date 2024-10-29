#include <stdio.h>

int main(){
	
	// Al final de cada día: 2% menos de zombies, 5 infectados por cada zombie.
	
	// Función recursiva:
	int zombies(int zInicial, int dias){
		// Caso base:
		if (dias == 0) return zInicial;
		return zombies(zInicial*0.98*5, dias - 1);
	}
	
	int z = zombies(2, 2);
	printf("Utilizando recursividad, la cantidad de zombies luego de %d dias: %d\n", 2, z);
	
	//Función iterativa:
	
	int cantZombies = 2;
	int periodo = 2;
	
	while(periodo > 0){
		cantZombies = cantZombies*0.98*5;
		periodo--;
	}
	
	printf("Utilizando iteraciones, la cantidad de zombies luego de %d dias: %d\n", 2, cantZombies);
	return 0;
}
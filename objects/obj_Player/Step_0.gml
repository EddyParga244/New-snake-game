/// @description Food and Movement
	
/*	*Determina la direccion
		- No permitir dar un giro de 180 grados
	*Checar colision con borde
		- Reiniciar juego al chocar con borde
	*Comer comida
		- Destruir la comida
		- Incrementar puntuacion
		- Aparecer mas comida
	*Actualizar Nuevo record si es necesario	*/
	
//Determinar la direccion
if (prev_Dir != 2) //Derecha
	if (keyboard_check(vk_right)) mv_Dir = 0;
if (prev_Dir != 3) //Arriba
	if (keyboard_check(vk_up)) mv_Dir = 1;
if (prev_Dir != 0) //Izquierda
	if (keyboard_check(vk_left)) mv_Dir = 2;
if (prev_Dir != 1) //Abajo
	if (keyboard_check(vk_down)) mv_Dir = 3;
	
//Colicion con serpiente o borde
if (System.Grid[# x/mv_Dist,y/mv_Dist] > 0 || 
    System.Grid[# x/mv_Dist,y/mv_Dist] == -2) {
	game_restart();
} 
//Comer comida
else if (System.Grid[# x/mv_Dist,y/mv_Dist] == -1){
	System.Grid[# x/mv_Dist,y/mv_Dist] = 0;
	length++;
	
	//Aparecer mas comida
	SpawnFood();
	
	//Actualizar nuevo record
	if (length > System.top_score){
		System.top_score = length;
	}
}
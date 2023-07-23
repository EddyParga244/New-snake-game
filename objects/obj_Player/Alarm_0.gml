/// @description Movement Tic

/*	*Decrementa cada elemento del Grid que ocupa la serpiente
		- Esto da la apariencia de que la serpiente se mueve
	*Establece el elemento del grid actual en la longitud de la serpiente
	*Condicion de Switch para mover la serpiente en la direccion deseada
	*Actualizar direccion previa
	*Continuar alarma de movimiento por delay	*/
	
//Reducir los valores de celdas por 1
with (System) {
	for (var xx = 0; xx < gridWidth; xx++){
		for (var yy = 0; yy < gridHeight; yy++){
			if (Grid[# xx,yy] > 0)
				Grid[# xx,yy]--;
		}
	}
}

System.Grid[# x/mv_Dist, y/mv_Dist] = length;

//Mover serpiente
switch (mv_Dir){
	case 0: //Derecha
		x += mv_Dist;
		break;
	case 1: //Arriba
		y -= mv_Dist;
		break;
	case 2: //Izquierda
		x -= mv_Dist;
		break;
	case 3: //Abajo
		y += mv_Dist;
		break;
}
prev_Dir = mv_Dir;

//Continuar ciclo
alarm[0] = mv_Delay;



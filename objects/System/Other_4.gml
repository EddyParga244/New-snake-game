/// @description Build the Grid

/*	*Aparece al jugador
	*Crea un nuevo grid
		- Width (Ancho)
		- Height (Alto)
		- Grid 
		- Unit Size (Tamaño de las celdas)
		- Grid Count (Numero de celdas)
	*LLena el borde con un valor de -2
	*(Script) Aparece la primera comida	*/
	
	if(room == rm_Main) {
		//Aparece al jugador
		instance_create_depth(32,32,-99,obj_Player);
		
		//Crear grid
		gridWidth = 20;
		gridHeight = 20;
		Grid = ds_grid_create(gridWidth,gridHeight);
		
		cell_size = obj_Player.sprite_width;
		num_cells = (gridWidth-2)*(gridHeight-2);
		
		//Identificar los bordes
		for (var xx = 0; xx < gridWidth; xx++){
			for (var yy = 0; yy < gridHeight; yy++){
				if (xx == 0 || yy == 0 || xx == gridWidth-1 || yy == gridHeight-1)
					Grid[# xx,yy] = -2;
			}
		}
		
		//Aparecer comida
		SpawnFood();
}
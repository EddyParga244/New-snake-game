/// Draw Grid

/*	*Itera por el grid entero
	*Dibuja los sprites de la serpiente, la comida y el grid
		-  0 = Espacio vacio
		- >0 = Sprite de serpiente
		- -1 = Sprite de comida
		- -2 = Borde del Grid    */
		
if (room = rm_Main){
	for (var xx = 0; xx < gridWidth; xx++){
		for (var yy = 0; yy < gridHeight; yy++){
			//Celda vacia
			if (Grid[# xx,yy] == 0)
				draw_sprite(spr_Cell, 0, cell_size*xx, cell_size*yy);
			//Serpiente
			else if (Grid[# xx,yy] > 0)
				draw_sprite(spr_Snake, 0, cell_size*xx, cell_size*yy);
			//Comida
			else if (Grid[# xx,yy] == -1)
				draw_sprite(spr_Cell, 1, cell_size*xx, cell_size*yy);
			//Borde
			else if (Grid[# xx,yy] == -2)
				draw_sprite(spr_Cell, 2, cell_size*xx, cell_size*yy);
		}
	}
}
		
		
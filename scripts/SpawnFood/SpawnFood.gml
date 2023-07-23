// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SpawnFood(){
	var width = System.gridWidth-3;
	var height = System.gridHeight-3; 
	var xx = 1 + irandom(width);
	var yy = 1 + irandom(height);
	
	if (System.Grid[# xx,yy] != 0)
		SpawnFood();
	else
		System.Grid[# xx,yy] = -1;
}
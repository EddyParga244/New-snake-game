/// @description Initialize Snake Variables

/*	*Variables de movimiento
		- Delay (Retraso)
		- Distance (Distancia)
		- Direction (Direccion)
		- Previous Direction (Direccion previa)
	*Length of Snake (Score) (Longitud de serpiente (puntuacion))
	*Trigger movement Alarm by Delay		*/

//Variables de movimiento
	
mv_Delay = System.game_speed;
mv_Dist = sprite_width;
mv_Dir = 0;

//Atributos de la serpiente
length =  0;

//Alarma de movimiento
alarm[0] = mv_Delay;
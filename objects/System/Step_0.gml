/// @description Check for Victory State

//Condicion de victoria
if (room == rm_Main){
	if(obj_Player.length == num_cells-1){
		show_debug_message("You win");
		show_message("You win")
		room_goto(rm_Start);
	}
}


//Funciones de debugueo

if (keyboard_key_press(vk_escape))
	game_restart();
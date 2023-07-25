/// @description

//	*On Release - Set Speed and change Room	*/
//Cambia la velocidad y cambia a la pantalla del menu al del juego
highlight = false;
if (position_meeting(mouse_x, mouse_y, id)){
	highlight = true;
	if (mouse_check_button_released(mb_left)){
		System.game_speed = game_speed;
		room_goto_next();
	}
}
/// @description Print Current/Best Scores

/*	*Set Color/Alignment
	*Display Current Score
	*Adjust Alignment
	*Display Best Score	*/
	
draw_set_color(c_lime);
draw_set_valign(fa_center);
draw_set_halign(fa_left);

if (instance_exists(obj_Player))
	draw_text(10, room_height-12, "Score: " + string(obj_Player.length));
	
draw_set_halign(fa_right);
draw_text(room_width-10, room_height-12, "Best: " + string(top_score));
draw_self();



#region Pause
if (global.pause){
	draw_set_alpha(.8);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	instance_create_layer(x,obj_player.y-100,"IMPORTANTE",obj_botao);
	instance_create_layer(x,obj_player.y,"IMPORTANTE",obj_botao);
	instance_create_layer(x,obj_player.y+100,"IMPORTANTE",obj_botao);
	draw_set_alpha(1);
	draw_set_color(c_white);
}
#endregion
switch(estado_boss){
	case 0:
		alarm[0] = 60;
	break;
	case 1:
		timer_c1_act = true;
		var _eye = instance_create_layer(x, y, layer, obj_eye);
		_eye.direction = point_direction(x,y,obj_player.x,obj_player.y);
		_eye.speed = 6;
		alarm[0] = 60;
	break;
	timer_c1 = 500;
	case 2:
		timer_c2_act = true;
		if(alarm[1] <= 0)
			alarm[1] = 120
		if(ativado)
			dir = lerp(dir,40,0.1)
	
		var _eye = instance_create_layer(x, y, layer, obj_eye);
		_eye.direction = point_direction(x,y,room_width/2 -dir,room_height/2);
		_eye.speed = 5;
		
		var _eye2 = instance_create_layer(x, y, layer, obj_eye);
		_eye2.direction = point_direction(x,y,room_width/2 +dir,room_height/2);
		_eye2.speed = 5;
		alarm[0] = 2;
	break;
	timer_c2 = 300;
	case 3:
		instance_create_layer(x + 200, y + 100, layer, obj_enemy3);
		instance_create_layer(x - 200, y + 100, layer, obj_enemy3);
	break;
}


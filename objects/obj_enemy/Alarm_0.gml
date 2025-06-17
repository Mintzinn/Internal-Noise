switch(estado_boss){
	case 0:
		alarm[0] = 60;
	break;
	case 1:
		var _eye = instance_create_layer(x, y, layer, obj_eye);
		_eye.direction = point_direction(x,y,obj_player.x,obj_player.y);
		_eye.speed = 5;
		alarm[0] = 60;
	break;
	case 2:
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
	case 3:
		alarm[0] = 60;
	break;
	case 4:
		alarm[0] = 60;
	break;
}


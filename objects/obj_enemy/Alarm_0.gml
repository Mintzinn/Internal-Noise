switch(estado_boss){
	case 0:
		alarm[0] = 60;
	break;
	case 1:
			if(alarm[2] <= 0){
				alarm[2] = 500;
			}
		var _eye = instance_create_layer(x, y, layer, obj_eye);
		_eye.direction = point_direction(x,y,obj_player.x,obj_player.y);
		_eye.speed = 6;
		alarm[0] = 60;
	break;
	case 2:
			if(alarm[2] <= 0){
				alarm[2] = 350;
			}
		if(alarm[1] <= 0)
			alarm[1] = 120
		if(ativado)
			dir = lerp(dir,15,0.1)
	
		var _eye = instance_create_layer(x, y, layer, obj_eye);
		_eye.direction = point_direction(x,y,room_width/2 -dir,room_height/2);
		_eye.speed = 5;
		
		var _eye2 = instance_create_layer(x, y, layer, obj_eye);
		_eye2.direction = point_direction(x,y,room_width/2 +dir,room_height/2);
		_eye2.speed = 5;
		alarm[0] = 2;
	break;
	case 3:
		if(alarm[2] <= 0){
			alarm[2] = 950
		}
		instance_create_layer(x + 200, y + 100, layer, obj_enemy3);
		instance_create_layer(x - 200, y + 100, layer, obj_enemy3);
		alarm[0] = 1000;
	break;

}



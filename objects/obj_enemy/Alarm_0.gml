switch(estado_boss){
	case 0:
		alarm[0] = 60;
	break;
	case 1:
		instance_create_layer(x, y, layer, obj_eye);
		alarm[0] = 60;
	break;
	case 2:
		instance_create_layer(x, y, layer, obj_eye);
		alarm[0] = 2;
	break;
	case 3:
		alarm[0] = 60;
	break;
	case 4:
		alarm[0] = 60;
	break;
}


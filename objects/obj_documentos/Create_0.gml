switch (room){
	case rm_quarto:
		switch (instance_nearest(obj_player.x, obj_player.y, obj_documento)){
			case 861:
				sprite_index = spr_01_laudo;
			break;
		}
	break;
}
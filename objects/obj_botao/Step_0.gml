vet = [obj_player.y-100,obj_player.y,obj_player.y+100]


if(global.pause){
	switch(y){
		case vet[0]:
			idd = 0;
		break;
		case vet[1]:
			idd = 1;
		break;
		//se der espaço é gay (  ou se apagar isso )
		case vet[2]:
			idd = 2;
		break;
	}
}else{
	instance_destroy();
}

if(!place_meeting(x,y,obj_hover))
	sprite_index = spr_botao
if (estado == "ativo") {
    var bala = instance_create_layer(x, y, layer, obj_ha);
	bala.speed = 5;
	
	if(x < room_width/2){
		bala.direcao = point_direction(x,y,x+1,y);
		bala.speed = 5;
		}
	else{
		bala.direcao = point_direction(x,y,x-1,y);
		bala.speed = -5;
		}

    alarm[1] = atirar_intervalo;
}
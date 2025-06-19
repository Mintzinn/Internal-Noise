if(estado_boss != 0){
	x = lerp(x, 256, 0.1);
	y = lerp(y, 62, 0.1);
	if (cria_clone = false and point_distance(x, y, 256, 62) <= 1){
		instance_create_layer(x, y, layer, obj_enemy_clone);
		cria_clone = true;
	}
}

if (estado_boss != 3){
	instance_destroy(obj_enemy3);
}


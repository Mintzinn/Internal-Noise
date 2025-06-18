if (timer_c2_act == true){
	timer_c2--;
}

if (timer_c1_act == true){
	timer_c1--;
}

if(estado_boss != 0){
	x = lerp(x, 256, 0.1);
	y = lerp(y, 32, 0.1);
}

if (timer_c1 <= 0){
	estado_boss = 2;
}

if (timer_c2 <= 0){
	estado_boss = 3;
}

if (estado_boss != 3){
	instance_destroy(obj_enemy3);
}



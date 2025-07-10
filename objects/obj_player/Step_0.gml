if (global.trans == false){
	scr_player();

	if (hp <= 0){
		room_restart();
	}
}

if (hp > hp_max){
	hp = hp_max;
}


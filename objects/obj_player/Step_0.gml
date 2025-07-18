if (global.trans == false){
	scr_player();

	if (hp <= 0){
		room_restart();
	}
}

if (hp > hp_max){
	hp = hp_max;
}

if (niv_ansi > niv_ansi_max){
	niv_ansi = niv_ansi_max;
}

if (alarm[0] <= 0){
	niv_ansi -= 1;
	alarm[0] = 60;
}

if (niv_ansi <=0){
	niv_ansi = 0;
}

if (dmg_cd > 0) {
    dmg_cd--;
}

if (velh != 0 or velv != 0){
	sprite_index = spr_player_walk;
}else{
	sprite_index = spr_player_iddle;
}
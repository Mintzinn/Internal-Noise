#region sla
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

if (room = rm_quarto){
	niv_ansi += 1;
}
#endregion

#region Musica caixa de som
if(instance_exists(obj_caixa_som)){
var dist = point_distance(x, y, obj_caixa_som.x, obj_caixa_som.y);

if (dist <= 40 && keyboard_check_pressed(ord("E"))) {
    if (!som_tocando) {
        som_id = audio_play_sound(snd_prata_puma, 1, true);
        som_tocando = true;
    } else {
        audio_stop_sound(snd_prata_puma);
        som_tocando = false;
        som_id = -1;
    }
}

if (som_tocando && audio_is_playing(som_id)) {
    var max_dist = 200;
    var volume = clamp(1 - (dist / max_dist), 0, 1);
    audio_sound_gain(som_id, volume, 0);
}


if (som_tocando == true && text_alpha < 1) {
    fading_in = true;
    text_alpha += fade_speed;
    if (text_alpha > 1) {
        text_alpha = 1;
    }
}

else if (som_tocando == false && text_alpha > 0) {
    fading_in = false;
    text_alpha -= fade_speed;
    if (text_alpha < 0) {
        text_alpha = 0;
    }
}
}
#endregion

#region Mudança de Salas ( e fade )


if(distance_to_object(instance_nearest(x,y,obj_porta)) < 40){
	if(keyboard_check_pressed(ord("E")))
		scr_fade(120,c_black);
	
		
}

#endregion

#region Documentos

if (distance_to_object(obj_documentos) <= 40){
	if (keyboard_check_pressed(ord("E"))){
		instance_create_layer(x, y, "documentos", obj_documentos)
	}
}

#endregion
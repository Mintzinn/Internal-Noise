if(!inicializar){

    scr_textos();
    inicializar = !inicializar;
	
}
wid = lerp(wid,64,0.1);
hei = lerp(hei,64,0.1);

if(mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)){
	if(caractere < string_length(texto[pagina])){
		caractere = string_length(texto[pagina]);
	}else{
		if(pagina < array_length(texto) - 1){
			caractere = 0;
			pagina ++;
		}
		else{
			global.trans = false;
			instance_destroy();

			if (name = "psico"){
				obj_player.niv_ansi += 50;
			}
			if (name = "npc1"){
				instance_create_layer(obj_player.x, obj_player.y, layer, obj_memoria);
			}
			if (name = "npc2"){
					obj_player.niv_ansi += 50;
					instance_destroy(obj_memoria);
		}
	}
}


}


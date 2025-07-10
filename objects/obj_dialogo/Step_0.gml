if(!inicializar){

    scr_textos();
    inicializar = !inicializar;
	
}


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
			instance_destroy(obj_contorno);
			if (name = "psico"){
				obj_player.hp += 10;
			}
		}
	}
	
	
}


if(!inicializar){

    scr_textos();
    inicializar = !inicializar;
	
}


if(mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter)){
	if(caractere < string_length(texto[pagina])){
		caractere = string_length(texto[pagina]);
	}else{
		if(pagina < array_length(texto) - 1){
			caractere = 0;
			pagina ++;
		}
		else
			instance_destroy();
	}
	
	
}


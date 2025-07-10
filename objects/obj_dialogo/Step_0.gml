if(inicio){
    image_xscale = lerp(image_xscale,19,0.05)
    if(image_xscale > 15)
        image_yscale = lerp(image_yscale,3,0.05)
}

if(!inicializar){

    scr_textos();
    inicializar = !inicializar;
	
}


if(mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter)){
    if(pagina < array_length(texto) - 1){
        caractere = 0;
        pagina ++;
    }
    else{

		instance_destroy();
        
    }
}


if (state == 0){
    timer += 5;
    if (timer >= duration){
		if(room == rm_fliperama){
			instance_create_layer(x,y,"Instances",obj_redirect,{});
		}
        room_goto(room_alvo);
        state = 1;
		
		
    }
}else{
    if (state == 1){
        timer -= 5;
        if (timer <= 0){
            draw_set_color(c_white);
			
            instance_destroy();
        }
    }
}

alpha = timer / duration;
depth = -100;
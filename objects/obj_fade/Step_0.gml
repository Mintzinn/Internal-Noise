if (state == 0){
    timer += 5;
    if (timer >= duration){
        room_goto(room_alvo);
        state = 1;
    }
}else{
    if (state == 1){
        timer -= 0.5;
        if (timer <= 0){
            draw_set_color(c_white);
            instance_destroy();
        }
    }
}

alpha = timer / duration;
depth = -100;
if (surface_exists(sombra_surface)){
    surface_set_target(sombra_surface);
    
    draw_clear_alpha(c_black, 0);
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    
    draw_circle(obj_escuro.x, obj_escuro.y, 75, false);
    draw_circle(obj_escuro.x, obj_escuro.y, 108, false);
    
    draw_set_alpha(1);

    surface_reset_target();
} else {
    sombra_surface = surface_create(room_width, room_height);
}

draw_surface(sombra_surface, 0, 0);
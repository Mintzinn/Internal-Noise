if (surface_exists(sombra_surface)){
    // Define a 'sombra_surface' como alvo para o desenho.
    surface_set_target(sombra_surface);
    
    // 1. Limpa a superfície com uma cor totalmente transparente.
    draw_clear_alpha(c_black, 0);
    
    // 2. Define a cor e a opacidade para o círculo escuro.
    draw_set_color(c_black);
    draw_set_alpha(0.5); // A opacidade da sombra. Ajuste este valor se precisar.
    
    // 3. Desenha os círculos escuros.
    draw_circle(obj_escuro.x, obj_escuro.y, 75, false);
    draw_circle(obj_escuro.x, obj_escuro.y, 108, false);
    
    // 4. Volta o alpha para o padrão.
    draw_set_alpha(1);

    // Reseta o alvo de desenho para a tela principal.
    surface_reset_target();
} else {
    // Se a surface não existe, ela é criada.
    sombra_surface = surface_create(room_width, room_height);
}

// Finalmente, desenha a surface na tela.
draw_surface(sombra_surface, 0, 0);
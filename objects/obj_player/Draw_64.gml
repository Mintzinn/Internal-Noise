draw_text(50,110, hp);
draw_text(50,130, niv_ansi);

// Aumenta a precisão do círculo para ficar mais redondo
draw_set_circle_precision(64); // Mais segmentos para suavidade

// Cria a superfície se não existir
var w = display_get_gui_width();
var h = display_get_gui_height();
if (!surface_exists(surf_mask)) {
    surf_mask = surface_create(w, h);
}

// Define raio mínimo e máximo
var radius_min = 200; // Raio final de 200 pixels
if (radius_max < 0) {
    radius_max = point_distance(0, 0, w, h); // Raio máximo cobre a tela
}

// Calcula o raio com base em niv_ansi (inverte a progressão)
var fracz = niv_ansi / niv_ansi_max; // niv_ansi_max = 100
var eased_fracz = fracz * fracz; // Quadrático para suavidade
var circle_r = lerp(radius_min, radius_max, eased_fracz); // Raio diminui de max para min

// Calcula alfa dinâmico para o fade do preto (máximo 0.7 para transparência)
var alpha = lerp(0, 0.8, 1.0 - fracz); // Alfa de 0 a 0.7 (70% opaco)

// Obtém a posição do jogador no espaço da GUI
var player_x = w * 0.5; // Valor padrão (centro da tela)
var player_y = h * 0.5;
if (instance_exists(obj_player)) {
    // Tenta coordenadas do mundo com câmera
    if (view_enabled && view_camera[0] != -1) {
        var cam = view_camera[0];
        var cam_x = camera_get_view_x(cam);
        var cam_y = camera_get_view_y(cam);
        var cam_w = camera_get_view_width(cam);
        var cam_h = camera_get_view_height(cam);
        player_x = (obj_player.x - cam_x) * (w / cam_w);
        player_y = (obj_player.y - cam_y) * (h / cam_h);
    } else {
        // Usa coordenadas brutas se não houver câmera
        player_x = obj_player.x;
        player_y = obj_player.y;
    }
    // Garante que o círculo fique dentro da tela
    player_x = clamp(player_x, circle_r, w - circle_r);
    player_y = clamp(player_y, circle_r, h - circle_r);
}

// Desenha na superfície
surface_set_target(surf_mask);
draw_clear_alpha(c_black, 0); // Limpa a superfície completamente

// Desenha retângulo preto com alfa dinâmico
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, w, h, false);

// Subtrai o círculo para criar a área visível
gpu_set_blendmode(bm_subtract);
draw_set_color(c_white);
draw_set_alpha(1);
draw_circle(player_x, player_y, circle_r, false); // Círculo segue o jogador
gpu_set_blendmode(bm_normal);

// Reseta a superfície
surface_reset_target();

// Desenha a superfície na tela
draw_surface(surf_mask, 0, 0);
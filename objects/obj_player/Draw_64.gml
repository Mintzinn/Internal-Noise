draw_text(50,110, hp);
draw_text(50,130, niv_ansi);

// Aumenta a precisão do círculo para máxima suavidade
draw_set_circle_precision(128);

// Cria a superfície se não existir
var w = display_get_gui_width();
var h = display_get_gui_height();
if (!surface_exists(surf_mask)) {
    surf_mask = surface_create(w, h);
}

// Define raio mínimo e máximo para o círculo "revelado"
var radius_min = 250; // Raio final de 200 pixels (a área clara)
if (radius_max < 0) {
    radius_max = point_distance(0, 0, w, h); // Raio máximo cobre a tela
}

// Calcula o raio com base em niv_ansi (inverte a progressão)
var fracz = niv_ansi / niv_ansi_max; // niv_ansi_max = 100
var eased_fracz = power(fracz, 3.5); // Easing personalizado
var circle_r = lerp(radius_min, radius_max, eased_fracz); // Raio da área "clara"

// Calcula alfa dinâmico para o fade do preto de fundo
var background_alpha = lerp(0, 0.8, 1.0 - fracz); // Alfa de 0 a 0.7 para a escuridão geral

// Obtém a posição do jogador no espaço da GUI
var player_x = w * 0.5;
var player_y = h * 0.5;
if (instance_exists(obj_player)) {
    var cam = view_camera[0];
    if (view_enabled && cam != -1) {
        var cam_x = camera_get_view_x(cam);
        var cam_y = camera_get_view_y(cam);
        var cam_w = camera_get_view_width(cam);
        var cam_h = camera_get_view_height(cam);
        player_x = (obj_player.x - cam_x) * (w / cam_w);
        player_y = (obj_player.y - cam_y) * (h / cam_h);
    } else {
        player_x = obj_player.x;
        player_y = obj_player.y;
    }
    player_x = clamp(player_x, circle_r, w - circle_r);
    player_y = clamp(player_y, circle_r, h - circle_r);
}

// Desenha na superfície
surface_set_target(surf_mask);
draw_clear_alpha(c_black, 0); // Limpa a superfície completamente

// Desenha o retângulo preto semi-transparente que será a base da escuridão
draw_set_color(c_black);
draw_set_alpha(background_alpha);
draw_rectangle(0, 0, w, h, false);

// --- Criando o efeito de "sombra com buraco" ---
gpu_set_blendmode(bm_subtract); // Usa o modo de mistura de subtração para "revelar"

// O centro da área visível. Desenhe um círculo branco sólido.
// Isso garante que a área dentro de 'circle_r' seja totalmente subtraída,
// ou seja, totalmente "clara" e sem sombra.
draw_set_color(c_white);
draw_set_alpha(1); // Alfa total para subtrair completamente
draw_circle(player_x, player_y, circle_r, false);

// Agora, para o fade da sombra, desenhamos múltiplos círculos adicionais
// que se estendem para fora de 'circle_r', com alfa decrescente.
// Isso cria a transição suave entre a área "clara" e a sombra total.
var fade_steps = 40; // Mais passos para um fade mais suave
var fade_range = 100; // O quão longe o fade se estende além do raio base

for (var i = 0; i < fade_steps; i++) {
    var frac_fade = i / fade_steps;

    // A intensidade da subtração diminui exponencialmente.
    // Quanto mais longe do 'circle_r', menos a luz "subtrai".
    // Isso cria a curva suave da borda da sombra.
    var subtract_intensity = 1.0 - power(frac_fade, 2); // Ajuste o expoente (2, 3, 4) para a curva do fade

    var current_radius = circle_r + (fade_range * frac_fade);

    // O alfa aqui controla a força da subtração para criar o fade.
    // Um valor baixo (ex: 0.05) cria um fade sutil e gradual.
    draw_set_alpha(subtract_intensity * 0.05); // Ajuste este valor para a densidade do fade
    draw_circle(player_x, player_y, current_radius, false);
}

gpu_set_blendmode(bm_normal); // Retorna ao modo de mistura normal

// Reseta a superfície
surface_reset_target();

// Garante que a superfície seja desenhada com transparência correta
draw_set_alpha(1);
draw_surface(surf_mask, 0, 0);
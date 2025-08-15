#region Sombra de ansiedade
draw_set_circle_precision(128);

var w = display_get_gui_width();
var h = display_get_gui_height();
if (!surface_exists(surf_mask)) {
    surf_mask = surface_create(w, h);
}

var radius_min = 250;
if (radius_max < 0) {
    radius_max = point_distance(0, 0, w, h);
}

var fracz = niv_ansi / niv_ansi_max;
var eased_fracz = power(fracz, 3.5);
var circle_r = lerp(radius_min, radius_max, eased_fracz);

var background_alpha = lerp(0, 0.8, 1.0 - fracz);

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

surface_set_target(surf_mask);
draw_clear_alpha(c_black, 0);

draw_set_color(c_black);
draw_set_alpha(background_alpha);
draw_rectangle(0, 0, w, h, false);

gpu_set_blendmode(bm_subtract);

draw_set_color(c_white);
draw_set_alpha(1);
draw_circle(player_x, player_y, circle_r, false);

var fade_steps = 40;
var fade_range = 100;

for (var i = 0; i < fade_steps; i++) {
    var frac_fade = i / fade_steps;

    var subtract_intensity = 1.0 - power(frac_fade, 2)

    var current_radius = circle_r + (fade_range * frac_fade);

    draw_set_alpha(subtract_intensity * 0.05);
    draw_circle(player_x, player_y, current_radius, false);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_set_alpha(1);
draw_surface(surf_mask, 0, 0);
#endregion

#region Pumapjl SonoTWS
if (text_alpha > 0) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);

    draw_set_colour(make_colour_rgb(255, 255, 255))
    draw_set_alpha(text_alpha);
    
    var _gui_width = display_get_gui_width();
    var _gui_height = display_get_gui_height();
    
    draw_text(_gui_width / 2, _gui_height - 10, "Prata - Pumapjl, SonoTWS");
    
    draw_set_alpha(1);
}
#endregion

#region Pause
if (global.pause){
	var _pos_butao_x = display_get_gui_width()/2;
	var _pos_butao_y_centro = display_get_gui_height()/2;
	var _escala = 3;
	draw_set_alpha(.8);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	var _largura_butao_escalada = sprite_get_width(spr_botao) * _escala;
	var _altura_butao_escalada = sprite_get_height(spr_botao) * _escala;
	for (var i = 0; i < array_length(menu_botoes); i++) {
		var _butao = menu_botoes[i];
		var _y_final = _pos_butao_y_centro + _butao.y;
		var _subimagem_botao = 0;
		var _x1 = _pos_butao_x - _largura_butao_escalada / 2;
		var _y1 = _y_final - _altura_butao_escalada / 2;
		var _x2 = _pos_butao_x + _largura_butao_escalada / 2;
		var _y2 = _y_final + _altura_butao_escalada / 2;
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _x1, _y1, _x2, _y2)){
			_subimagem_botao = 1;
			if (mouse_check_button_pressed(mb_left)){
				// Chama a ação do botão usando o script
				script_execute(_butao.acao_script);
			}
		}
		draw_sprite_ext(spr_botao, _subimagem_botao, _pos_butao_x, _y_final, _escala, _escala, 0, c_white, 1);
	}

	draw_set_alpha(1);
	draw_set_color(c_white);
}
#endregion
draw_text(50,110, hp);
draw_text(50,130, niv_ansi);

if (niv_ansi == niv_ansi_max) exit;

// cria surface se precisar
var w = display_get_gui_width();
var h = display_get_gui_height();
if (!surface_exists(surf_mask)) surf_mask = surface_create(w, h);

// calcula raio
if (radius_max < 0) radius_max = point_distance(0,0,w,h);
var fracz = niv_ansi / niv_ansi_max;
var circle_r = lerp(radius_min, radius_max, fracz);

// desenha na surface
surface_set_target(surf_mask);
draw_clear_alpha(c_black, 0);          // começa transparente

draw_set_color(c_black);
draw_set_alpha(0.9);                   // opacidade do preto (60%)
draw_rectangle(0,0,w,h,false);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_white);
draw_set_alpha(1);
draw_circle(w*0.5, h*0.5, circle_r, false);
gpu_set_blendmode(bm_normal);

surface_reset_target();

// desenha a surface sobre a tela
draw_surface(surf_mask, 0, 0);
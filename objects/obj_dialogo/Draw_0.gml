draw_self();

draw_set_color(c_white);




var _c = c_black;
draw_set_font(m5x7);




var _balao = draw_sprite_stretched(spr_balao,image_index,instance_nearest(obj_player.x,obj_player.y,obj_par_npc).x-22,instance_nearest(obj_player.x,obj_player.y,obj_par_npc).y-74,wid,hei);

var _textfx = string_copy(texto[pagina],1,caractere)



var _text = draw_text_ext_transformed(instance_nearest(obj_player.x,obj_player.y,obj_par_npc).x-18,instance_nearest(obj_player.x,obj_player.y,obj_par_npc).y-48,_textfx,10,96,0.6,0.6,0)





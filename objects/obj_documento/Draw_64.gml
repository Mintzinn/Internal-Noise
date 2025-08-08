draw_text(20,40,"Ativo: " + string(ativo))
draw_text(20,60,"Sprite: " + string(sprite))

if(ativo){

	draw_sprite_ext(sprite,image_index,display_get_gui_width()/2,50,0.4,0.4,0,image_blend, image_alpha);
}
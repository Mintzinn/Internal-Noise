draw_set_color(c_white);

var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;
draw_set_font(m5x7);





var _textfx = string_copy(texto[pagina],1,caractere)
var _text = draw_text_ext(obj_contorno.x+84, obj_contorno.y+280,_textfx,32,_guil-160);
draw_set_color(c_white);

var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 200;
var _c = c_black;
draw_set_font(m5x7);





var _textfx = string_copy(texto[pagina],1,caractere)
draw_text_ext(_xx + 142, _yy,_textfx,32,_guil-160);
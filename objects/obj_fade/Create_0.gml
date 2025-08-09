widht = display_get_gui_width();
height = display_get_gui_height();
duration = 60;
room_alvo = room;
color = c_black;

timer = 0;
alpha = 0;
state = 0;

porta = 0;
if(room == rm_sala_principal){
global.ultima_pos = [obj_player.x,obj_player.y];
}
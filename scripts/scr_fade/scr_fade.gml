function scr_fade(_duration,_color){
var _room_alvo = 0;
switch(room){
    case rm_quarto:
        _room_alvo = rm_sala_principal;
    break;
    

}




var _instace = instance_create_depth(0, 0, 0, obj_fade);
with (_instace){
    room_alvo = _room_alvo;
    duration = _duration;
    color = _color;
}


}
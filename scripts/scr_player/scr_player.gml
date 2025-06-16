// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player(){
	
var _left, _right, _down, _up;
	
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));
_down = keyboard_check(ord("S"));
_up = keyboard_check(ord("W"));
	
velv = (_down - _up) * vel;
velh = (_right - _left) * vel;
	
x += velh;
y += velv;

if (instance_exists(obj_enemy)){
	if (keyboard_check_pressed(ord("E"))){
		with(instance_nearest(x, y, obj_enemy))
			estado_boss = true;	

}
}





}
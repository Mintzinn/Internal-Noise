vel = 2;
velh = 0;
velv = 0;

move = function()
{
	var _left, _right, _down, _up;
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_down = keyboard_check(ord("S"));
	_up = keyboard_check(ord("W"));
	
	velv = (_down - _up) * vel;
	velh = (_right - _left) * vel;
	
	x += velh;
	y += velv;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player(){
	
	

	randomise();
	var _left, _right, _down, _up;
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	_down = keyboard_check(ord("S"));
	_up = keyboard_check(ord("W"));
	
	velv = (_down - _up) * vel;
	velh = (_right - _left) * vel;
	
	if (place_meeting(x + velh, y, obj_wall)){
            while (not place_meeting(x + sign(velh), y, obj_wall)){
                x += sign(velh);
            }
            velh = 0;
        }
        x += velh;

        if (place_meeting(x, y + velv, obj_wall)){
            while (not place_meeting(x, y + sign(velv), obj_wall)){
                y += sign(velv);
            }
            velv = 0;
        }
        y += velv;
		
	if (keyboard_check_pressed(ord("E"))){
		if (distance_to_object(obj_par_npc) < 30){
			instance_create_layer(x,y,layer,obj_dialogo,{delay: 4,name: instance_nearest(x, y, obj_par_npc).nome});
		}
	}
	
	
	if(velh > 0)
		image_xscale = 1
	else if(velh < 0)
		image_xscale = -1;
	
	
}
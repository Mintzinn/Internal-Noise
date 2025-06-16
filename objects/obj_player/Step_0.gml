move();

if (instance_exists(obj_enemy)){
	if (point_distance(x, y, obj_enemy.x, obj_enemy.y)){
		if (keyboard_check_pressed(ord("E"))){
			var _prox = instance_nearest(x, y, obj_enemy);
			
			with(_prox){
				estado_boss = true;	
			}
		}
	}
}
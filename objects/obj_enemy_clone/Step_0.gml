if (point_distance(x, y, x, y_final) >= 1 and clone_dist = false){
	y = lerp(y, y_final, .1);
}else{
	clone_dist = true;
}

var x_dist1 = 50;
var x_dist2 = room_width - 50;
var _dir = point_direction(x, y, x_dist1, y);
if (side == false){
	vel = lerp(vel, -max_vel, .07);
	if (distance_to_point(x_dist1, y) <= 5){
		side = true;
	}
}else{
	vel = lerp(vel, max_vel, .07);
		if (distance_to_point(x_dist2, y) <= 5){
			side = false;
		}
}
velh = vel;
x += velh;

scr_dano()

if (vida <= 0){
	obj_enemy.estado_boss = 0;
	instance_destroy();
}



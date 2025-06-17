var dx = obj_player.x - x;
var dy = obj_player.y - y;
var dist = point_distance(x, y, obj_player.x, obj_player.y);

// Normaliza a direção

dir_x = dx / dist;
dir_y = dy / dist;

// Velocidade da bala
vel = 5;
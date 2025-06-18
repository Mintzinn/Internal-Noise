//trocar os ataques
var _estado_anterior = estado_boss;
var _random = ceil(random_range(.5, 3));

dir = dir_ini;
if (_random != _estado_anterior){
	estado_boss = _random;
}
else{
	alarm[2] = 1;
}
ativado = false;
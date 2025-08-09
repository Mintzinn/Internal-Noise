if(ativo = true){
	global.trans = true;
	alpha = lerp(alpha, 1, .1);
}else{
	alpha = lerp(alpha, 0, .1);
	global.trans = false;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dano(){
	
	if(place_meeting(x,y,obj_hover))
	time_hit --;
	else{
		if(time_hit < 60)
			time_hit ++ ;
		}
	if(time_hit <= 0){
		hit = true;
		vida --;
		time_hit = 60;	
	}
	
	if(hit){
		rodar = true;
		rando = irandom_range(-1,1)*15;
		hit = false;
	}
	
	if(rodar)
		image_angle = lerp(image_angle,rando,0.4)
	else
		image_angle = lerp(image_angle,0,0.1)
		
	if(image_angle == rando)
		rodar = false
			
		
}
switch (estado) {
    case "subindo":
        if (y > y_alvo) {
            y -= 0.5; // sobe devagar
        image_alpha += 0.05; // aumenta visibilidade
        image_alpha = clamp(image_alpha, 0, 1);
        } else {
            y = y_alvo;
            estado = "ativo";
            alarm[1] = atirar_intervalo;
            alarm[2] = tempo_ativo;
			image_alpha = 1;
        }
        break;

    case "descendo":
        if (y < y_ground) {
            y += 0.5;
        image_alpha -= 0.05; // diminui visibilidade
        image_alpha = clamp(image_alpha, 0, 1);
        } else {
            y = y_ground;
            estado = "escondido";
			obj_enemy.alarm[0] = 30;
			image_alpha = 0;
			obj_enemy.timer_c3 = 0;
        }
        break;
	case "ativo":
		y = lerp(y,obj_player.y,0.05)
	break;
}

if (estado = "escondido"){
	obj_enemy.estado_boss = 1;
}

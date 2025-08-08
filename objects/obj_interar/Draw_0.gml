draw_self(); // Desenha o próprio sprite

// Checa distância para o player
if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist < 40) { // distância para mostrar a tecla
        draw_sprite(spr_tecla_E, 0, x, y - 15);
    }
}
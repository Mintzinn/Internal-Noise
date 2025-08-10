if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist < 40) {
        draw_sprite(spr_tecla_E, 0, x, y - 15);
    }
}
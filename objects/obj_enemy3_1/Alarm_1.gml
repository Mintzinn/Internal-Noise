if (estado == "ativo") {
    var bala = instance_create_layer(x, y, layer, obj_ha);
    bala.direcao = direcao_tiro;
    alarm[1] = atirar_intervalo;
}
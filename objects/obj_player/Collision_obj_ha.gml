if (dmg_cd == 0) {      // só pode tomar dano se o cool‑down acabou
    hp -= 1;            // tira 1 de vida
    dmg_cd = room_speed / 4;   // 0,25 s de invencibilidade (15 quadros a 60 fps)
}
global.pause = false;
global.trans = true;

vel = 2;
velh = 0;
velv = 0;

hp_max= 20;
hp = hp_max;
dmg_cd = 0;

niv_ansi_max = 100;
niv_ansi = niv_ansi_max;

alarm[0] = 60;

radius_min    = 200;
radius_max    = -1;
surf_mask     = -1;

som_tocando = false;
som_id = -1;

text_alpha = 0;
fade_speed = 0.02;
fading_in = false;

 //Se eu quiser dar funcao pros botoes: acao_script: scr_acao_botao_superior
menu_botoes = [
    { y: -200},
    { y: 0},
    { y: 200}
];
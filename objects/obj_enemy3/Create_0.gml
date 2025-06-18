// Estados: "escondido", "subindo", "ativo", "descendo"
estado = "escondido";

// Posição inicial no chão
y_ground = y;
y_alvo = y - 16; // o quanto ele vai subir

// Controle de tempo
tempo_ativo = 950; // quanto tempo vai ficar ativo (1.5s)
atirar_intervalo = 60; // 0.75 segundos em room_speed 60
alarm[0] = room_speed * 1; // esperar 2s pra começar

image_alpha = 0; // invisível no início

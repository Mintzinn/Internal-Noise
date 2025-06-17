// Estados: "escondido", "subindo", "ativo", "descendo"
estado = "escondido";

// Posição inicial no chão
y_ground = y;
y_alvo = y - 32; // o quanto ele vai subir

// Controle de tempo
tempo_ativo = 450; // quanto tempo vai ficar ativo (1.5s)
atirar_intervalo = 60; // 0.75 segundos em room_speed 60
alarm[0] = room_speed * 2; // esperar 2s pra começar

// Direção do tiro: 1 = direita, -1 = esquerda
direcao_tiro = 1; // você pode mudar isso quando criar o inimigo

image_alpha = 0; // invisível no início
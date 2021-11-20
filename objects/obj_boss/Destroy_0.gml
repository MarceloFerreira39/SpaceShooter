/// @description Insert description here
// You can write your code in this editor


//Criando a animação de morte
layer_sequence_create("Boss_derrota", x , room_height / 2 - 32, sq_boss_morte);

//aumentando o numero de inimigos mortos
global.total_inimigos++;

ganhando_pontos(200);
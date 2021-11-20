/// @description Insert description here
// You can write your code in this editor


//Criando a explosão
instance_create_layer(x, y, "Tiros", Obj_inimigo_explosao);

//aumentando o numero de inimigos mortos
global.total_inimigos++;
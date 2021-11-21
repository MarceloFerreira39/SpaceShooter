/// @description Mouse clicou
// You can write your code in this editor

audio_play_sound(sfx_click_menu, 1, 0);


//Criando a transição

var _transicao = instance_create_layer(0, 0, "player", obj_transicao);
_transicao.destino = destino;
/// @description Checando se o player existe
// You can write your code in this editor


//Checanbdo se o player NÂo existe E se eu ainda NÂO criei a minha sequência 
//E o level não foi completo
if (!instance_exists(obj_player) && !gameover_seq && !level_completo)
{
	//Criando minha sequencia 
	//Craindo apenas UMA sequencia
	gameover_seq = layer_sequence_create("Sequences", room_width /2, room_height /2, sqc_gameover);
	
	
	//parar a musica do level 
	audio_stop_all();
	//Criar o audio do game over
	audio_play_sound(sfx_lose2, 1, 1);
	
}




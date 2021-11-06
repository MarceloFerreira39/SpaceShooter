/// @description Checando se o player existe
// You can write your code in this editor


//Checanbdo se o player NÂo existe E se eu ainda NÂO criei a minha sequência 
if (!instance_exists(obj_player) && gameover_seq == noone)
{
	//Criando minha sequencia 
	//Craindo apenas UMA sequencia
	gameover_seq = layer_sequence_create("Sequences", room_width /2, room_height /2, sqc_gameover);
	
}

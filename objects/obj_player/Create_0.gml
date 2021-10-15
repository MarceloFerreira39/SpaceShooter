/// @description Iniciando Variaveis
// You can write your code in this editor

velocidade = 5;


atirando = function()
{
	var fire = keyboard_check_pressed(vk_space);
	if(fire)
	{
		//Criando objeto tiro!
		instance_create_layer(x, y  - sprite_height/3 , "Tiros", obj_player_tiro01);
	
	}

}
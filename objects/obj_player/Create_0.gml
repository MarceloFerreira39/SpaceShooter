/// @description Iniciando Variaveis
// You can write your code in this editor

velocidade = 5;

espera_tiro = room_speed;

level_tiro = 1;

atirando = function()
{
	var fire = keyboard_check(vk_space);
	//y do meu tiro
	var y_tiro = y - sprite_height/3;
	
	if(fire && alarm[0] == -1)
	{
		//Ativando o Alrme
		alarm[0] =espera_tiro;
	
		//Criar o tiro na hora que aperta espaço
		//e depois so atirar novamente em um segundo
		//Meu codigo de criar o tiro
		
		//Criar um condição que altere para atirar dependendo do level do tiro
		//Tiro level 1
		if(level_tiro == 1)
		{
			instance_create_layer(x, y_tiro , "Tiros", obj_player_tiro01);
		}
		
		//Tiro level 2
		else if (level_tiro == 2)
		{
			
			//Segundo tiro da asa esquerda
			instance_create_layer(x - 60, y_tiro, "Tiros", obj_player_tiro02);
			
			//Segundo tiro da asa Direita
			instance_create_layer(x + 60, y_tiro, "Tiros", obj_player_tiro02);
			
		}
	}

}


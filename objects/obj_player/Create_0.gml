/// @description Iniciando Variaveis
// You can write your code in this editor

velocidade = 5;

espera_tiro = room_speed;

level_tiro = 1;

	

tiro2 = function()
{
	var y_tiro = y - sprite_height/4;
	//Criando tiro asa Esquerda
	//Fazendo o tiro da esquerda ir para a esquerda
	var tiro_01 = instance_create_layer(x - 60, y_tiro, "Tiros", obj_player_tiro02);
	//Mandando tiro ir para esquerda
	tiro_01.hspeed = -5;
			
	//Criando tiro asa direita
	var tiro_02 = instance_create_layer(x + 60, y_tiro, "Tiros", obj_player_tiro02);
	tiro_02.hspeed = 5;
}

tiro4 = function()
{
	var y_tiro = y - sprite_height/4;
	var direcao = 75;
	repeat(3)
	{
		var meu_tiro = instance_create_layer(x , y_tiro + 10 , "Tiros", obj_player_tiro01);
		//definir a direção dele 
		meu_tiro.direction = direcao;
	
		//fazer o tiro apontar para direção que esta indo
		meu_tiro.image_angle = meu_tiro.direction -90;
		
		//Aumentar a direção em 15
		direcao+= 15;
	}

}

atirando = function()
{
	var fire = keyboard_check(vk_space);
	//y do meu tiro
	
	
	if(fire && alarm[0] == -1)
	{
		var y_tiro = y - sprite_height/4;
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
		else if(level_tiro == 2)
		{
			tiro2();	
		}
		else if(level_tiro == 3)
		{
			instance_create_layer(x, y_tiro , "Tiros", obj_player_tiro01);
			tiro2();
		}
		
		//Tiro level 4
		else if(level_tiro == 4)
		{
	
			tiro4();
		}	
		
		//Tiro do level 5
		else if(level_tiro == 5)
		{
			tiro2();
			tiro4();
		}

	}

}





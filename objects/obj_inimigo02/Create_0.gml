/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chance = 30;

//valor de pontos que vale o inimigo
pontos = 20;


//Criando a variavel de controle , para saber se pode mover para os lados
posso_mover_para_lado = true;

atirando = function()
{
	//Checando se já entrou na room
	if(y >= 0)
	{
		
		instance_create_layer(x , y + sprite_height/3 , "Tiros", obj_tiro2_inimigo);
		//Som de tiro
		audio_play_sound(sfx_laser1, 3, 0);
	}

}

//Iniciando o alarm no tempo de 1 e 3 segundos
alarm[0] = irandom_range(1,3) * room_speed;


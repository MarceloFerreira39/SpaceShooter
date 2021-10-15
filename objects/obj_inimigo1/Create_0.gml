/// @description Insert description here
// You can write your code in this editor

vspeed = 3;

atirando = function()
{
	if(y >= 0)
	{
		instance_create_layer(x -3, y + 20, "Tiros", obj_inimigo_tiro1);
	}

}

//Iniciando o alarm no tempo de 1 e 3 segundos
alarm[0] = irandom_range(1,3) * room_speed;
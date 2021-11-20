/// @description Insert description here
// You can write your code in this editor

vspeed = 3;


//Chance de dropar o item é 20%
chance = 20;


//Valor de pontos do inimigo
pontos = 10; 

//Iniciando o alarm no tempo de 1 e 3 segundos
alarm[0] = irandom_range(1,3) * room_speed;


//Checando se um inimigo não esta colidindo com outro inimigo
//se eu colidir com alguem eu me destruo
if(place_meeting(x, y, obj_inimigo01))
{
	//não executando o evento destroi
	instance_destroy(id , false);
}


atirando = function()
{
	if(y >= 0)
	{
		instance_create_layer(x -3, y + 20, "Tiros", obj_tiro1_inimigo);
	}

}


///@method dropa_item(chance_de_dropar_em_porcentagem)
dropa_item = function(_chance)
{
	var valor = random(100);
	
	//Se o valor for menor do que a chance ele cria o item 
	if(valor < _chance && y > 96)
	{
		//Criando o item 
		instance_create_layer(x, y, "Tiros", obj_power_up);
	}
}



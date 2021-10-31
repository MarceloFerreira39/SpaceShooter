/// @description Insert description here
// You can write your code in this editor



//Criando uma chance entre 1 e 100 para decidir qual UP
chance = random(100);
//Se chance for 90 ou mais UP Tiro
//Se chance for 45 ou mais UP Velocidade
//Se não  UP espera tiro

//fazendo ele se mover 
speed = 2;
direction = irandom_range(0, 359);


//Iniciando alarme
alarm[0] = room_speed;

//Dependendo da chance a cor vai ser diferente
if(chance >= 90)
{
	//Se chance for 90 ou mais UP Tiro
	cor = c_red;
}
else if(chance >= 45)
{
	//Se chance for 45 ou mais UP Velocidade
	cor = c_yellow;	
}
else
{
	//Se não  UP espera tiro
	cor = c_blue;
}



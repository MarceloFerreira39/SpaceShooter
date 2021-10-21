/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Mudando a direção depois que eu me movi X pixels
//achar a forma de ver qual era a minha posição inicial
//checando se eu movi N pixels para a direita e para esquerda 

if(x > xstart + 60 || x < xstart - 60)
{
	//Eu devo inverter a minha velocidade horizontal
	hspeed *= -1;
}

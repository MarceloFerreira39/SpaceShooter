/// @description Insert description here
// You can write your code in this editor


//Iniciando o alarme
alarm[0] = room_speed;

//Começando Invisível 
image_alpha = 0;
primeiro_tiro = false;

vida = 10;

escala = 1;
aumento_escala = 0.01;

//Checando se eu colidi com outros minions
if(place_meeting(x, y, obj_boss_minion))
{
	y -= 128;
}
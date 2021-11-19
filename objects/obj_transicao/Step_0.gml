/// @description Insert description here
// You can write your code in this editor

//Deixando a tela escura se eu ainda não troquei de room
if(troca_room == false)
{
	 alpha += 0.02;
}
else 
{
	//troquei de room, eu diminuo o alpha
	alpha -= 0.02;
}

if(alpha <= 0)
{
	instance_destroy();	
}

//Checar se a tela esta totalmente escurA , ou seja , o alpha é 1 ou maior 
//mudar de room se eu ainda naõ troquei de room 
if(alpha >= 1 && troca_room ==false)
{
	room_goto(rm_inicio);
}
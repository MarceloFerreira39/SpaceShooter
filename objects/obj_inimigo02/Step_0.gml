/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//checando se já passou de 1/3 da tela (360)
if(y > room_height/3 && posso_mover_para_lado == true) 
{
	//posso mover para o lado não muda de direção
	 posso_mover_para_lado = false;
	
	// Se x for maior que 1920 / 2 (960)
	if(x > room_width/2 )
	{
		show_debug_message("Estou na Direita");
		//Fazendo ir para Esquerda
		hspeed = -4;
		
	}
	else
	{
		show_debug_message("Estou na Esquerda");
		//Fazendo ir para a Direita
		hspeed = 4;
		
	}
}
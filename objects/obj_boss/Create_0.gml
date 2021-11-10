/// @description Insert description here
// You can write your code in this editor

/*
Estado 1 = Parado usando o tiro 2
Estado 2 = Movimentando usando o tiro 1
Estado 3 = Parado intercalando entre o tiro 1 e 2

(Estado 4)
Estado especial 1 = Ficar invulneravel enquanto cria dois minions , para recuperar vida.
*/


//Inicio da battle boss
estado_atual = choose("estado 1", "estado 2", "estado 3");

delay_tiro = room_speed /2; //Meio segundo (room speed por padrão são 60 freames)
espera_tiro = 0;

delay_estado = room_speed * 10; // 10 segundos
espera_estado = delay_estado;

velocidade_horizontal = 4;

tiro_02 = function()//Função tiro numero 2
{
	instance_create_layer(x,y + 80,"Tiros", obj_tiro2_inimigo);
}


///@method tiro_01(true_direita_false_esquerda)
tiro_01 = function(_direita)//Função de tiro 1
{
	if(_direita)
		{
			var _posx = 160;
			
		}
		else
		{
			var _posx = - 160
		}
		
		instance_create_layer(x + _posx, y + 10, "Tiros", obj_tiro1_inimigo);
}

movimento_boss = function()
{

	//Indo para direita
	x += velocidade_horizontal;
	
	//Invertendo a velocidade ao tocar no canto da tela
	
	
	if(x >= 1632 || x<= 288)
	{
		//Inverta a velocidade horizontal
		velocidade_horizontal *= -1;
	}
	
}

estado01 = function()
{
	
	//Diminuindo o valor do espra tiro
	espera_tiro--;
	//estado 1
	//Criar tiro 2 SE a espera do tiro for menor ou =  zero
	if(espera_tiro <= 0 )
	{
		
		tiro_02();
		
		//Atirei, vou mandar ele esperar
		espera_tiro = delay_tiro;

	}
}


estado02 = function() {
	//Codigo estado02
	
	//Indo para direita
	movimento_boss();
	
	//Diminuindo a espera do tiro
	espera_tiro--;

	//Criar tiro 1 nos dois canhões quando a espera do tiro for menor que Zero o  igual.
	if(espera_tiro <= 0)
	{
	
		tiro_01(false);//esquerda
		tiro_01(true);//Direita
		
		//Atirei , vou mandar ele esperar
		espera_tiro = delay_tiro * 1.4;
	}
	
}
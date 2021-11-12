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


//Iniciando sistema de vida
vida_max = 2000;
vida_atual = vida_max


//Função para desenhar a barra de vida , com 30 pixel de altura
//Convertendo o valor de vida maxima do boss entre um numero de Zero à 100
//Vida atual dividida por vida maxima, vai retornar um valor entre zero e um , enquanto a vida atual for 
//menor ou igula  a vida maxima , depois ao multiplicar esse resultado por 100
//dai recebe um valor entre 100 e 0
vida_boss = function()
{
	var boss;
	boss = (vida_atual/ vida_max) * 100;
	draw_healthbar(200, 20,1080, 30, boss, c_black, c_maroon, c_lime, 0, true, true);
}

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
		espera_tiro = delay_tiro +10;

	}
}


estado02 = function() 
{
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
		espera_tiro = delay_tiro * 1.3;
	}
	
}

estado03 = function() 
{
		//estado 3
	movimento_boss();
	
	espera_tiro--;
	//Criando o tiro 2 do canhão 
	if(espera_tiro <= 0)
	{
		tiro_02();
		
		espera_tiro = delay_tiro + 20; //30 segundo + 20
	}
	if(espera_tiro == delay_tiro )//Meio segundo para o Zero , que é quando ele cria o tiro
	{
		//Criando tiro 1 esquerda 
		tiro_01(false);
		//Tiro 1 direita
		tiro_01(true);
	}
	
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
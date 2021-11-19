/// @description Iniciando 

//ramdomizando o jogo 
randomize();
//Iniciando o alarme em 1 segundo
alarm[0] = room_speed;


//Iniciando o sistem de pontos
pontos = 0;

//Iniciando o sistema de level
level = 1;

//Quantos pontos eu preciso para o proximo level
proximo_level = 100;

//Variavel de controle para o game over
gameover_seq = noone;

criar_boss = true;

//Criando um método para criar pontos 
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * level;
	
	if(pontos >= proximo_level)
	{
		level++;
		
		//Dobrando o valor do proximo level
		proximo_level *= 2;
		
		/*
		1 = 0 - 10
		2 = 100 - 20
		3 = 200 - 30
		4 = 400 - 40
		5 = 800 - 50
		6 = 1600 - 60
		7 = 3200 - 70
		8 = 64400 -80
		9 = 12800 - 90 
		10 = 25600 - 100
		
		*/
		
	}
	
}


//Criando o metodo para gerar inimigos
cria_inimigo = function()
{
	//Definindo a posição x e y do inimigo
	var xx = irandom_range(64, 1888);
	var yy = irandom_range(-96, -1504 - (level * 800));

	//Criando o inimigo com base no level
	//Escolhendo a chance de crair um inimigo mais forte dependente  do level
	var chance = random_range(0, level);
	
	//Defininindo qual inimifgo criar
	var inimigo = obj_inimigo01;

	//se o valor da chance for mairo do que level? (2) criar o inimigo 2
	if(chance > 2)
	{
		inimigo = obj_inimigo02
	}
	
	//Criando o inimigo na posição definida
	instance_create_layer(xx, yy, "Inimigos", inimigo);
}





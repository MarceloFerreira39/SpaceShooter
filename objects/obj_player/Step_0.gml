/// @description Movimentendo o player AWSD
//Quando Usar o ord ... a letra é maiuscula se não, não funciona.


var up, down, left, right, shield;
//LEFT
left = keyboard_check(ord("A"));
//RIGHT
right =keyboard_check(ord("D"));
//UP
up = keyboard_check(ord("W"));
//DOWN
down = keyboard_check(ord("S"));
//Fire
shield = keyboard_check_pressed(vk_lshift)
//Shild

//Criando o escudo do player
if(shield)
{
	var escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
	
	//Eu sou o seu alvo
	escudo.alvo = id;
}


//Movendo o Y com base no resultado da conta , para saber a direção de Y depois multiplicar o resultado
y += (down - up) * velocidade;

//Movendo o X com base no resultado da conta , para saber a direção de X depois multiplicar o resultado
x += (right - left) * velocidade;


//Criando o tiro
atirando();

//Fazer com que o level do tiro suba sempre que eu apertar a setinha pra cima 
//Fazer com que level do tiro suba ao paertar a setinha pra cima 
//Apenas se o level fro menor que cinco
if(keyboard_check_pressed(vk_up) && level_tiro < 5)
{

	level_tiro++;
	//espera_tiro/= level_tiro;
}
else if(keyboard_check_pressed(vk_down)&& level_tiro > 1)
{
	level_tiro--;
}


//Diminuir a espera do tiro se aperteia a setinha para esquerda (10%)
//Se a espera do tiro for maior que 20
if(keyboard_check_pressed(vk_left) && espera_tiro > 20)
{
	
	espera_tiro *= 0.9
}
if(keyboard_check_pressed(vk_right))
{
	//Aumenta a espare do tiro se apertar a setinha para direita (10%)
	espera_tiro *= 1.1;	
}


show_debug_message(vida)


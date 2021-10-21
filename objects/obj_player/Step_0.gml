/// @description Movimentendo o player AWSD
//Quando Usar o ord ... a letra é maiuscula se não não funciona.


var up, down, left, right;
//LEFT
left = (keyboard_check(ord("A")));
//RIGHT
right =(keyboard_check(ord("D")));
//UP
up = (keyboard_check(ord("W")));
//DOWN
down = (keyboard_check(ord("S")));
//Fire




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
//Se a espera do tiro for maior que 10

if(keyboard_check_pressed(vk_left ))
{
	espera_tiro *= 0.9;	
}
else if(keyboard_check_pressed(vk_right))
{
	espera_tiro *= 1.1;
}

//Aumenta a espare do tiro se apertar a setinha para direita (10%)


show_debug_message(level_tiro);

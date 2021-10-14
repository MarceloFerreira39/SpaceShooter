/// @description Movimentendo o player AWSD
//Quando Usar o ord ... a letra é maiuscula se não não funciona.


var up, down, left, right, fire;
//LEFT
left = (keyboard_check(ord("A")));
//RIGHT
right =(keyboard_check(ord("D")));
//UP
up = (keyboard_check(ord("W")));
//DOWN
down = (keyboard_check(ord("S")));
//Fire
fire = (keyboard_check_pressed(vk_space));
//Movendo o Y com base no resultado da conta , para saber a direção de Y depois multiplicar o resultado
y += (down - up) * velocidade;
//Movendo o X com base no resultado da conta , para saber a direção de X depois multiplicar o resultado
x += (right - left) * velocidade;

if(fire)
{
	//Criando objeto tiro!
	var inst = instance_create_depth(x, y, -20, obj_player_tiro01);
	
}
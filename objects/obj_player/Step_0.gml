/// @description Movimentendo o player AWSD
//Quando Usar o ord ... a letra é maiuscula se não não funciona.


var up, down, left, right
//LEFT
left = (keyboard_check(ord("A")));
//RIGHT
right =(keyboard_check(ord("D")));
//UP
up = (keyboard_check(ord("W")));
//DOWN
down = (keyboard_check(ord("S")));

x -= left;
x += right;
y -= up;
y += down;

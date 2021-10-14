/// @description Movimentendo o player AWSD

//LEFT
if(keyboard_check(ord("A")))
{
	x -= velocidade;
}

//RIGHT
if(keyboard_check(ord("D")))
{
	x += velocidade;
}

//UP
if(keyboard_check(ord("W")))
{
	y -= velocidade;
}

//DOWN
if(keyboard_check(ord("S")))
{
	y += velocidade;
}
/// @description Insert description here
// You can write your code in this editor

//Movendo a tela

view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//Diminuindo o valor do Screenshake
//multiplicando por 0,95 ...perdendo 5% por step
shake *= .9;

//Se o valor do shake for menor que 0.5 ele se destroi

if(shake < 0.5)
{
	instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor


//ficando Visivel em 1 segundo Se eu ainda não estou visivel
if(image_alpha < 1 && primeiro_tiro == false)
{
	image_alpha += 1 / room_speed ;
}

//Fazendo ele tornar o aumento enquanto ele for negativo Se ele form maior igual a menor 1.5
//Faznedno também invertero sinal da escala se ela for menor do que 0.5
if(escala > 1.5)
{
	//invertendo o aumento  da escala
	aumento_escala *= -1;
}
else if(escala < 0.5)
{
	aumento_escala *= -1;
}

//Aumentando a escala pelo valor de aumento
escala += aumento_escala;
//diminuindo  a escala enquanto ela for menor do que 0.5


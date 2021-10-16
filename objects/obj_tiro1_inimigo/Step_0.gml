/// @description Insert description here
// You can write your code in this editor
//Diminuindo a escala do tiro

//Lerp é uma função de aproximação, eu faço meu valor chegar a outro valor
//Lerp valor de porcentagem de aproximação 

//step1 = 1 - 10 = 5 - 10
//step2 = 5 - 10 = 7,5 - 10
//step3 7,5 - 10 = 8,75 - 10

//Fazendo meu Xscale chegar no valor original que é 1

image_xscale = lerp(image_xscale, 1, .3);
image_yscale = lerp(image_yscale, 1, .3);

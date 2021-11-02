/// @description Insert description here
// You can write your code in this editor


//Diminuindo o Image index (escudo) se ele ainda não esta no Zero
image_index--;

//fica mais trnasparente

image_alpha -= .2;

if (image_index < 0)
{
	
	instance_destroy();
}

//Reiniciando o Alarm em 1 segundo
alarm[0] = room_speed;


/// @description Insert description here
// You can write your code in this editor






if(image_index <= 0)
{
	
	instance_destroy();
}
else
{
	//Diminuindo o Image index (escudo) se ele ainda não esta no Zero
	image_index--;
	//fica mais trnasparente
	image_alpha -= .2;

}
//Reiniciando o Alarm em 1 segundo
alarm[0] = room_speed;


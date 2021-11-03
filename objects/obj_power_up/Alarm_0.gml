/// @description Insert description here
// You can write your code in this editor

//Diminuir o alfa em .1
image_alpha -=  .1;

// Me destruido se o meu alfa for menor ou igual a .5

if(image_alpha <= 0)
{
	instance_destroy(id, false);	
}

//repertir o alarme em um segundo
alarm[0] = room_speed;
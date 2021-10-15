/// @description Insert description here
// You can write your code in this editor
//Criando o tiro se eu já estou paparecendo na tela 

if(y >= 0)
{
	instance_create_layer(x -3, y, "Tiros", obj_inimigo_tiro1);
}



//reiniciando o alarme

alarm[0] = room_speed * random_range(1, 3);


/// @description Insert description here
// You can write your code in this editor
//Criando o tiro 

instance_create_layer(x, y, "Tiros", obj_inimigo_tiro1);

//reiniciando o alarme

alarm[0] = room_speed * random_range(1, 3);


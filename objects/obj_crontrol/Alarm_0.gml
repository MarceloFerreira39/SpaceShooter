/// @description Criando os inimigos


var xx = irandom_range(64, 1920);
var yy = irandom_range(-96, -1024);
instance_create_layer(xx, yy, "Inimigos", obj_inimigo01)

//reiniciando o alarm e um segundo
alarm[0] = room_speed;
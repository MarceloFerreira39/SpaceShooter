/// @description Insert description here
// You can write your code in this editor

//Eu vou me desenhar
draw_self();

//Desenhando o brilho

/*
tiro 16 x 24
brilho 57 x 102
*/
//Alterando como vídeo trata as cores
gpu_set_blendmode(bm_add);

draw_sprite_ext(brilho, image_index, x, y, image_xscale * 1.2, image_yscale * 1.2, image_angle, cores, .5);
//voltando ao normal 
gpu_set_blendmode(bm_normal);
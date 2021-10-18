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



draw_sprite_ext(spr_brilho_tiro1, image_index, x, y, image_xscale * .8, image_yscale * .8, image_angle, cores, .3);
//voltando ao normal 
gpu_set_blendmode(bm_normal);
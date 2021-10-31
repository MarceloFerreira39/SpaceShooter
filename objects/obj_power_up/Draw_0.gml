/// @description Insert description here
// You can write your code in this editor

//Me desenhar
draw_self();


//Fazendo o efeito
gpu_set_blendmode(bm_add);
//Seguindo com as cores de acordo com o powerUp
draw_sprite_ext(sprite_index, image_index, x, y , image_xscale + .3, image_yscale + .3, image_angle, cor, image_alpha - .2);

//Zerando o efeito
gpu_set_blendmode(bm_normal);
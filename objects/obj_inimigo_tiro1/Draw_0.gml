/// @description Insert description here
// You can write your code in this editor


draw_self();


//Criando luminosidade
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_inimigo1, image_index, x, y, image_xscale , image_yscale, image_angle, cores, .3);
gpu_set_blendmode(bm_normal);
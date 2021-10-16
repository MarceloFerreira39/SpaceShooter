/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_inimigo1, image_index, x, y , image_xscale * 1.1 , image_yscale * 1.1 , image_angle, cores, .3);
gpu_set_blendmode(bm_normal);
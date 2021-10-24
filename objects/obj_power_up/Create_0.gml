/// @description Insert description here
// You can write your code in this editor

image_xscale = 3;
image_yscale = 3;

//Criando uma chance entre 1 e 100 para decidir qual UP
chance = random(100);
//Se chance for 90 ou mais UP Tiro
//Se chance for 45 ou mais UP Velocidade
//Se não  UP espera tiro

//fazendo ele se mover 
speed = 2;
direction = irandom(-179);

//criando as cores
cores = choose(c_green, c_aqua, c_fuchsia, c_navy);
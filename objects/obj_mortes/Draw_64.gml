/// @description Insert description here
// You can write your code in this editor



	//Definindo a fonte 
	draw_set_font(fnt_pontos);
	draw_text(640, 400, string(global.total_mortes));
	//centralizando texto
	draw_set_halign(fa_center);
	//Resetando a fonte
	draw_set_font(-1)

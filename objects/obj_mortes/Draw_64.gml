/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(obj_transicao))
{
	//Definindo a fonte 
	draw_set_font(fnt_pontos);
	draw_text(610, 400, string(global.total_mortes));
	//Resetando a fonte
	draw_set_font(-1)
}
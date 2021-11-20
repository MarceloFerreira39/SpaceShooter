/// @description Insert description here
// You can write your code in this editor



//Desenhar a maior pontuação Se o objeto transição NÂO existe.

if(!instance_exists(obj_transicao))
{
	//Definindo a fonte 
	draw_set_font(fnt_pontos);
	draw_text(610, 140, string(global.max_pontos));
	//Resetando a fonte
	draw_set_font(-1)
}

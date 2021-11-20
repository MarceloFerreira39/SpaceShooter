/// @description Insert description here
// You can write your code in this editor


//Desenhar a maior pontuação Se o objeto transição NÂO existe.


//Definindo a fonte 
draw_set_font(fnt_pontos);
draw_text(640, 270, string(global.total_inimigos));
//centralizando texto
draw_set_halign(fa_center);
//Resetando a fonte
draw_set_font(-1)

//Pegando 5% dos pontos e incremente esses 5% enquanto ele for menor que max_pontos

if(pontos < global.max_pontos)
{
	//Aumenta o valor em 5% do max_pontos
	var _incrementa_pontos = global.max_pontos * 0.005;
	pontos += _incrementa_pontos;
	
	
}


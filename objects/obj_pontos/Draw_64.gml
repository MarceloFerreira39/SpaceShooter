/// @description Insert description here
// You can write your code in this editor



//Desenhar a maior pontuação Se o objeto transição NÂO existe.


draw_set_color(c_yellow);
//Definindo a fonte 
draw_set_font(fnt_pontos);

//variavel segurando o valor dos pontos 
var _pontos = round(pontos);
draw_text(640, 140, string(_pontos));
//centralizando texto
draw_set_halign(fa_center);
//Resetando a fonte
draw_set_font(-1)
	
//Fazendo pontos chegar ao valor até o max_pontos
//Se pontos for maior que max pontos aumenta o valor dele 	
//pontos = lerp(pontos, global.max_pontos, 0.07);

//Pegando 5% dos pontos e incremente esses 5% enquanto ele for menor que max_pontos

if(pontos < global.max_pontos)
{
	//Aumenta o valor em 5% do max_pontos
	var _incrementa_pontos = global.max_pontos * 0.005;
	pontos += _incrementa_pontos;
	
	
}




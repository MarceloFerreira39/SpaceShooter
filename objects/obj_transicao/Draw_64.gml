/// @description Insert description here
// You can write your code in this editor

//Desenhado um retangulo preto na tela 

//Pegando informações da GUI
//Deixando o retangulo preto 
//Desenhando o retangulo com o valor do meu alpha
draw_set_alpha(alpha);
draw_set_color(c_black);
var x2 = display_get_gui_width();
var y2 = display_get_gui_height();
draw_rectangle(0 ,0 , x2, y2, false);
//Resetando o meu alpha
draw_set_alpha(1);
draw_set_color(c_white);
/// @description Vida do player
// You can write your code in this editor

//var altura_gui = display_get_gui_height();


//Desenhando uma navesinha para ser a vida 
//Desenhando a representção de vida como naves
//repetindo o desenho na quantidade de vida que eu tenho
//Desenhando uma vida do lado da outra

var multiplicador = 0;
var espaco = 40;
repeat(vida)
{
	//Vida ficando + 10 no eixo x(Uma do lado da outra)
	// 1 = 40 + 20 * 0 = 40
	// 2 = 40 + 20 * 1 = 60
	// 3 = 40 + 20 * 2 = 80
	draw_sprite_ext(spr_player, 0, 40 + espaco * multiplicador, 40, .25, .25, 0, c_white, 0.5);
	
	//Depois de desenhar aumente o valor do multiplicador
	multiplicador++;
}

//resetando o multiplicadort
multiplicador = 0;
//Desenhano o escudo
repeat(escudos)
{
	draw_sprite_ext(spr_escudo, 2, 40 + espaco * multiplicador, 80, .2, .2, 0, c_white, 0.5);

	multiplicador++;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake){
	//Criando o screenshake 
	var screen = instance_create_layer(0, 0, "Escudo", obj_screenshake);
	screen.shake = _shake;

}
//Funcção para ganhando_pontos(_pontos) 

function ganhando_pontos(_pontos)
{
	if(instance_exists(obj_control))
	{
		obj_control.ganha_pontos(_pontos);
	}
}

//Destruindo a sequiancia 
function destroi_seq()
{
	//Tentando pegar a sequencia da minha layer
	var elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(elementos[0]);
	
	
	//Criando o Boss
	instance_create_layer(960, 256, "Boss", obj_boss);
}


//Criando a sequencia do player 
function cria_seq()
{
	if(instance_exists(obj_player))
	{
		layer_sequence_create("Sequences",obj_player.x, obj_player.y, sq_level_end );
		
		//Destruindo o player
		instance_destroy(obj_player, false);
		
		
		
		//Impedindo que o control crie o game over
		//Avisando que o level foi completo 
		if(instance_exists(obj_control))
		{
			obj_control.level_completo = true;
			
		}
		
	}
	
}

function cria_transicao()
{
	var _transicao = instance_create_layer(0, 0, "Player", obj_transicao);
	_transicao.destino = rm_inicio;
	
}


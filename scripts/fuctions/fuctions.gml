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
		obj_control.ganha_pontos(100);
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
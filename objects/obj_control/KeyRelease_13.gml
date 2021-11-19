/// @description Reiniciando o Jogo
// You can write your code in this editor

//Reiniciando apenas se o player já morreu

if(gameover_seq)
{
	//criando o objeto transição co o destino da room inicio
	var _transicao = instance_create_layer(0, 0, "player", obj_transicao);
	_transicao.destino = rm_inicio;
	
	//Checando se os pontos são a maior pontuação
}


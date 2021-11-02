/// @description Garantir que roda por último!

//Porém se o alvo for none ou se o alvo não existe.
if(!alvo || !instance_exists(alvo))//Se não teiver alvo
{
	instance_destroy();
	
}

//Você vai ter que ficar na mesma posição que seu alvo
//Conferiri se meu alvo existe no jogo 

x = alvo.x;
y = alvo.y;
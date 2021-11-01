/// @description Garantir que roda por último!

//Porém se o alvo for none , se mata!
if(!alvo)//Se não teiver alvo
{
	instance_destroy();
	
}

//Você vai ter que ficar na mesma posição que seu alvo

x = alvo.x;
y = alvo.y;
/// @description Insert description here
// You can write your code in this editor


//perdendo vida

if(vida > 0)
{	
	vida--;
	
	//Diminuindo a Transparência
	image_alpha -= 0.08;
	//Aumentando a velocidade da variação da imagem em 10%
	aumento_escala *= 1.2;

}
else
{
	//Morrendo
	instance_destroy();
}

//Destruindo o tiro 
instance_destroy(other);
/// @description Insert description here
// You can write your code in this editor


// So perde dano se eu não estou no estado 4
if(estado_atual != "estado 4")
{
	//Perdendo 1 de vida
	if(vida_atual > 0)
	{
	
		vida_atual--;
	}
	else
	{
		instance_destroy();
	}
	instance_destroy(other);
}
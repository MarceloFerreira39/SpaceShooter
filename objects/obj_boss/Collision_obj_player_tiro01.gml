/// @description Insert description here
// You can write your code in this editor

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
/// @description destruindo o inimigo

instance_create_layer(x, y ,"Inimigos", Obj_inimigo_explosao);


//rodando o metodo de ganhar pontos 

//Checando se o objeto control existe
if(instance_exists(obj_crontrol))
{
	if(obj_inimigo01 && room >= 0)
	{
		
		obj_crontrol.ganha_pontos(pontos);
	}
}

//Dropando o Item 
dropa_item(chance);

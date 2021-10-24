/// @description Criando os inimigos

//repetindo o mesmo codigo
//Criando inimigo
//verificando se NÂO existe inimigo para criar!
if(!instance_exists(obj_inimigo01))
{
	
	var repetir = 10 * level;
	//Rodar esse codigo apenas se não houver inimigos!
	repeat(repetir)
	{
		cria_inimigo();
	}
}


//reiniciando o alarm e um segundo
alarm[0] = room_speed * 5;
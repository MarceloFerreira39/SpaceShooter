/// @description Criando os inimigos

//repetindo o mesmo codigo
//Criando inimigo
//verificando se NÂO existe inimigo para criar!
if(!instance_exists(obj_inimigo01))
{
	
	var repetir = 10 * level;
	//Rodar esse codigo apenas se não houver inimigos!
	//Só criar inimigos se eu ainda não cheguei no level 10
	if(level < 10)
	{
		repeat(repetir)
		{
			cria_inimigo();
		}
	}
	else if(instance_exists(obj_player))
	{
		//Cria a animação de entrada no boss 
		//garantir que so cria uma vez
		if(criar_boss == true)
		{
			layer_sequence_create("Boss_entrada", 960 , 544 - 32, sq_boss);
			
			//avisar que não posso mais criar o boss
			criar_boss = false;
			
			//Parando de tocar a música
			audio_stop_all();
		}	
		
	}

	
}


	


//reiniciando o alarm e um segundo
alarm[0] = room_speed * 5;
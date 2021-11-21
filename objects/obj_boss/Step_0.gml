/// @description Insert description here
// You can write your code in this editor





//Alterando os estados
troca_estado();


//iniciando Estado 1
if(estado_atual == "estado 1")
{
	sprite_index = spr_boss;
	estado01();

}

else if(estado_atual =="estado 2")
{
	sprite_index = spr_boss;
	estado02();
}
else if(estado_atual =="estado 3")
{
	sprite_index = spr_boss;
	estado03();

}

else if(estado_atual =="estado 4")
{
	estado04();		
}


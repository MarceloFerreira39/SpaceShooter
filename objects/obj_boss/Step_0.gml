/// @description Insert description here
// You can write your code in this editor


//debug do estado atual

show_debug_message(estado_atual);
//Alterando os estados
//Diminuindo a espera do estado
espera_estado--;
if(espera_estado <= 0)
{
	//Vou escolher outro estado
	estado_atual = choose("estado 1", "estado 2", "estado 3");
	
	//Fazendo o espera estado ter um valor alto de novo(6 segundo neste caso)
	espera_estado = delay_estado;
}

//iniciando Estado 1
if(estado_atual == "estado 1")
{
	estado01();

}

else if(estado_atual =="estado 2")
{
	estado02();
}
else if(estado_atual =="estado 3")
{
	
	//estado 3
	movimento_boss();
	
	espera_tiro--;
	//Criando o tiro 2 do canhão 
	if(espera_tiro <= 0)
	{
		tiro_02();
		
		espera_tiro = delay_tiro *1.5;
	
	
	
	//Criando tiro 1 esquerda 
	tiro_01(false);
	//Tiro 1 direita
	tiro_01(true);
	}

}
else if(estado_atual =="estado 4")
{

}

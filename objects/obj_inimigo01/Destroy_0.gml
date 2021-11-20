/// @description destruindo o inimigo

instance_create_layer(x, y ,"Inimigos", Obj_inimigo_explosao);


//rodando o metodo de ganhar pontos 

//Checando se o objeto control existe


ganhando_pontos(pontos);

//Dropando o Item 
dropa_item(chance);

//Criando a Screenshake
screenshake(6);

//aumentando o numero de inimigos mortos
global.total_inimigos++;

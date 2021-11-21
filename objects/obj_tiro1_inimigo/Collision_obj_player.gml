/// @description Destruir tiro

//Se destruidno
instance_destroy();

//Tocando o som para indicar colisão
audio_play_sound(sfx_zapp, 1, 0);

//Tirando vida do player;

other.perde_vida()
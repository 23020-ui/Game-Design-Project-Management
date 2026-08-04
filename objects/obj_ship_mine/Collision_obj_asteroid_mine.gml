lives -= 1;

with(obj_game){
	alarm[1] = room_speed;
}
instance_destroy();
audio_play_sound(snd_hurt, 1, false)

repeat(20){
	direction = irandom_range(0,359);
	instance_create_layer(x,y,"Instances",obj_debris);
}
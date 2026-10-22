if(irandom_range(0,5) == 0){
	instance_create_layer(x,y, "Instances", obj_powerup);
}

score += 10;
instance_destroy();
audio_play_sound(snd_hurt, 1, false)

var _xx = x, _yy = y
if(sprite_index == spr_asteroid_large){
	global.cameraShake = 4;
	with(obj_particles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 12);
	
	repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid_mine);
		new_asteroid.sprite_index = spr_asteroid_medium;
	}
} else if (sprite_index == spr_asteroid_medium){
	global.cameraShake = 2;
	with(obj_particles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 8);
	
	repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid_mine);
		new_asteroid.sprite_index = spr_asteroid_small;
	}
} else {
	global.cameraShake = 1;
	with(obj_particles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 4);
}
audio_play_sound(snd_hurt, 1, false);

global.cameraShake = 4;

switch(object_index){
	case obj_raider: score += 15; break;
	case obj_hunter: score += 30; break;
	case obj_brute: score += 50; break;
}
image_blend = c_red
var _xx = x, _yy = y, _ib = image_blend;
with(obj_particles){
	part_particles_create_colour(partSys,_xx,_yy, partTypeShipDebris,_ib, 10);
}


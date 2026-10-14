///@description create_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator

var _gun_type = -1;
if(argument_count > 3) _gun_type = argument[3];

function create_bullet(_dir,_spd,_fac,_creator,_gun_type){

	//CHOOSE GUN TYPE
	switch(_gun_type){
	
		case powerups.three_bullets:
			var inst = instance_create_layer(x,y, "Instances", obj_bullet_mine);
			initialise_bullet(_dir,_spd,_fac, id, inst);
	
		case powerups.two_bullets:
			audio_play_sound(snd_shooting,1,false);	
		
			var _sep = 12;

			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90), "Instances", obj_bullet_mine);
			initialise_bullet(_dir,_spd,_fac, id, inst);
		
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90), "Instances", obj_bullet_mine);
			initialise_bullet(_dir,_spd,_fac, id, inst);
			break;
		

		
		case powerups.four_bullets:
	
			break;
		
		case powerups.star_bullets:
	
			break;
		
		case powerups.laser_bullets:
		
			break;
		
		default:	
			audio_play_sound(snd_shooting,1,false);
			var inst = instance_create_layer(x,y, "Instances", obj_bullet_mine);
			initialise_bullet(_dir,_spd,_fac, id, inst);
			break;
	}
}




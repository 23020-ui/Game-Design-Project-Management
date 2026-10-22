if(keyboard_check(vk_left)){
	image_angle = image_angle + 5;
}
if(keyboard_check(vk_right)){
	image_angle = image_angle - 5;
}
if (keyboard_check(vk_up)){
	motion_add(image_angle, 0.05)
	
	//Particle FX
	exhaustCounter++;
	
	if(exhaustCounter >= 4){
		var len = sprite_height*.4
		var _xx = x - lengthdir_x(len, image_angle), _yy = y - lengthdir_y(len, image_angle);
		with(obj_particles){
			part_particles_create(partSys,_xx,_yy, partTypeExhaust, 1);
		}
	}
}
if (keyboard_check_pressed(vk_space)){
	create_bullet(image_angle, bulletSpd, faction, id, guns);
}
move_wrap(true,true,sprite_width/2);


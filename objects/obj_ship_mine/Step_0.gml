if(keyboard_check(vk_numpad1)){
	image_angle = image_angle + 5;
}
if(keyboard_check(vk_numpad3)){
	image_angle = image_angle - 5;
}
if (keyboard_check(vk_numpad5)){
	motion_add(image_angle, 0.05)
}
if (keyboard_check_direct(vk_space)){
	audio_play_sound(snd_shooting,1, false);
	var inst = instance_create_layer(x,y, "Instances", obj_bullet_mine);
	inst.direction = image_angle;
}
move_wrap(true,true,sprite_width/2);
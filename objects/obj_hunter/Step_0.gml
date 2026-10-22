event_inherited();

//If player exists
if(!instance_exists(obj_ship_new)) exit;

//If player is inside range
if(point_distance(x,y, obj_ship_new.x,obj_ship_new.y) <250){
	//Turn to look at player ship
	var new_angle = point_direction(x,y, obj_ship_new.x,obj_ship_new.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	if(point_distance(x,y, obj_ship_new.x,obj_ship_new.y) <150){
		speed -= 0.05;
	} else {
		speed += 0.01
	}
	
	//Enemy Bullets
	bulletCounter++;
	if(bulletCounter >= 60){
		create_bullet(image_angle,8,faction,id);
		bulletCounter = 0;
	}
} else {
	speed = lerp(speed,originalSpeed,0.1);
}
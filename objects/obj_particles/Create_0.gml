partSys = part_system_create();

//Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, spr_ship_exhaust, false, false, false);
part_type_size(partTypeExhaust, .4, .4, 0.05, 0);
part_type_colour3(partTypeExhaust, c_white, c_aqua, c_black);
part_type_alpha3(partTypeExhaust, 1,1,0);
part_type_life(partTypeExhaust, 20,20);

//Exhaust - Enemy
partTypeEnemyExhaust = part_type_create();
part_type_sprite(partTypeEnemyExhaust, spr_ship_exhaust, false, false, false);
part_type_size(partTypeEnemyExhaust, .4, .4, 0.05, 0);
part_type_colour3(partTypeEnemyExhaust, c_orange, c_red, c_black);
part_type_alpha3(partTypeEnemyExhaust, 1,1,0);
part_type_life(partTypeEnemyExhaust, 20,20);


//Debris
partTypeAsteroidDebris = part_type_create();
part_type_sprite(partTypeAsteroidDebris, spr_asteroid_debris, false, false, true);
part_type_life(partTypeAsteroidDebris,60,80);
part_type_alpha3(partTypeAsteroidDebris,.8,.8,0);
part_type_direction(partTypeAsteroidDebris,0,359,0,false);
part_type_orientation(partTypeAsteroidDebris,0,359,1,false,false);
part_type_speed(partTypeAsteroidDebris,2,2.4,-0.02,0);

partTypeShipDebris = part_type_create()
part_type_sprite(partTypeShipDebris, spr_ship_debris, false, false, true);
part_type_size(partTypeShipDebris,.5,1,0,0);
part_type_life(partTypeShipDebris,60,80);
part_type_alpha3(partTypeShipDebris,.6,.6,0);
part_type_direction(partTypeShipDebris,0,359,0,false);
part_type_orientation(partTypeShipDebris,0,359,1,false,false);
part_type_speed(partTypeShipDebris,3,4,-0.05,0);
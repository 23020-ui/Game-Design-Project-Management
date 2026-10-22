partSys = part_system_create();

//Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, spr_ship_exhaust, false, false, false);
part_type_size(partTypeExhaust, .4, .4, 0.05, 0);
part_type_colour3(partTypeExhaust, c_white, c_aqua, c_green);
part_type_alpha3(partTypeExhaust, 1,1,0);
part_type_life(partTypeExhaust, 20,20);

//Debris


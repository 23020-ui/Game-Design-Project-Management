///@desription initialise_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator

function initialise_bullet (_dir,_spd,_fac, _creator, inst) {
		with(inst){
				direction = _dir;
				if(object_index == obj_bullet_mine) speed = _spd;
				faction = _fac;
				creator = _creator;
		}
}

switch (state) {
	case "chase":
	if not instance_exists(obj_o_esqueleto) break;
	
	if place_meeting (x, y, obj_o_esqueleto) and obj_o_esqueleto.state != "roll" and attacked == false {
		create_hitbox(x, y, self, sprite_index, knockback, 1, damage, image_xscale);
		attacked = true
	}
	if attacked == true {
		vspeed = -1;
	}
	break;
}
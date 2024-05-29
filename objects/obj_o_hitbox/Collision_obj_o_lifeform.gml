if creator == noone or creator == other or ds_list_find_index(_hit_objects, other) != -1
{
exit;
}
other.hp -= damage;

if instance_exists(obj_o_esqueleto)
{
	if creator.object_index == obj_o_esqueleto && other.hp <= 0 
	{
	obj_o_esqueleto.kills += 1;
	}
	
	if other.object_index == obj_o_esqueleto {
		
		add_screenshake(6, 10);
		
		if other.hp <= 0 {
			var number = sprite_get_number(spr_s_skeleton_bones_strip10);
			for (var i=0; i<number; i++) {
				var bx = other.x + random_range(-8, 8);
				var by = other.y + random_range(-24, 8);
				var bone = instance_create_layer(bx, by, "Instances", obj_o_skeleton_bone);
				bone.direction = 90 - (image_xscale * random_range(30, 60));
				bone.speed = random_range(3, 10);
				bone.image_index = i;
				if i == 5 bone.image_angle = 130;
			}
		}
	}
	else
	{
		other.alarm[0] = 120;
	}
}

ds_list_add(_hit_objects, other);
show_debug_message(other.hp);
other.state = "knockback";
other.knockback_speed = knockback * image_xscale;

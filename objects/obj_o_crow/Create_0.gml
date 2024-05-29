event_inherited();
state = "chase";
hp= 1;
max_hp = hp;
image_speed = 0.2;
hspeed = random_range(2, 3);
if instance_exists(obj_o_esqueleto) {
	hspeed *= sign(obj_o_esqueleto.x - x);
}
image_xscale = sign(hspeed);
damage = 2;
attacked = false;
experience = 2;
knockback = 4;
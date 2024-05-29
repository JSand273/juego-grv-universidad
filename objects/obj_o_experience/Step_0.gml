if not instance_exists(obj_o_esqueleto) exit;
var dir = point_direction(x, y, obj_o_esqueleto.x, obj_o_esqueleto.y);
var acceleration = 0.25;
motion_add(dir, acceleration);

var max_speed = 6;
if speed > max_speed
{
	speed = max_speed;
}
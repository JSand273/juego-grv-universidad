var enemy_count = instance_number(obj_o_enemy_parent);

if instance_exists(obj_o_esqueleto) && enemy_count < obj_o_esqueleto.kills/4
{
	if enemy_count > 5
	{
		exit;
	}
	
	var enemy = choose(obj_o_knight, obj_o_crow, obj_o_crow);
	
	var new_x = random_range(220, room_width - 220);
	while point_distance(new_x, 0, obj_o_esqueleto.x, 0) < 200
	{
		new_x = random_range(220, room_width - 220);
	}
	
	instance_create_layer(new_x, obj_o_esqueleto.y, "Instances", enemy);
}
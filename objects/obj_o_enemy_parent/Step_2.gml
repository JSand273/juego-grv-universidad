if hp < 0 {
	instance_destroy();
	
	repeat (experience)
	{

		instance_create_layer(x+random_range(-4, 4), y+random_range(-4, 4), "Effects", obj_o_experience); 
	}
}
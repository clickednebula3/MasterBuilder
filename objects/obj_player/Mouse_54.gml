if (point_distance(x, y, mouse_x, mouse_y) <= reach) {
	
	if (toolMode[toolIndex] == "Gun") {
		
		var _bullie = instance_create_layer(mouse_x, mouse_y, "Instances", obj_bullet);
		
		_bullie.direction = point_direction(x, y, mouse_x, mouse_y);
		_bullie.image_angle = point_direction(x, y, mouse_x, mouse_y);
		_bullie.speed = 2;
		
	}
	
}
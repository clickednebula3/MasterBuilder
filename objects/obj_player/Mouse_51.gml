if (point_distance(x, y, mouse_x, mouse_y) <= reach) {
	daX = mouse_x-((mouse_x+16)%32)+16;
	daY = mouse_y-((mouse_y+16)%32)+16;
	
	if (toolMode[toolIndex] == "Build") {
		
		isThereBlock = collision_point(daX, daY, obj_block, false, false);
		isThereMon = collision_point(daX, daY, obj_monster, false, false);
		isTherePlyr = collision_point(daX, daY, obj_player, false, false);
		isTherePot = collision_point(daX, daY, obj_potion, false, false);
	
		if (isThereBlock == noone && isThereMon == noone && isTherePlyr == noone && isTherePot == noone) {
			instance_create_layer(daX, daY, "Instances", obj_block);
		}
		
	}
	
	if (toolMode[toolIndex] == "Gun") {
		
		gunCool += 1;
		if (gunCool%(room_speed/3)==0) {
			var _bullie = instance_create_layer(mouse_x, mouse_y, "Instances", obj_bullet);
		
			_bullie.direction = point_direction(x, y, mouse_x, mouse_y);
			_bullie.image_angle = point_direction(x, y, mouse_x, mouse_y);
			_bullie.speed = 2;
		}
		
	}
	
} else {
	draw_set_colour(c_red);
}
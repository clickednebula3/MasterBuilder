if (point_distance(x, y, mouse_x, mouse_y) <= reach) {
	
	effect_create_below(ef_star, mouse_x, mouse_y, 0.05, c_white);
	
	for (i=0; i<array_length(blocks); i++) {
		
		touchedBlock = collision_point(mouse_x, mouse_y, blocks[i], false, true);
		if (touchedBlock != noone) {
			
			if (touchedBlock.object_index == obj_monster) {
				with (touchedBlock) {Health-=3;}
				break;
			}
			else if (touchedBlock.object_index == obj_potion) {
				with (touchedBlock) {instance_destroy();}
				break;
			}
			else if (touchedBlock.object_index == obj_spawner) {break;}
			else {
				with (touchedBlock) {instance_destroy();}
				break;
			}
			
		}
		
	}
	
} else {
	draw_set_colour(c_red);
}

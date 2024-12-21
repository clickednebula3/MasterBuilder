if (point_distance(x, y, mouse_x, mouse_y) <= reach) {
} else {
	effect_create_below(ef_ring, mouse_x, mouse_y, 0.05, c_red);
}
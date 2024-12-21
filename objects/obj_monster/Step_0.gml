if (Health <= 0) {
	randomise();
	if (irandom_range(0, 4) == 0) {
		instance_create_layer(x, y, "Instances", obj_potion);
	}
	instance_destroy();
}
if (Health > 50) {
	image_index = 0;
} else {
	image_index = 1;
}
if (Health > 100) {
	Health = 100;
}


if (collision_rectangle(x-20, y-20, x+20, y+20, obj_player, false, false) != noone) {
	obj_player.Health-=1;
}
randomise();
if (irandom_range(0, room_speed*10) == 0) {
	spawnX = 0;
	spawnY = 0
	spawnables = [obj_monster];
	
	randoSpawny = irandom_range(0, array_length(spawnables)-1);
	randoPlace = irandom_range(0, 3);
	
	if (randoPlace == 0) {
		//top
		spawnX = irandom_range(-1, room_width/32)*32;
		spawnY = -32;
	} else if (randoPlace == 1) {
		//bottom
		spawnX = irandom_range(-1, room_width/32)*32;
		spawnY = room_height+32;
	} else if (randoPlace == 2) {
		//left
		spawnX = -32;
		spawnY = irandom_range(-1, room_height/32)*32;
	} else {
		//right
		spawnX = room_width+32;
		spawnY = irandom_range(-1, room_height/32)*32;
	}
	
	instance_create_layer(spawnX, spawnY, "Instances", array_get(spawnables, irandom_range(0, randoSpawny)));
}
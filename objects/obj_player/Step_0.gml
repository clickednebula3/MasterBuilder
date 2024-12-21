if (Health <= 0) { room_restart(); }
if (Health > 100) { Health = 100; }

if (toolMode[toolIndex] == "Build") { reach = 32*3; }
else if (toolMode[toolIndex] == "Gun") { reach = 32*5; }

if (keyboard_check_pressed(vk_tab) || mouse_check_button_pressed(mb_middle)) {
	toolIndex+=1;
	if (toolIndex == array_length(toolMode)) { toolIndex=0; }
}

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("Z"))) {
	for (i=0; i<array_length(blocks); i++) {
		with (blocks[i]) {
			if (collision_point(x, y+32, obj_player, false, true) == noone || object_index == obj_spawner) { y += 32; }
		}
	}
}

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(ord("A"))) {
	for (i=0; i<array_length(blocks); i++) {
		with (blocks[i]) {
			if (collision_point(x+32, y, obj_player, false, true) == noone || object_index == obj_spawner) { x += 32; }
		}
	}
}

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	for (i=0; i<array_length(blocks); i++) {
		with (blocks[i]) {
			if (collision_point(x, y-32, obj_player, false, true) == noone || object_index == obj_spawner) { y -= 32; }
		}
	}
}

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	for (i=0; i<array_length(blocks); i++) {
		with (blocks[i]) {
			if (collision_point(x-32, y, obj_player, false, true) == noone || object_index == obj_spawner) { x -= 32; }
		}
	}
}

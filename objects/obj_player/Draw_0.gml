//mid
draw_self();
draw_circle(x, y, reach, true);

//top left
draw_healthbar(0+8, 0+8, 64+8, 16+8, Health, c_black, c_red, c_lime, 0, true, false);


//top right
draw_set_color(c_white);
draw_set_halign(fa_right);

coordX = (x/32)-(obj_spawner.x/32);
coordY = (y/32)-(obj_spawner.y/32);

textXY = string("x({0}), y({1})", coordX, coordY);

draw_text(room_width, 0, textXY);
draw_text(room_width, 16, string_concat("Mode: ", toolMode[toolIndex]));
if (PotionInventory > 0) {
	textPots = string("Potions: {0}", PotionInventory);
	draw_text(room_width, 32, textPots);
}

draw_set_halign(fa_center);

draw_text(room_width/2, 32, SaveLoad);

draw_set_halign(fa_left);


/*for (X=0; X<=room_width/32; X++) {
	for (Y=0; Y<=room_height/32; Y++) {
		draw_set_colour(c_red);
		draw_line(0, Y*32, X*32, Y*32);
		draw_line(X*32, 0, X*32, Y*32);
	}
}*/

draw_set_colour(c_blue);
if (toolMode[toolIndex] == "Build") {
	draw_sprite(spr_tool_build, 0, mouse_x, mouse_y);
} else if (toolMode[toolIndex] == "Gun") {
	draw_sprite(spr_tool_gun, 0, mouse_x, mouse_y);
}
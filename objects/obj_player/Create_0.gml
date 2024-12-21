//consts
blocks = [obj_block, obj_monster, obj_potion, obj_spawner, obj_player_online, obj_bullet];
reach = 32*4;

//var
SaveLoad = "Started Default Game";
gunCool = 0;
//stats
coordX = 0;
coordY = 0;
Health = 100;
PotionInventory = 0;
toolMode = ["Build", "Gun"];


//initialise
x = room_width/2;
y = room_height/2;
alarm[0] = room_speed*2;
toolIndex = 0;

draw_set_colour(c_blue);
window_set_fullscreen(true);
window_set_cursor(cr_none);
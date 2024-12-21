/// @description Move Towards Player

needUp = false;
needDown = false;
needLeft = false;
needRight = false;
DaX = 0;
DaY = 0;

if (y > obj_player.y) {needUp = true; DaY-=32;}
if (y < obj_player.y) {needDown = true; DaY+=32;}
if (x > obj_player.x) {needLeft = true; DaX-=32;}
if (x < obj_player.x) {needRight = true; DaX+=32;}

plyr = collision_point(x+DaX, y+DaY, obj_player, false, false);
blok = collision_point(x+DaX, y+DaY, obj_block, false, false);
evik = collision_point(x+DaX, y+DaY, obj_monster, false, false);

if (plyr == noone && blok == noone && evik == noone) {
	x+=DaX;
	y+=DaY;
}

alarm[0] = room_speed;
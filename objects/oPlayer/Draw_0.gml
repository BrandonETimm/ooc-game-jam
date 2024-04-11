draw_sprite_ext(sprite_index, image_index, x+2*sign(x-480), y+2*sign(y-270), 1.1, 1.1, 0, c_black, 0.2);
if (dir == 2){
	draw_sprite_ext(sGun, 0, x+8+2*sign(x-480), y-12+2*sign(y-480), -1.1, 1.1, 270, c_black, 0.2);
	draw_sprite_ext(sGun, 0, x+8, y-12, -1, 1, 270, c_white, 1);
}
else if (dir == 0){
	draw_sprite_ext(sGun, 0, x-24+2*sign(x-480), y+2*sign(y-480), -1.1, 1.1, 0, c_black, 0.2);
	draw_sprite_ext(sGun, 0, x-24, y, -1, 1, 0, c_white, 1);
}
draw_self();
if (dir == 1){
	draw_sprite_ext(sGun, 0, x+24+2*sign(x-480), y+2*sign(y-480), 1.1, 1.1, 0, c_black, 0.2);
	draw_sprite(sGun, 0, x+24, y);
}
else if (dir == 3){
	draw_sprite_ext(sGun, 0, x-8+2*sign(x-480), y+12+2*sign(y-480), -1.1, 1.1, 90, c_black, 0.2);
	draw_sprite_ext(sGun, 0, x-8, y+12, -1, 1, 90, c_white, 1);
}

draw_set_color(c_black);
draw_rectangle(0,0,210,540,false);
draw_rectangle(750,0,960,540,false);
draw_set_color(c_white);
draw_sprite(sGem, 10, 32, 34);
draw_text(68, 34, "X" + string(global.points));
draw_sprite(sShield, 10, 32, 76);
draw_text(68, 76, "X" + string(shields));
if (invincT == 0 && slowDur > 0){
	draw_sprite(sHourglass, 7, 32, 120);
	draw_set_color(c_yellow);
	draw_rectangle(52, 108, 52+floor(slowDur/4), 132, false); 
	draw_set_color(c_white);
}
else if (invincT > 0 && slowDur == 0){
	draw_sprite(sInvinc, 10, 32, 120);
	draw_set_color(c_aqua);
	draw_rectangle(52, 108, 52+floor(invincT/4), 132, false); 
	draw_set_color(c_white);
}
else if (invincT > 0 && slowDur > 0){
	draw_sprite(sHourglass, 7, 32, 120);
	draw_sprite(sInvinc, 10, 32, 162);
	draw_set_color(c_yellow);
	draw_rectangle(52, 108, 52+floor(slowDur/4), 132, false); 
	draw_set_color(c_aqua);
	draw_rectangle(52, 150, 52+floor(invincT/4), 174, false); 
	draw_set_color(c_white);
}
draw_sprite(sIMove, 0, 860, 115);
draw_sprite(sIShoot, 0, 860, 270);
draw_sprite(sIPickups, 0, 860, 400);
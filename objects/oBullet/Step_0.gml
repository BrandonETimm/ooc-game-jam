if (oPlayer.slowDur > 0 && canDamage == 0){
	xsp = round(maxxsp/1.75)*sign(xsp);
	ysp = round(maxysp/1.75)*sign(ysp);
}
else if (oPlayer.slowDur == 0){
	xsp = maxxsp*sign(xsp);
	ysp = maxysp*sign(ysp);
}
x += xsp;
y += ysp;
if (x <= 218){
	x = 218;
	xsp = abs(xsp);
}
else if (x >= 744){
	x = 744;
	xsp = -abs(xsp);
}
if (y <= 8){
	y = 8;
	ysp = abs(ysp);
}
else if (y >= 532){
	y = 532;
	ysp = -abs(ysp);
}
if canDamage > 0 canDamage--;
if dur > 0 dur--;
else{
	instance_create_layer(x, y, "Bullets", oGem);
	instance_destroy();
}
if (dur < 11) sprite_index = sBulletBreak;	
else if (dur < 221) sprite_index = sBullet;
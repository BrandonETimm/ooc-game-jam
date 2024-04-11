movex = key_right - key_left;
movey = key_down - key_up;

if (musicT < 4500){
	musicT++;
	if (musicT == -120) audio_play_sound(soundMusic1, 1, false);
	else if (musicT == -1 && !startShoot) musicT = -121;
	else if (musicT == 0){
		audio_stop_sound(soundMusic1);
		audio_play_sound(soundMusic2, 1, false);
	}
	else if (musicT == 600) audio_play_sound(soundMusic3, 1, false);
	else if (musicT == 1560) audio_play_sound(soundMusic4, 1, false);
	else if (musicT == 2517) audio_play_sound(soundMusic5, 1, false);
	else if (musicT == 3475) audio_play_sound(soundMusic6, 1, false);
	else if (musicT == 4434) audio_play_sound(soundMusic7, 1, true);
}

if (powerupT > 0) powerupT--;
else if (startShoot){
	audio_play_sound(soundPUApp, 2, false);
	powerupT = maxpowerupT;
	var powerup = instance_create_layer(floor(random_range(260, 701)), floor(random_range(50,491)), "Powerups", oPowerup);
	var num = floor(random_range(0, 5));
	if (num == 0 || num == 1){
		powerup.powerup = 0;
		powerup.sprite_index = sShield;	
	}
	else if (num == 2 || num == 3){
		powerup.powerup = 1;
		powerup.sprite_index = sHourglass;
	}
	else if (num == 4){
		powerup.powerup = 2;
		powerup.sprite_index = sInvinc;
	}
}
if (invincT > 0) invincT--;
if (slowDur > 0) slowDur--;

if (movex != 0 && movey != 0){
	movex = movex/sqrt(2);
	movey = movey/sqrt(2);
}
xsp = round(movex*walksp);
ysp = round(movey*walksp);
x += xsp;
y += ysp;
if (x <= 226){
	x = 226;
	xsp = 0;
}
else if (x >= 734){
	x = 734;
	xsp = 0;
}
if (y <= 16){
	y = 16;
	ysp = 0;
}
else if (y >= 524){
	y = 524;
	ysp = 0;
}
Animation();

if (existenceT > 0) existenceT--;
else if (startShoot){
	existenceT = 80;
	maxBulletTimer = max(20, maxBulletTimer-1);
}

if (key_shoot){
	startShoot = true;	
	powerupT = maxpowerupT;
}
if (bulletTimer > 0) bulletTimer--;
else if (startShoot){
	audio_play_sound(soundShoot, 0, false);
	var bullet = instance_create_layer(x, y, "Bullets", oBullet);
	if (dir == 3){	
		bullet.ysp = floor(random_range(6,9));
		bullet.xsp = round(sqrt(power(8,2) - power(bullet.ysp,2)))*choose(-1,1);
		bullet.x -= 16;
		bullet.y += 52;
		bullet.image_angle = 270;
		flash = instance_create_layer(x-16, y+32, "Bullets", oFlash);
		flash.image_angle = 270;
		flash.xadj = -16;
		flash.yadj = 32;
	}
	else if (dir == 2){	
		bullet.ysp = -floor(random_range(6,9));
		bullet.xsp = round(sqrt(power(8,2) - power(bullet.ysp,2)))*choose(-1,1);
		bullet.x += 8;
		bullet.y -= 52;
		bullet.image_angle = 90;
		flash = instance_create_layer(x+16, y-32, "Bullets", oFlash);
		flash.image_angle = 90;
		flash.xadj = 16;
		flash.yadj = -32;
	}
	else if (dir == 1){
		bullet.xsp = floor(random_range(6,9));
		bullet.ysp = round(sqrt(power(8,2) - power(bullet.xsp,2)))*choose(-1,1);
		bullet.x += 52;
		bullet.y -= 8;
		flash = instance_create_layer(x+44, y-8, "Bullets", oFlash);
		flash.xadj = 44;
		flash.yadj = -8;
	}
	else{
		bullet.xsp = -floor(random_range(6,9));
		bullet.ysp = round(sqrt(power(8,2) - power(bullet.xsp,2)))*choose(-1,1);
		bullet.x -= 52;
		bullet.y -= 8;
		bullet.image_xscale = -1;
		flash =  instance_create_layer(x-44, y-8, "Bullets", oFlash);
		flash.image_xscale = -1;
		flash.xadj = -44;
		flash.yadj = -8;
	}
	bulletTimer = maxBulletTimer;
	bullet.maxxsp = abs(bullet.xsp);
	bullet.maxysp = abs(bullet.ysp);
	if (bullet.x <= 218){
		bullet.x = 218;
		bullet.xsp = abs(bullet.xsp);
	}
	else if (bullet.x >= 744){
		bullet.x = 744;
		bullet.xsp = -abs(bullet.xsp);
	}
	if (bullet.y <= 8){
		bullet.y = 8;
		bullet.ysp = abs(bullet.ysp);
	}
	else if (bullet.y >= 532){
		bullet.y = 532;
		bullet.ysp = -abs(bullet.ysp);
	}
}
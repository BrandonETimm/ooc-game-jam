if (movex > 0) dir = 1;	
else if (movex < 0) dir = 0;
else if (movey > 0) dir = 3;	
else if (movey < 0) dir = 2;
if (state == PLAYERSTATE.FREE){
	if (movex == 0 && movey == 0){
		if (dir == 1) sprite_index = sFrogR;
		else if (dir == 0) sprite_index = sFrogL;	
		else if (dir == 3) sprite_index = sFrogD;	
		else sprite_index = sFrogU;	
	}
	else{	
		if (dir == 1) sprite_index = sFrogRW;	
		else if (dir == 0) sprite_index = sFrogLW;
		else if (dir == 3) sprite_index = sFrogDW;	
		else if (dir == 2) sprite_index = sFrogUW;
	}
}
else{
	image_speed = 0;
	sprite_index = sFrogDead;
	if (deathT == 390) image_index = 1;
	else if (deathT == 300) image_index = 2;
}
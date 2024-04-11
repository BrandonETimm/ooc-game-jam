if (dur > 600){
	if (dur % 64 > 7){
		draw_sprite_ext(sprite_index, image_index, x+2*sign(x-480), y+2*sign(y-270), 1.1, 1.1, 0, c_black, 0.2);
		draw_self(); 
	}
}
else if (dur > 300){
	if (dur % 48 > 7){
		draw_sprite_ext(sprite_index, image_index, x+2*sign(x-480), y+2*sign(y-270), 1.1, 1.1, 0, c_black, 0.2);
		draw_self(); 
	}
}
else if (dur > 90){
	if (dur % 32 > 7){
		draw_sprite_ext(sprite_index, image_index, x+2*sign(x-480), y+2*sign(y-270), 1.1, 1.1, 0, c_black, 0.2);
		draw_self(); 
	} 
}
else{
	if (dur % 16 > 3){
		draw_sprite_ext(sprite_index, image_index, x+2*sign(x-480), y+2*sign(y-270), 1.1, 1.1, 0, c_black, 0.2);
		draw_self(); 
	}
}
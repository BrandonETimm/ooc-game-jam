if (startH){
	draw_sprite_ext(sStart, 0, x-138,y+250, 1, 1, 0, c_lime, 1);
	draw_sprite(sExit, 0, x+138,y+250);
}
else{
	draw_sprite(sStart, 0, x-138,y+250);
	draw_sprite_ext(sExit, 0, x+138,y+250, 1, 1, 0, c_red, 1);
}
draw_sprite(sHivemind, 0, 80, 520);
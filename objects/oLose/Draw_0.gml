draw_self();
if (startH){
	draw_sprite_ext(sYes, 0, x-128,y+290, 1, 1, 0, c_lime, 1);
	draw_sprite(sNo, 0, x+128,y+290);
}
else{
	draw_sprite(sYes, 0, x-128,y+290);
	draw_sprite_ext(sNo, 0, x+128,y+290, 1, 1, 0, c_red, 1);
}
draw_sprite_ext(sGem, 9, x-40, y+120, 2, 2, 0, c_white, 1);
draw_text(x+15,y+120, "X" + string(global.points));
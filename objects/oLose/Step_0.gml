if (!window_get_fullscreen()) window_set_fullscreen(true);
if (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)){
	startH = true;
	audio_play_sound(soundBlip, 2, false);
}
else if (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)){
	startH = false;
	audio_play_sound(soundBlip, 2, false);
}
if (keyboard_check_pressed(vk_space)){
	audio_stop_sound(soundGameOver);
	audio_play_sound(soundSelect, 2, false);
	if (startH) room_goto(1);
	else room_goto(0);	
}
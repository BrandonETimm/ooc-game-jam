if (other.state == PLAYERSTATE.FREE){
	global.points += 1;
	audio_play_sound(soundGem, 3, false);
}
instance_destroy();
if (canDamage == 0 && other.invincT == 0 && other.state = PLAYERSTATE.FREE){
	if (other.shields > 0){
		other.shields--;
		audio_play_sound(soundHurt, 4, false);
	}
	else{
		other.state = PLAYERSTATE.DEAD;
		other.image_index = 0;
		audio_stop_sound(soundMusic2);
		audio_stop_sound(soundMusic3);
		audio_stop_sound(soundMusic4);
		audio_stop_sound(soundMusic5);
		audio_stop_sound(soundMusic6);
		audio_stop_sound(soundMusic7);
		audio_play_sound(soundDie, 1, false);
	}
	instance_destroy();
}
else if (other.invincT > 0) instance_destroy();
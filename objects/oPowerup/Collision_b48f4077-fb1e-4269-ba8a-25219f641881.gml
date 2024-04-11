if (powerup == 0) other.shields += 1;
else if (powerup == 1) other.slowDur = 300;
else if (powerup == 2) other.invincT = 300;
audio_play_sound(soundPUPick, 2, false);
instance_destroy();
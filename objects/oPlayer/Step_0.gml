key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_shoot = keyboard_check_pressed(vk_space);
if (keyboard_check(ord("F"))) invincT = 5;

switch(state)
{
	case PLAYERSTATE.FREE: PSFree(); break;
	case PLAYERSTATE.DEAD: PSDead(); break;
}
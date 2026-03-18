depth = -1;
sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);

// 0 not hovering over anything
// 1 hovering
// 2 picked up an object
// 3,4,5 holding stim toys

INPUT_BUTTON = mb_left

enum STATE {
	empty = 0,
	hover = 1,
	hold = 2,
}

cursor_state = STATE.empty
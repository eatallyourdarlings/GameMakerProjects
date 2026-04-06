// Welcome to Andy's Helpful Script!
// This script includes common functions used throughout a lot of projects.
// Hopefully you find them useful!

// ======================================================= //
// Global Variables / Constants

// Debug Mode - toggle to enable debug inputs/draw behaviour.
global.debugmode = false;

// ======================================================= //
/// Useful Functions

// approach
// Returns a value incremented towards a target by an amount.
// Similar to lerp(), but increments by a fixed amount rather than a percentage.
// value = approach(value, target, amount)
function approach(value, target, amount) {
	if (value < target) {
		return min(value + amount, target);
	} else {
		return max(value - amount, target);
	}
}

// anim_on_last_frame
// Returns whether the current object's 'image_index' is the last frame of the sprite.
// if anim_on_last_frame() {...}
function anim_on_last_frame() {
	return floor(image_index) == (image_number - 1);
}

// ======================================================= //
/// Macros
// Useful 'shorthand'

// Use print() to show debug messages, like other code languages.
// Easier to write than 'show_debug_message'
#macro print show_debug_message
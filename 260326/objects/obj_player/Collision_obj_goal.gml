if room_exists(room_next(room)){
	room_goto_next()
} else {
	// Simple message popup.
	show_message("love is abundant underdair <3");
	game_restart();
}
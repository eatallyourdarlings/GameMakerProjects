if room_exists(room_next(room)){
	room_goto_next()
} else {
	// Simple message popup.
	show_message("THE END");
	game_restart();
}
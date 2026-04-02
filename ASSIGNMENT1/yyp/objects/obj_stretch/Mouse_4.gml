
touched = true

//set the alarm event to run after 20 frames
alarm[0] = 20;
//var voice = audio_play_sound(sound_blep, 10, false)
var voice = audio_play_sound(sound_blep, 10, false);
audio_sound_pitch(voice, 2 * random_scale);
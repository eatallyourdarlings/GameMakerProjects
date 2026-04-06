// OBJ_GAME
// Here is a good place to put a bunch of setup that should happen at the start of the game.


// Generate Sprite Fonts from the provided asset pack
// There is a limited set of glyphs, so don't expect punctuation or lowercase characters.
fontSprite1 = font_add_sprite_ext(spr_font_1,"%+-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",true,1);
fontSprite2 = font_add_sprite_ext(spr_font_2,"%+-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",true,1);

// Set default font
draw_set_font(fontSprite2);

// Automatically scale window (NOTE: Modify these values to change the game resolution)
WIDTH	= 320;
HEIGHT	= 240;
SCALE	= 3;
window_set_size(WIDTH * SCALE, HEIGHT * SCALE);
window_center();

// Spawn obj_cursor (at depth -9999)
//instance_create_depth(x,y,-9999,obj_cursor);

// Global Variables
global.score = 0;

depth = -9999;
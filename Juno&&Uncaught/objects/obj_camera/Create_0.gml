width = 960
height = 540
xstart = room_width/4
ystart = room_height/4
angle = 0
speed = obj_cursor.speed / 2

// Initialise Viewports

view_enabled = true;
view_visible[0] = true;

//offset 0,0
view_xport[0] = 0;
view_yport[0] = 0;

//width/height 
view_wport[0] = width;
view_hport[0] = height;

//initialise  camera with cursor target
//view_camera[0] = camera_create_view(width, height, width, height, angle, obj_cursor, -1, -1, width*(2/3), height*(2/3));

//initialise camera with no target, do following code in step
camera = camera_create_view(xstart, ystart, width, height, angle);
view_camera[0] = camera;


var _xpos = display_get_width() / 2 - width / 2;
var _ypos = display_get_height() / 2 - height / 2;

// resize and reposition in centre of display
window_set_rectangle(_xpos, _ypos, width, height);

// resize application surface; where everything is drawn
surface_resize(application_surface, width, height);
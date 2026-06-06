blink_time = 0;

xstart = room_width/4
ystart = room_height/4

//could add a lil bit of leaning later!?
camera_angle = 0
speed = 1 / 60;

// summon the piskie
//cursor = instance_create_layer(xstart,ystart, "Instances_functional", obj_cursor);
//print($"ah watch out a piskie is running at me this fast: {cursor.speed}");
//speed = cursor.speed / 2;

// Initialise Viewports

view_enabled = true;
view_visible[0] = true;

//offset 0,0
view_xport[0] = 0;
view_yport[0] = 0;

//width/height 
view_wport[0] = global.width;
view_hport[0] = global.height;

//initialise  camera with cursor target
//view_camera[0] = camera_create_view(width, height, width, height, angle, obj_cursor, -1, -1, width*(2/3), height*(2/3));

//initialise camera with no target, do following code in step
camera = camera_create_view(xstart, ystart, global.width, global.height, camera_angle);
view_camera[0] = camera;

var _xpos = display_get_width() / 2 - global.width / 2;
var _ypos = display_get_height() / 2 - global.height / 2;

// resize and reposition in centre of display
window_set_rectangle(_xpos, _ypos, global.width, global.height);

// resize application surface; where everything is drawn
surface_resize(application_surface, global.width, global.height);


for (var i = 0; i < instance_count; i++)
{
	print($"{instance_id[i]}");
}

// cannot find instance for index 17?
// view_camera[0] prints as 17
// ok so it's not a problem with cursor, that exists

//if instance_exists(obj_cursor){
//	camera.x = lerp(view_camera[0].x, obj_cursor.x, speed);
//}

//with (cursor){
////self.camera.x = lerp(x, other.x, speed);
////self.camera.y = lerp(y, other.y, speed);
//	view_camera[0].x = lerp(x, other.x, speed);
//	view_camera[0].y = lerp(y, other.y, speed);
	
//}
//camera.x = lerp(x, cursor.x, speed);
//camera.y = lerp(y, cursor.y, speed);

// center on the cursor
//camera_set_view_pos(view_camera[0], obj_cursor.x / 2, obj_cursor.y / 2)

var camera_x = lerp(camera_get_view_x(view_camera[0]), obj_cursor.x / 2, speed);
var camera_y = lerp(camera_get_view_y(view_camera[0]), obj_cursor.y / 2, speed);
camera_set_view_pos(view_camera[0], camera_x, camera_y)

//var camera_y = lerp(camera_get_view_y(view_camera[0]));



// subtley lean the camera?
camera_wvy = sin(get_timer()  / 5000000)
camera_set_view_angle(view_camera[0], 0 + camera_wvy)
//camera_angle = lerp(camera_angle,camera_angle+1,speed)
event_inherited();

// moving around
var raw_xaxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var raw_yaxis = keyboard_check(ord("W")) - keyboard_check(ord("S"));

// // move the player
var moving = false;
if (point_distance(0, 0, raw_xaxis, raw_yaxis) > 0)
{
    moving = true;
    var xplus = raw_yaxis * camera.for_x + raw_xaxis * camera.side_x;
    var yplus = raw_yaxis * camera.for_y + raw_xaxis * camera.side_y;
    rotation += lerp_angle(rotation, point_direction(0, 0, xplus, yplus), 0.2);
    x += lengthdir_x(2, rotation);
    y += lengthdir_y(2, rotation);
}

// jump
if (keyboard_check_pressed(vk_space) && on_ground)
    zspd = 5;
    
set_forward_side();

// when to make a step
if (moving)
    step_timer += 1;

if (step_timer >= step_time)
{
    step_foot(step_index);
    step_index = 1 - step_index;
    step_timer -= step_time;
}

// set body position (bobs up and down while walking)
body_x = x;
body_y = y;
body_z = z + min(lengthdir_y(radius * 0.5, foot_t[0] * 180),
                 lengthdir_y(radius * 0.5, foot_t[1] * 180)) * on_ground;

// set head position
head_x = body_x;
head_y = body_y;
head_z = body_z + radius * 2.2;

// set feet positions
for (var i = 0; i < 2; i++)
{
    var side = i * 2 - 1;
    if (on_ground)
    {
        foot_x[i] = lerp(foot_xprev[i], foot_xtarg[i], foot_t[i]);
        foot_y[i] = lerp(foot_yprev[i], foot_ytarg[i], foot_t[i]);
        foot_z[i] = -lengthdir_y(radius, foot_t[i] * 180);
    }
    else
    {
        foot_x[i] = x + side_x * feet_width * side;
        foot_y[i] = y + side_y * feet_width * side;
        foot_z[i] = z - radius - ground_offset;
    }
    
    if (foot_t[i] < 1)
        foot_t[i] += 0.1;
    
    hand_x[i] = x + side_x * hand_width * side;
    hand_y[i] = y + side_y * hand_width * side;
    hand_z[i] = z - 5 - lengthdir_y(radius * 0.5, foot_t[1 - i] * 180) * on_ground;
}


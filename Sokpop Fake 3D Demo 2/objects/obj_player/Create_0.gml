event_inherited();

color = c_black;
radius = 15;
bounciness = 0;

ground_offset = radius * 1.5;

rotation = 0;
set_forward_side();

body_x = x;
body_y = y;
body_z = z;

head_x = x;
head_y = y;
head_z = z;

// variables for making steps
step_timer = 0;
step_time = 15;
step_index = 0;

// initialize hands and feet
feet_width = radius * 0.8;
hand_width = radius * 1.5;
for (var i = 0; i < 2; i++)
{
    var side = i * 2 - 1;
    foot_x[i] = x + side_x * feet_width * side;
    foot_y[i] = y + side_y * feet_width * side;
    foot_z[i] = 0;
    
    foot_xprev[i] = 0;
    foot_yprev[i] = 0;
    foot_xtarg[i] = foot_x[i];
    foot_ytarg[i] = foot_y[i];
    foot_t[i] = 1;
    
    hand_x[i] = x + side_x * hand_width * side;
    hand_y[i] = y + side_y * hand_width * side;
    hand_z[i] = z - 5;
}


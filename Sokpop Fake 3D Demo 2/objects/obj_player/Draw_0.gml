// draw feet
for (var i = 0; i < 2; i++)
{
    line_3d(body_x, body_y, body_z, foot_x[i], foot_y[i], foot_z[i], 5, color);
    circle_3d(foot_x[i], foot_y[i], foot_z[i], 5, color);
}

// draw body
circle_3d(body_x, body_y, body_z, radius, color);

// draw hands
for (var i = 0; i < 2; i++)
{
    line_3d(body_x, body_y, body_z + radius * 0.66, hand_x[i], hand_y[i], hand_z[i], 5, color);
    circle_3d(hand_x[i], hand_y[i], hand_z[i], 5, color);
}

// draw neck & head
line_3d(body_x, body_y, body_z, head_x, head_y, head_z, radius * 0.66, color);
circle_3d(head_x, head_y, head_z, radius * 0.66, color);

// draw face
// // draw nose
var nose_forw = radius * 0.66;
circle_3d(head_x + nose_forw * for_x, head_y + nose_forw * for_y, head_z, radius * 0.2, c_purple);

// // draw eyes
var eye_forw = radius * 0.5;
var eye_side = radius * 0.2;
for (var i = 0; i < 2; i++)
{
    var side = i * 2 - 1;
    circle_3d(head_x + eye_forw * for_x + eye_side * side * side_x,
              head_y + eye_forw * for_y + eye_side * side * side_y,
              head_z + radius * 0.33, radius*0.2, c_white);
}


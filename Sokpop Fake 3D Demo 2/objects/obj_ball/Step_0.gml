wp_to_sp(x, y, z);
depth = res_screen_z;

zspd -= grav;

// bounce on the ground
on_ground = false;
if (z + zspd <= radius + ground_offset)
{
    on_ground = true;
    z = radius + ground_offset;
    zspd *= -bounciness;
    if (abs(zspd) <= grav)
        zspd = 0;
}
z += zspd;


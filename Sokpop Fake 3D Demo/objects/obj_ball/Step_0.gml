wp_to_sp(x, y, z);
depth = res_screen_z;

zspd -= grav;

// bounce on the ground
if (z + zspd <= radius)
{
    z = radius;
    zspd *= -0.5;
    if (abs(zspd) <= grav)
        zspd = 0;
}
z += zspd;


repeat(50)
    instance_create(random(1000), random(800), obj_ball)
    
x = 0;
y = 0;
z = 50;
rotation = 0;
pitch = -20;

width = window_get_width();
height = window_get_height();
zoom = 2;

// perspective
fov = 0.25; // field of view: decrease for bigger perspective effect
near = 0;
far = 100;

// variables for increasing computation speed
farnear_comp = 1 / (far - near);
m00 = 0;
m10 = 0;
m01 = 0;
m11 = 0;
yscale = 1;
zscale = 0;


///scr_dropship_docked
statename = "Docked";
//Slow movement and turn outward
friction = 0.1;
image_angle = point_direction(x, y, obj_ring.x, obj_ring.y);
speed = 0;
image_xscale = -1;
image_yscale = -1;

//Unload Timer
if (load_timer <= 150){
    load_timer -= 1;
}
if (load_timer <= 1){
    load -= 1; //Unloading from Dropship
    global.node[cur_node].load += 1; //Loading to Node
    load_timer = 150;
}
load_timer = clamp(load_timer, 0, 150);

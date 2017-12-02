///scr_stunned_state()
friction = 0;
motion_add (_direction, _acceleration);
speed = min(speed, _topspeed);

if (stunned){
    path_end();
    image_blend = c_green;
    if (stunned_timer == 0){
    stunned_timer = 120;
    }
}

if (stunned_timer > 0){
    stunned_timer -= 1;
} 
if (stunned_timer == 1){
    image_blend = c_white;
    stunned = 0;
    stunned_timer = 0;
}
stunned_timer = clamp(stunned_timer, 0, 120);



///scr_enemyscout_movement_state
var _acceleration = 0.2;
var _topspeed = 2;

if (place_meeting(x, y, obj_director_layer1)){ //Change state when encountering director object
    director = 1;
}
if !(director){ //Fly into screen and stop
    _direction = (point_direction(x, y, obj_ring.x, obj_ring.y));
    path_end();
}

friction = 0;
motion_add (_direction, _acceleration);
speed = min(speed, _topspeed);

if (director){ //select target and auto-attack
    cur_target = choose(obj_player_3d, obj_node3);
    image_angle = cur_target; 
    friction = 0.5;
    speed = 0.1;
    if (atk < max_atk){
        instance_create(x, y, obj_enemyattack);
        atk = max_atk;
        alarm[0] = 35;
    }
}

if (atk > max_atk){
    alarm[0] = 60
}

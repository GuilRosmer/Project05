///scr_player_movement_state
var ukey = keyboard_check(ord("W"));
var dkey = keyboard_check(ord("S"));


if (path_position < 0.001) && (ukey){
    path_speed = 0;
    } else {
    if (ukey){
        path_speed = -spd;
    }
}
if (path_position > 0.999) && (dkey){
    path_speed = 0;
    } else {
    if (dkey){
        path_speed = spd;
    }
}
if !(ukey) and !(dkey){
    path_speed = 0;
}

//Node Detection

if (place_meeting(x, y, obj_node1)){
    cur_node = obj_node1.name;
}
if (place_meeting(x, y, obj_node2)){
    cur_node = obj_node2.name;
}
if (place_meeting(x, y, obj_node3)){
    cur_node = obj_node3.name;
}
if (place_meeting(x, y, obj_node4)){
    cur_node = obj_node4.name;
}
if (place_meeting(x, y, obj_node5)){
    cur_node = obj_node5.name;
}


///scr_define_path
if (mp_grid_path(global.ai_grid, path, x, y, obj_ring.x, obj_ring.y, 1)){
    path_start(path, 2, path_action_stop, false);
    image_angle = direction;
}
if (path_position > 0.95){
    path_end();
}

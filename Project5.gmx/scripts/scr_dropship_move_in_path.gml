///scr_dropship_move_in_path()
statename = "Path In";
if (mp_grid_path(global.ai_grid, path, x, y, cur_target.x, cur_target.y, 1)){
    path_start(path, 2, path_action_stop, false);
    image_angle = _direction;
}
if (path_position > 0.95){
    docked = 1;
    path_end();
    path_delete(path);
}


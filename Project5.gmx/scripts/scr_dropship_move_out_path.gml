///scr_dropship_move_out_path
statename= "Path Out";
path2 = path_add();
if (mp_grid_path(global.ai_grid, path2, x, y, _x, _y, 1)){
    path_start(path2, 2, path_action_continue, false);
    pathlock += .01;
}




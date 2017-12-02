///create_smoking_part_sprite(sprite, blend, min_life, max_life, min_scale, max_scale, scaling)
var sprite = argument0;
var blend = argument1;
var min_life = argument2;
var max_life = argument3;
var min_scale = argument4;
var max_scale = argument5;
var scaling = argument6;

var type = part_type_create();
part_type_alpha2(type, 0.9, 0);
part_type_sprite(type, sprite, false, true, false);
part_type_blend(type, blend);
part_type_size(type, min_scale, max_scale, scaling, 1);
part_type_life(type, min_life, max_life);
part_type_orientation(type, 80, 100, 0, 1, true);

return type;
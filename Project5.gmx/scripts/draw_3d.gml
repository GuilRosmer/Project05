///draw_3d
for (var _i = 0; _i<image_number; _i++) {
    draw_sprite_ext(sprite_index, _i, x, y-_i, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

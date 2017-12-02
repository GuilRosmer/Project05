///create_explosion(x, y);
var xx = argument0;
var yy = argument1;

repeat (10) {
    instance_create(xx-16+random(16), yy-16+random(16), obj_explosion_piece);
}

part_particles_create(obj_particles.explosion, xx, yy, obj_particles.explosion_center_part, 2);

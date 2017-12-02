///create_smoking(x, y);
var xx = argument0;
var yy = argument1;

repeat (1) {
    instance_create(xx-4+random(4), yy-4+random(4), obj_smoking_piece);
}

part_particles_create(obj_particles.smoking, xx, yy, obj_particles.smoking_particle_part, 1);

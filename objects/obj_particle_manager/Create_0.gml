/// @description Insert description here
// You can write your code in this editor

particle_system = part_system_create_layer("Particles", false);
part_system_depth(particle_system,-99);
green_particle = part_type_create();

part_type_shape(green_particle, pt_shape_pixel); // Shape
part_type_size(green_particle, 1, 2, 0, 0);     // Size
part_type_color1(green_particle, $6BEE59);          // Color
part_type_alpha2(green_particle, 1, 0)
part_type_life(green_particle, 30, 60);           // Lifespan (in steps)
part_type_speed(green_particle, 0.1, 1, 0, 0);      // Speed
part_type_direction(green_particle, 100, 250, 0, 0)

blue_particle = part_type_create();
part_type_shape(blue_particle, pt_shape_pixel); // Shape
part_type_size(blue_particle, 1, 2, 0, 0);     // Size
part_type_color1(blue_particle, $B9804B);          // Color
part_type_alpha2(blue_particle, 1, 0);              // Transparency
part_type_life(blue_particle, 30, 60);           // Lifespan (in steps)
part_type_speed(blue_particle, 0.1, 1, 0, 0);      // Speed
part_type_direction(blue_particle, 100, 250, 0, 0)

enum PARTICLE_MODE {
	GREEN,
	BLUE,
	SILENT
};

particle_types = []
particle_types[PARTICLE_MODE.GREEN] = green_particle;
particle_types[PARTICLE_MODE.BLUE] = blue_particle;

positions = [
	[0, 0],
	[0, 0],
	[0, 0],
	[0, 0],
	[0, 0],
	[0, 0],
	[0, 0],
];

states = [
	PARTICLE_MODE.SILENT,
	PARTICLE_MODE.SILENT,
	PARTICLE_MODE.SILENT,
	PARTICLE_MODE.SILENT,
	PARTICLE_MODE.SILENT,
	PARTICLE_MODE.SILENT,
	PARTICLE_MODE.SILENT
];

x -= 11;
y += 2;

positions[0] = [x, y + obj_recorder.offset_thumb_y];
var hole_index;
for (hole_index = 1; hole_index <= 6; hole_index++) {
	positions[hole_index] = [x, y + obj_recorder.offset_main_y + obj_recorder.step * hole_index];
};
positions[7] = [x, y + obj_recorder.offset_pinky_y];

delay = 5;

alarm[0] = -1;
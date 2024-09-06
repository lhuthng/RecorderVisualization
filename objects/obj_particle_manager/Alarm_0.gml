/// @description Insert description here
// You can write your code in this editor

var index;
for (index = 0; index < 7; index++) {
	if (states[index] != PARTICLE_MODE.SILENT) {
		part_particles_create(
			particle_system, 
			positions[index][0],
			positions[index][1],
			particle_types[states[index]], 
			5
		);
	}
}

alarm[0] = delay;
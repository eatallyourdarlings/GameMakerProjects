// pixels per metre?
impulse_force = 20;

global.whack = function(input_vector) {
	physics_apply_force(x, y, input_vector[0] * impulse_force, input_vector[1] * impulse_force)
}
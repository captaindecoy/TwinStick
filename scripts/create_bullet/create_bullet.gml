/// @description create_bullet(type, xspawn, yspawn, movespeed, timer, angle)
/// @param type
/// @param  xspawn
/// @param  yspawn
/// @param  movespeed
/// @param  timer
/// @param  angle
function create_bullet(argument0, argument1, argument2, argument3, argument4, argument5) {
	_type = argument0
	_xspawn = argument1;
	_yspawn = argument2
	_movespeed = argument3;
	_timer = argument4;
	_angle = argument5;

	bullet = instance_create_layer(_xspawn, _yspawn, "Instances",_type);
	bullet.rhvalue = sign(gamepad_axis_value(0, gp_axisrh));
	bullet.rvvalue = sign(gamepad_axis_value(0, gp_axisrv));
	bullet.movespeed = _movespeed;
	bullet.dir = _angle;
	bullet.image_angle = bullet.dir;
	bullet.timer = _timer;
	bullet.damage = bullet_damage;



}

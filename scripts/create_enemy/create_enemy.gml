// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_enemy(_x, _y, _obj){
	//_x = argument0;
	//_y = argument1;
	//_hp = argument2;
	switch(_obj)
	{
		case obj_baddie01:
			inst = instance_create(_x, _y, obj_baddie01);
			inst.hp += upgrade_bug_hp;
			inst.movespeed += upgrade_bug_movespeed;
			break;
		case obj_baddie02:
			inst = instance_create(_x, _y, obj_baddie02);
			inst.hp += upgrade_turret_hp;
			inst.fire_interval *= upgrade_turret_attack_speed;
			break;
		case obj_wall:
			inst = instance_create(_x, _y, obj_wall);
			break;
		default:
			return;
	}
	//inst = instance_create(_x, _y, obj_baddie01);
	//inst.hp += _hp;
}
image_angle += 1;
if global.cd > 0 
{
	global.cd -= 1;
}
else if global.cd < 0 {global.cd = 0;}

if hp <= 0
{
	instance_destroy(Obj_boss_canons);
	instance_destroy();
}

if global.cd = 0
{
	choice = round(random(1))
	if choice == 0
	{
		global.multishot_attack = true;
	}
	else if choice == 1
	{
		global.spin_attack = true;
		//global.shoot = false;
	}
}
else 
{
	//choice = -1;
	//global.shoot = true;
}
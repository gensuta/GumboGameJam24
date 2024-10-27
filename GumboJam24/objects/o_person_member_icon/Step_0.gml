if(is_changing_name)
{
	my_info._name = keyboard_string
}

if(is_changing_pronouns)
{
	my_info._pronouns = keyboard_string
}


/*
// are we hovering over the name?
if(abs(mouse_x -x+10) < 15 && abs(mouse_y - y+80)<5)
{
	//did we click on the name?
	if(mouse_check_button_pressed(mb_left))
	{
		is_changing_name = true;
	}
}

if(abs(mouse_x -x+10) < 5 && abs(mouse_y - y+100) < 5)
{
	//did we click on the pronouns?
	if(mouse_check_button_pressed(mb_left))
	{
		is_changing_pronouns = true;
	}
}

if(keyboard_check_pressed(vk_enter))
{
	is_changing_pronouns = false;
	is_changing_name = false;
}
*/
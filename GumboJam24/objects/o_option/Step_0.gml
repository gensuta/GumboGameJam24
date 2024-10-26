if(position_meeting(mouse_x,mouse_y,o_option))
{
	_text = string_concat(">",_text)
	if(mouse_check_button_pressed(0))
	{
		ChatterboxSelect(global.chatterbox, _i);
		clear_options()
	}
}
else
{
	_text = string_replace(_text,">","");
}
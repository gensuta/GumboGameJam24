run_vn()
if (!ChatterboxIsWaiting(global.chatterbox))
{
    //If we're not waiting then we have some options!
    //Check for any keyboard input
    var _index = undefined;
    if (keyboard_check_released(ord("1"))) _index = 0;
    if (keyboard_check_released(ord("2"))) _index = 1;
    if (keyboard_check_released(ord("3"))) _index = 2;
    if (keyboard_check_released(ord("4"))) _index = 3;
    
    //If we've pressed a button, select that option
    if (_index != undefined)
	
	{
		ChatterboxSelect(global.chatterbox, _index);
		clear_options()
	}
	//TODO: Ensure that the buttons can be pressed i don't like this button shit
}

if(keyboard_check_pressed(ord("H")))
{
	audio_play_sound(car_honk,0,0);
}
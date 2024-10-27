/// @description Insert description here
// You can write your code in this editor
var current_lane_str = "Middle Lane"
if (global.current_lane <2)
{
	current_lane_str = "Left Lane"
}
if(global.current_lane>3)
{
	current_lane_str = "Right Lane"
}

draw_set_color(c_black)
draw_text(x-100,y+20,current_lane_str);
draw_text(x-100,y+40,string("Snacks:{0}",global.snacks));
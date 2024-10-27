// Draw "important" stats above
if(show_stats)
{
	//Drawing popup rect
	draw_set_color(c_white)
	draw_set_alpha(50);
	draw_rectangle(starting_x, starting_y, starting_x+pop_up_width, starting_y-pop_up_height, false);
	
	//Show up to *FIVE* stats
	//HACK. We get a rand num from 1-5 and show dif stats based on that
	//rand num is determined in Create
	
	
	draw_set_color(c_black)
	draw_set_alpha(100);
	
	
	switch(my_num)
	{
	
		case 1:
			draw_text(starting_x+10,starting_y-25,string("fleetfootedness:{0}",my_info.fleetfootedness));
			draw_text(starting_x+10,starting_y-45,string("haggling:{0}",my_info.haggling));
			draw_text(starting_x+10,starting_y-65,string("greed:{0}",my_info.greed));
			draw_text(starting_x+10,starting_y-85,string("meticulousness:{0}",my_info.meticulousness));
			draw_text(starting_x+10,starting_y-105,string("evil:{0}",my_info.evil));
			break;
		case 2:
			draw_text(starting_x+10,starting_y-25,string("fashionability:{0}",my_info.fashionability));
			draw_text(starting_x+10,starting_y-45,string("speed:{0}",my_info._speed));
			draw_text(starting_x+10,starting_y-65,string("charisma:{0}",my_info.charisma));
			draw_text(starting_x+10,starting_y-85,string("fishing:{0}",my_info.fishing));
			draw_text(starting_x+10,starting_y-105,string("synergy:{0}",my_info.synergy));
			break;
		case 3:
			draw_text(starting_x+10,starting_y-25,string("greed:{0}",my_info.greed));
			draw_text(starting_x+10,starting_y-45,string("langues learned:{0}",my_info.languages_learned));
			draw_text(starting_x+10,starting_y-65,string("fishing:{0}",my_info.fishing));
			draw_text(starting_x+10,starting_y-85,string("meticulousness:{0}",my_info.meticulousness));
			draw_text(starting_x+10,starting_y-105,string("slay:{0}",my_info.slay));
			break;
		case 4:
			draw_text(starting_x+10,starting_y-25,string("evil:{0}",my_info.evil));
			draw_text(starting_x+10,starting_y-45,string("intuition:{0}",my_info.intuition));
			draw_text(starting_x+10,starting_y-65,string("greed:{0}",my_info.greed));
			draw_text(starting_x+10,starting_y-85,string("haggling:{0}",my_info.haggling));
			draw_text(starting_x+10,starting_y-105,string("fleetfootedness:{0}",my_info.fleetfootedness));
			break;
		case 5:
			draw_text(starting_x+10,starting_y-25,string("fleetfootedness:{0}",my_info.fleetfootedness));
			draw_text(starting_x+10,starting_y-45,string("wrist strength:{0}",my_info.wrist_strength));
			draw_text(starting_x+10,starting_y-65,string("tolerance:{0}",my_info.tolerance));
			draw_text(starting_x+10,starting_y-85,string("charisma:{0}",my_info.charisma));
			draw_text(starting_x+10,starting_y-105,string("speed:{0}",my_info._speed));
			break;
		default:
			draw_text(starting_x+10,starting_y-25,string("fleetfootedness:{0}",my_info.fleetfootedness));
			draw_text(starting_x+10,starting_y-45,string("charisma:{0}",my_info.charisma));
			draw_text(starting_x+10,starting_y-65,string("fishing:{0}",my_info.fishing));
			draw_text(starting_x+10,starting_y-85,string("haggling:{0}",my_info.haggling));
			draw_text(starting_x+10,starting_y-105,string("slay:{0}",my_info.slay));
			break;
	
	}
}

//show name and pronouns a lil under
draw_set_color(c_white)
draw_text(x+10,y+80,my_info._name)
draw_text(x+10,y+100,my_info._pronouns)



draw_self()
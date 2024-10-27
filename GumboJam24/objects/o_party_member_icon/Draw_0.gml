if(my_info == pointer_invalid)
{
	my_info = new Person()
	my_info.randomize_info();
}

if(show_stats)
{
	var _x = x+100;
	var _y = y + 20;
	
	draw_text(_x,y,string(my_info._name));
	
	draw_text(_x,_y,string("fashionability:{0}",my_info.fashionability));
	draw_text(_x,_y +(vertical_padding) ,string("fleetfootedness:{0}",my_info.fleetfootedness));
	draw_text(_x,_y +(vertical_padding*2) ,string("languages learned:{0}",my_info.languages_learned));
	draw_text(_x,_y +(vertical_padding*3) ,string("haggling:{0}",my_info.haggling));
	draw_text(_x,_y +(vertical_padding*4) ,string("charisma:{0}",my_info.charisma));
	draw_text(_x,_y +(vertical_padding*5) ,string("evil:{0}",my_info.evil));
	draw_text(_x,_y +(vertical_padding*6) ,string("languages learned:{0}",my_info.languages_learned));
	draw_text(_x,_y +(vertical_padding*7) ,string("haggling:{0}",my_info.haggling));
	draw_text(_x,_y +(vertical_padding*8) ,string("charisma:{0}",my_info.charisma));
	draw_text(_x,_y +(vertical_padding*9) ,string("evil:{0}",my_info.evil));
	draw_text(_x,_y +(vertical_padding*10) ,string("fishing:{0}",my_info.fishing));
	draw_text(_x,_y +(vertical_padding*11) ,string("patience:{0}",my_info.patience));
	draw_text(_x,_y +(vertical_padding*12) ,string("intuition:{0}",my_info.intuition));
	draw_text(_x,_y +(vertical_padding*13) ,string("singing:{0}",my_info.singing));
	draw_text(_x,_y +(vertical_padding*14) ,string("greed:{0}",my_info.greed));
	draw_text(_x,_y +(vertical_padding*15) ,string("peculiarity:{0}",my_info.peculiarity));
	draw_text(_x,_y +(vertical_padding*16) ,string("tolerance:{0}",my_info.tolerance));
	draw_text(_x,_y +(vertical_padding*17) ,string("synergy:{0}",my_info.synergy));
	draw_text(_x,_y +(vertical_padding*18) ,string("brittleness:{0}",my_info.brittleness));
	draw_text(_x,_y +(vertical_padding*19) ,string("meticulousness:{0}",my_info.meticulousness));
	draw_text(_x,_y +(vertical_padding*20) ,string("child-like wonder:{0}",my_info.child_like_wonder));
	draw_text(_x,_y +(vertical_padding*21) ,string("security:{0}",my_info.security));
	draw_text(_x,_y +(vertical_padding*22) ,string("wrist strength:{0}",my_info.wrist_strength));
	draw_text(_x,_y +(vertical_padding*23) ,string("slay:{0}",my_info.slay));


}

draw_self()
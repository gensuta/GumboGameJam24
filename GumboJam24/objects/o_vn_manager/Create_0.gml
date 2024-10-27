initialize_vn()


for(var i = 0; i < ds_list_size(global._party_members);i++)
{
	var p = instance_create_layer(x+50,y+(200*i+1),"Instances",o_party_member_icon);
	
	with(p)
	{
		my_info = ds_list_find_value(global._party_members,i);
	}

}


run_node("Riddle_Troll_Start")

//TODO: Make a list of all starter nodes 
// Create stats in yarnspinner
//Create helper functions to set random stats to random characters
// 
var mem_num = ds_list_find_index(global._party_members, my_info);

if(ds_list_find_value(global._party_members, mem_num))
{
	image_blend = c_green;

}
else
{
	image_blend = c_white;
}


show_stats = false
current_stats_shown = 0;
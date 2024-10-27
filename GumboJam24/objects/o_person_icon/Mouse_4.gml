var mem_num = ds_list_find_index(global._party_members, my_info);
if(mem_num > -1)
{
	ds_list_delete(global._party_members, mem_num);
	image_blend = c_white;
}
else
{
	if(ds_list_size(global._party_members) < 3)
	{
		ds_list_add(global._party_members,my_info);
		image_blend = c_green;
	}
	else
	{
		show_debug_message("no")
	}

}
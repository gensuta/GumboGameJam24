//HACKY lol
var mem_num = ds_list_find_index(global._party_members, my_info);

if(!ds_list_find_value(global._party_members, mem_num))
{
	instance_destroy()
}
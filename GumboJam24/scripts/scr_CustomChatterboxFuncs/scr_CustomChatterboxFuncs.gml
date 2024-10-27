
function init_custom_functions()
{
	ChatterboxAddFunction("GetMostFashionable",get_most_fashionable);

}


function get_most_fashionable(){

	
	var most_fashionable = -1;
	var f = -1;
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.fashionability > f)
		{
			f = p.fashionability;
			most_fashionable = i;
		}

	}
	
	return ds_list_find_value(global._party_members,most_fashionable)._name;
	
}
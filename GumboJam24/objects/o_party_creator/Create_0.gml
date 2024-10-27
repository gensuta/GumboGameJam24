global._party_members = ds_list_create()

potential_members = ds_list_create();
starting_x= room_width/2 - 300;
starting_y = room_height/2 - 100;

horizontal_padding = 350;
vertical_padding = 300;
max_members_per_row = 3;

var _x = starting_x;
var _y = starting_y;
var i = 3;
//create 5 randos to show the player!
while (ds_list_size(potential_members) < 5)
{
	var _new_person = new Person();
	_new_person.randomize_info();
	
	ds_list_add(potential_members,_new_person);
	
	
	var _new_member = instance_create_layer(_x,_y,"Instances",o_person_icon);
	
	with(_new_member)
	{
		depth = i;  //	THIS IS SO HACKY IM SORRY
		my_info = _new_person
	}
	_x += horizontal_padding;
	i--;
	if(ds_list_size(potential_members) % max_members_per_row == 0)
	{
		_x = starting_x;
		_y += vertical_padding;
	}
}



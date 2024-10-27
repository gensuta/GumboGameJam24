
function init_custom_functions()
{
	ChatterboxAddFunction("GetMostFashionable",get_most_fashionable);
	ChatterboxAddFunction("GetPlayersLeft",get_players_left);
	ChatterboxAddFunction("LoseCharacter",lose_character);
	ChatterboxAddFunction("AllFleetFooted",all_fleetfooted);
	ChatterboxAddFunction("GetSlowest",get_slowest);
	ChatterboxAddFunction("GetSlowestPronoun",get_slowest_pronoun);
	ChatterboxAddFunction("RollDice",roll_dice);
	ChatterboxAddFunction("GetMostLang",get_most_lang);
	ChatterboxAddFunction("GetMostHag",get_most_hag);
	ChatterboxAddFunction("HasHighHaggling",has_high_haggling);
	ChatterboxAddFunction("HasHighLang",has_high_lang);
	ChatterboxAddFunction("LoseSnack",lose_snack);
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


function get_most_lang()
{
	var person = -1;
	var langs = -1;
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.languages_learned > langs)
		{
			langs = p.languages_learned;
			person = i;
		}

	}
	
	return ds_list_find_value(global._party_members,person)._name;
	
}

function get_most_hag()
{
	var person = -1;
	var langs = -1;
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.haggling > langs)
		{
			langs = p.haggling;
			person = i;
		}

	}
	
	return ds_list_find_value(global._party_members,person)._name;
	
}

//more than 30
function has_high_lang()
{

	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.languages_learned >= 30)
		{
			return true;
		}

	}
	return false;
}

//70+
function has_high_haggling()
{
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.haggling >= 70)
		{
			return true;
		}

	}
	return false;

}

//all 50+
function all_fleetfooted()
{

	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.fleetfootedness < 50)
		{
			return false;
		}

	}
	return true;

}

function get_slowest()
{
	
	var person = -1;
	var fleetfootedness = 1000;
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.fleetfootedness < fleetfootedness)
		{
			fleetfootedness = p.fleetfootedness;
			person = i;
		}

	}
	
	return ds_list_find_value(global._party_members,person)._name;
}

function get_slowest_pronoun()
{
	
	var person = -1;
	var fleetfootedness = 1000;
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p.fleetfootedness < fleetfootedness)
		{
			fleetfootedness = p.fleetfootedness;
			person = i;
		}

	}
	
	var pronoun = ds_list_find_value(global._party_members,person)._secondary;
	//TODO: Chop up double pronouns or just remove them from the list
	
	return pronoun;
}

//num
function get_players_left()
{
	return ds_list_size(global._party_members) +1; //+1 because the player isn't in there
}

//30%, 50% etc etc
function roll_dice(percent_to_beat)
{
	randomize()
	var num = irandom(100)
	return num <= percent_to_beat[0];
}

function lose_character(_name)
{
	var num = -1;
	for(var i = 0; i < ds_list_size(global._party_members);i++)
	{
		var p = ds_list_find_value(global._party_members,i);
		if(p._name == _name[0])
		{
			num = i;
		}

	}
	
	ds_list_delete(global._party_members,num);
}

function lose_snack(num)
{
	global.snacks -= num[0];
}
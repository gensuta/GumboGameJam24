// holds the person class
function Person() constructor{
	_name = "";
	_pronouns = "";
	//add the 25 stats here
	//NOTE: This is hacky. SOrry
	
	fashionability = 0;
	fleetfootedness = 0;
	languages_learned = 0
	haggling = 0;
	charisma = 0;
	evil = 0
	fishing = 0;
	patience = 0;
	intuition = 0;
	singing = 0;

	greed =0;
	peculiarity =0;
	tolerance =0;
	synergy =0;
	brittleness = 0;
	meticulousness =0; 
	child_like_wonder = 0;
	security = 0;
	wrist_strength =0;
	slay = 0;
	_speed = 0;
	
	static randomize_info = function()
	{
		randomize()
		
		_name = get_random_name(); // TODD: Enable random naming via ini maybe?
		_pronouns = get_random_pronouns()
		fashionability = irandom(100);
		fleetfootedness = irandom(100);
		languages_learned = irandom(100);
		haggling = irandom(100);
		charisma = irandom(100);
		evil = irandom(100);
		fishing = irandom(100);
		patience = irandom(100);
		intuition = irandom(100);
		singing = irandom(100);

		greed = irandom(100);
		peculiarity = irandom(100);
		tolerance = irandom(100);
		synergy = irandom(100);
		brittleness = irandom(100);
		meticulousness = irandom(100);
		child_like_wonder = irandom(100);
		security = irandom(100);
		wrist_strength = irandom(100);
		slay = irandom(100);
		_speed = irandom(100);
	}
}


//hacky-ass functions below
function get_random_name()
{
	var names = "Aarya,Addison,Adrian,Aiden,Ainsley,Alby,Alex,Alexis,Ali,Amari,Andy,Angel,Archer,Ari,Arya,Ash,Ashley,Aspen,Aubrey,"
	+"August,Austen,Avery,Bailey,Bay,Billy,Blaine,Blair,Blake,Bobbie,Brady,Brett,Brook,Brooklyn,Caelan,Cameron,Campbell,Carmen,"
	+"Carroll,Carson,Casey,Cassidy,Celyn,Charlie,Chris,Clay,Cody,Corey,Dakota,Dale,Dallas,Dana,Dane,Darrel,Daryl,Delta,Devin,"
	+"Devon,Dorian,Drew,Dylan,Easton,Eddie,Eden,Eli,Ellery,Elliott,Emerson,Emery,Erin,Fabian,Finley,Florian,Flynn,Frances,Francis,"
	+"Frankie,Gabriel,Glenn,Gray,Hadley,Harley,Harper,Hayden,Hero,Hudson,Hunter,Indiana,Jade,James,Jamie,Jayden,Jean,"
	+"Jesse,Jessie,Jordan,Jules,Julian,Justice,Kaden,Kadin,Kai,Karter,Keegan,Kelly,Kelsey,Kendall,Kennedy,Kerry,Kyle,"
	+"Lake,Landry,Lane,Lee,Lincoln,Linden,Logan,London,Lonnie,Lou,Lucian,Lumi,Mackenzie,Madison,Marley,Mason,Max,Maxwell,Micah,"
	+"Monroe,Montana,Morgan,Moriah,Nevada,Nico,Noel,Oakley,Ode,Ore,Paris,Parker,Pat,Payton,Perry,Peyton,Phoenix,Piper,Quinn,Raphael,"
	+"Ray,Reagan,Reed,Reese,Remy,Riley,River,Roan,Robin,Rory,Roux,Rowan,Rudy,Ryan,Sage,Sam,Samar,Sawyer,Scout,Sean,Shawn,Sky,Skylar,Spencer,Stevie,Sunny,Sydney,"
	+"Tanner,Tatum,Taylor,Terry,Toby,Toni,Tory,Tru,Tyler,Umber,Unique,Val,Vesper,Wallace,West,Winter,Wyatt,Wynne,Xen,Xoan,Yael,Zion"
	var split_names = string_split(names,",");
	
	
	return array_get(split_names,irandom(array_length(split_names)-1))
}

function get_random_pronouns()
{
	var pronouns = "she,he,they,xe,ze,she/they,he/they,fae,bun,it,she/hyr"
	var split_pronouns = string_split(pronouns,",");

	return array_get(split_pronouns,irandom(array_length(split_pronouns)-1))
}
function Stats(_health,_thirst,_energy) constructor{
	health = _health
	thirst = _thirst
	energy = _energy
	
	// test shit ignore this func
	static is_thirsty = function()
	{
		if(thirst < 10)
		{
			return true
		}
	}
}
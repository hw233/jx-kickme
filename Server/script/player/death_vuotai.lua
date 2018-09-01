
function OnDeath(nDesNpcIndex)
	SetDeathScript("")
	SetPunish(0)
	SetCurCamp(GetCamp())
	Revive()
end;

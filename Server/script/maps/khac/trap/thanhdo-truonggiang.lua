
function main(sel)
	if (GetLevel() >= 10) then
		SetFightState(1)		--
		if(NewWorld(9,2405,5540) == 1) then
        AddWayPoint(23)
		end
	else
	Talk(1,"",15645)--phia truoc nguy hiem
    end
end;

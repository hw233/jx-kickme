
function main(sel)
	if (GetLevel() >= 10) then
		SetFightState(1)		--
		if(NewWorld(3,1129,3718) == 1) then	--	
        AddWayPoint(2)
		end
	else
	Talk(1,"",15645)--phia truoc nguy hiem
    end
end;

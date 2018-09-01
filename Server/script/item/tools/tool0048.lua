--Create by Ken Nguyen
--Que hoa tuu - may man dong doi


function useitem(nItemIdx)
	local nMemCount = GetTeamSize();
	if (nMemCount == 0 ) then
		AddSkillState(450, 20,32400)
		return
	end
	local nTeamId = GetTeam();
	local nIndex;
	for i = 0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			AddSkillState(450, 20, 32400);
		end
	end
end;
		
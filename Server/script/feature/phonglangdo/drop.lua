
function DropRate(NpcIndex)
	local nBoss = GetBossType(NpcIndex);
	if(nBoss == 0) then
		if(random(1,10) < 6) then
		return end
		DropNpcItem(NpcIndex,0,1,2,0,5,5,0,0)
	else--boss
		DropNpcItem(NpcIndex, 0, 5,28,0,0,5,0,0) --bao ruong
		DropNpcItem(NpcIndex, 0, 5,28,0,0,5,0,0) --bao ruong
	end
	
end

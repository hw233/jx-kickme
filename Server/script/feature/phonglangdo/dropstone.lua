ITEMLIST = {{2,13},{5,3},{6,1},{7,13},{8,1}}
function DropRate(NpcIndex)
	local nRand;
	if(GetBossType(NpcIndex) > 0) then
		nRand = random(getn(ITEMLIST))
		DropNpcItem(NpcIndex, 1, 0,ITEMLIST[nRand][1],RANDOM(ITEMLIST[nRand][2]),random(9,10),RANDOM(4),random(4,6),0)
		if(random(10) > 8) then
		DropNpcItem(NpcIndex, 0, 3,0,0,random(3),5,1,0)
		end
	return end
	nRand = random(5)
	if(nRand > 2) then
	return end
	local Hien = {1,3,5}
	local An = {2,4,6}
	if(nRand == 1) then
	DropNpcItem(NpcIndex, 0, 3,Hien[random(3)],0,0,5,1,0)
	else
	DropNpcItem(NpcIndex, 0, 3,An[random(3)],0,0,RANDOM(4),1,0)
	end
end

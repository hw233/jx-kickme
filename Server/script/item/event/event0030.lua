--Script Created by Ken Nguyen
--hat thien tue
Include( "\\script\\item\\checkmapid.lua" )
function useitem(nItemIdx)
	if(CheckMapForTP() == 1) then
	Msg2Player("N¬i ®©y kh«ng thÝch hîp ®Ó trång c©y!")
	return end;
	Msg2Player("B¹n ®· trång ®­îc 1 c©y thiªn tuÕ.");
	local w,x,y = GetWorldPos();
	local nRand = RANDOM(1550,1554);
	local id = AddNpc(nRand,1,SubWorldID2Idx(w),x,y,0);
	SetNpcCurCamp(id, 6);
	SetNpcScript(id, "\\script\\feature\\npcevent\\thientue.lua");
	SetNpcLifeTime(id,2400);
	RemoveItem(nItemIdx,1);
	if(nRand == 1553) then
	AddOwnExp(10000000)
	AddCountNews2("Chóc mõng "..GetName().." ®· trång ®­îc Thiªn TuÕ ThÞnh V­îng",3);
	else
	AddOwnExp(6000000)
	end
end

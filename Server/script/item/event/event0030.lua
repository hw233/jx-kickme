--Script Created by Ken Nguyen
--hat thien tue
Include( "\\script\\item\\checkmapid.lua" )
function useitem(nItemIdx)
	if(CheckMapForTP() == 1) then
	Msg2Player("N�i ��y kh�ng th�ch h�p �� tr�ng c�y!")
	return end;
	Msg2Player("B�n �� tr�ng ���c 1 c�y thi�n tu�.");
	local w,x,y = GetWorldPos();
	local nRand = RANDOM(1550,1554);
	local id = AddNpc(nRand,1,SubWorldID2Idx(w),x,y,0);
	SetNpcCurCamp(id, 6);
	SetNpcScript(id, "\\script\\feature\\npcevent\\thientue.lua");
	SetNpcLifeTime(id,2400);
	RemoveItem(nItemIdx,1);
	if(nRand == 1553) then
	AddOwnExp(10000000)
	AddCountNews2("Ch�c m�ng "..GetName().." �� tr�ng ���c Thi�n Tu� Th�nh V��ng",3);
	else
	AddOwnExp(6000000)
	end
end

-- Script Ken Nguyen
Include("\\script\\header\\event_endtime.lua");
ITEMLIST = {5,2,13,0,1,3,1,13,1,1}
MONEY = 350
function DropRate(NpcIndex)
local btype = GetBossType(NpcIndex);
local ser = GetNpcSer(NpcIndex);
local pluck = GetLucky(); --may man cua nguoi choi
local maxlev = 4;
local nSel = random(0,10);
local nItemIdx = 0;
if(RANDOM(1000) <= pluck) then
maxlev = 7
end
----------------For blue boss-----------------------------------------------------------
if(btype == 1) then--boss xanh
local bluedetail,blueparti,dropnum;
dropnum = 6; --so' luong. cuc. do` roi
for i=1,dropnum do
	nSel = random(0,10);
	if(nSel < 5) then
		DropNpcMoney(NpcIndex,MONEY)
	elseif(nSel == 9) then
		nItemIdx = ItemSetAdd(0, 2,12,0,0,5,0,0);
		SetItemPickDel(nItemIdx,1)
		DropNpcItemID(NpcIndex, nItemIdx);
	else
		if (RANDOM(1000)==999) then
			DropNpcItem(NpcIndex, 0, 2,7,0,0,5,0,0);
		else
		bluedetail = RANDOM(9);
		blueparti = RANDOM(ITEMLIST[bluedetail+1]);
		DropNpcItem(NpcIndex, 0, 0,bluedetail,blueparti,RANDOM(6,8),ser,pluck,
		RANDOM(1,maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev));
		end
	end
end
return end
-----------------------------------------------------------------------------------------
if(nSel > 5) then	--khong rot
return end
----------------------------------------------------------------------------------------
local minluck = 0;
local detail = RANDOM(9);
local parti = RANDOM(ITEMLIST[detail+1]);
	if(nSel < 2) then
		DropNpcMoney(NpcIndex,MONEY)
	elseif(nSel == 5) then
		nItemIdx = ItemSetAdd(0, 2,4,0,0,5,0,0);
		SetItemPickDel(nItemIdx,1)
		DropNpcItemID(NpcIndex, nItemIdx);
	else
		if(RANDOM(pluck) > 0) then
		minluck = 1;
		end
		DropNpcItem(NpcIndex, 0, 0,detail,parti,RANDOM(4,8),ser,pluck,
		RANDOM(minluck,maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev))
	end
	--event----------------
	dropevent();
	-------------------------------------------------------------------------------
end
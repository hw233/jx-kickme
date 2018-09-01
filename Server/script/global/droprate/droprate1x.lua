-- Script Ken Nguyen

ITEMLIST = {5,2,13,0,1,3,1,13,1,1}
MONEY = 50
function DropRate(NpcIndex)
local btype = GetBossType(NpcIndex);
local ser = GetNpcSer(NpcIndex);
local pluck = GetLucky(); --may man cua nguoi choi
local maxlev = 1;
local nSel = random(0,10);
local nItemIdx = 0;
if(RANDOM(1000) <= pluck) then
maxlev = 2
end
----------------For blue boss-----------------------------------------------------------
if(btype == 1) then--boss xanh
local bluedetail,blueparti,dropnum;
dropnum = 5; --so' luong. cuc. do` roi
for i=1,dropnum do
	nSel = random(0,10);
	if(nSel < 5) then
		DropNpcMoney(NpcIndex,MONEY)
	elseif(nSel == 9) then
		nItemIdx = ItemSetAdd(0, 2,12,0,0,5,0,0);
		SetItemPickDel(nItemIdx,1)
		DropNpcItemID(NpcIndex, nItemIdx);
	else
		bluedetail = RANDOM(9);
		blueparti = RANDOM(ITEMLIST[bluedetail+1]);
		DropNpcItem(NpcIndex, 0, 0,bluedetail,blueparti,RANDOM(1,2),ser,pluck,
		RANDOM(1,maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev));
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
		DropNpcItem(NpcIndex, 0, 0,detail,parti,RANDOM(1,2),ser,pluck,
		RANDOM(minluck,maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev),RANDOM(maxlev))
	end
end

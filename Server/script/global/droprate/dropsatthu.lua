Include("\\Script\\library\\worldlibrary.lua")
Include("\\Script\\header\\taskid.lua")
Include("\\script\\header\\event_endtime.lua");
ITEMLIST = {5,2,13,0,1,3,1,13,1,1}
SATTHU_EXP = 150000
function DropRate(NpcIndex)
local nValue = GetTask(TASK_NVST);
local nNum = GetNumber2(nValue,1);
    if (nNum == GetNpcValue(NpcIndex)) then
    local ser = GetNpcSer(NpcIndex);
    local pluck = GetLucky(); --may man cua nguoi choi
    local maxlv = RANDOM(5,10);
    local bDropSpecial = 0;
    local nKindSpecial;
	nValue = SetNumber2(nValue,1,0);
    SetTask(TASK_NVST,nValue);
	
	nValue = GetTask(TASK_RESET);
	local nTimes = GetNumber2(nValue,4);
	nValue = SetNumber2(nValue,4,nTimes+1);
    SetTask(TASK_RESET,nValue);
	--Add them gi thi bo vao day lun
    AddOwnExp(SATTHU_EXP)
    AddMat(ser+22,1,0,ser)--add theo he ngu hanh
	if(nTimes == 9) then
		if(CheckRoom(2,2) == 1) then
			for i=1,2 do
			local TTL = ItemSetAdd(0,2,45,0,0,5,0)
			LockItem(TTL)
			AddItemID(TTL)
			TTL = ItemSetAdd(0,5,29,0,0,5,0)
			LockItem(TTL)
			AddItemID(TTL)
			end
			Msg2Player("<color=green>B¹n nhËn ®­îc phÇn th­ëng s¸t thñ.")
		end
	end
	---------------------------------
    local bluedetail,blueparti,dropnum;
    dropnum = 8; --so' luong. cuc. do` roi
	if(RANDOM(500) <= pluck) then
		maxlv = 10;
	end
	if(RANDOM(300) == 299) then
		bDropSpecial = 1;
		nKindSpecial = RANDOM(8);
	end
	--phan rot vat pham trang bi-----------------
	for i=1,dropnum do
		bluedetail = RANDOM(9);
		blueparti = RANDOM(ITEMLIST[bluedetail+1]);
		DropNpcItem(NpcIndex, ITEM_NORMAL, 0,bluedetail,blueparti,RANDOM(7,10),ser,pluck,
		RANDOM(3,maxlv),RANDOM(3,maxlv),RANDOM(1,maxlv),RANDOM(maxlv),RANDOM(maxlv),RANDOM(maxlv));
	end
	--------------------------------------------
	--phan rot vat pham dac biet--
	if ( bDropSpecial == 1) then
		if (nKindSpecial == 0) then
		--	DropNpcItem(NpcIndex, ITEM_NORMAL, nguyenlieu,RANDOM(13,15),0,0,5,0,0) --thuy tinh
		--lseif (nKindSpecial == 1) then
		--	DropNpcItem(NpcIndex, ITEM_NORMAL, nguyenlieu,20,0,0,5,0,0) --tinh hong bao thach
		--lseif (nKindSpecial == 2) then
		--	DropNpcItem(NpcIndex, ITEM_NORMAL, vatdung,RANDOM(2),0,0,5,1,0)--phuc duyen
		--lseif (nKindSpecial == 3) then
			DropNpcItem(NpcIndex, ITEM_NORMAL, vatdung,RANDOM(45,48),0,0,5,1,0)--cac loai lo
		elseif (nKindSpecial == 1) then
			DropNpcItem(NpcIndex, ITEM_NORMAL, vatdung,RANDOM(54,58),0,0,5,0,0);--linhtinh
		elseif (nKindSpecial == 2) then
			DropNpcItem(NpcIndex, 0, 4,12,0,0,5,0,0) --bikip cui`
		elseif (nKindSpecial == 3) then
			DropNpcItem(NpcIndex, 0, 4,18,0,0,5,0,0) --bikip cui`
		elseif (nKindSpecial == 4) then
			DropNpcItem(NpcIndex, 0, 4,20,0,0,5,0,0) --bikip cui`
		else
			DropNpcItem(NpcIndex, ITEM_NORMAL, vatdung,7,0,0,5,0,0);--phi phong
		end
	end
	--event----------------
	addevent(4)
	-----------------------------
	end
end

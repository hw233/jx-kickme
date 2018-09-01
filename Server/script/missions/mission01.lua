
--Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\liendau.lua");
--co le chi co admin chay ham nay
function PlayerBeginMission()
end;
--co le chi co admin chay ham nay
function PlayerRunMission()
end;
--co le chi co admin chay ham nay
function PlayerEndMission()
end;

--loai bo player ra khoi mission thi se chay ham nay, thoat ra cung la loai bo
function OnLeave(nPlayerIndex)
	--PlayerIndex = nPlayerIndex
	--SubWorld la bien' toan` cau` luu chi so map, phai doi ra mapid
	if(SubWorld == SubWorldID2Idx(380)) then
		tongkim_out(nPlayerIndex)
	elseif(SubWorld == SubWorldID2Idx(337)) then
		phonglang_out(nPlayerIndex)
	else
		for i=1,getn(MAP_VUOTAI) do
			if(SubWorld == SubWorldID2Idx(MAP_VUOTAI[i])) then
			vuotai_out(nPlayerIndex)
			return end
		end
		for i=1,getn(MAP_LIENDAU) do
			if(SubWorld == SubWorldID2Idx(MAP_LIENDAU[i])) then
			liendau_out(nPlayerIndex)
			return end
		end
	end
	
end;

function tongkim_out(nPlayerIndex)
	PlayerIndex = nPlayerIndex;
		local szName = GetName();
		local szLeaveRank = GetRankEx();
		Msg2MSAll(1, format("%s <color=yellow>%s<color> rêi khái chiÕn tr­êng", szLeaveRank,szName)); --thong bao roi khoi~
		local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
		if(nPlayerDataIdx > 0) then
			SetPMParam(1,nPlayerDataIdx,9,0);--lien tram hien tai
			SetPMParam(1,nPlayerDataIdx,10,0);--tich luy LT hien tai
		end
		local nTongMem = GetMSGroupCount(1,0);
		local nKimMem  = GetMSGroupCount(1,1);
		for i=1,GetMSPlayerCount(1) do
			if(GetPMParam(1, i, 0) == 1) then
				PlayerIndex = MSDIdx2PIdx(1, i);
				SendReport(1,nTongMem,nKimMem,0);
			end
		end
end;

function vuotai_out(nPlayerIndex)
	PlayerIndex = nPlayerIndex;
	local szName = GetName();
	Msg2MSAll(1, format("%s rêi khái khu vùc khiªu chiÕn.",szName)); --thong bao roi khoi~
end;

function liendau_out(nPlayerIndex)
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	local nRest = floor(GetMSRestTime(1,2)/18);
	CloseMission(1)
	if(nPlayerIndex == nP1) then
		nP1 = nP2;
		nP2 = nPlayerIndex;
	end
	PlayerIndex = nP1;
	local nGroup = GetTask(TASK_LIENDAU) - 1;
	local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
	n2 = SetNumber3(n2,1,GetNumber3(n2,1)+1);
	n3 = n3 + LIENDAU_THANG;
	if(nRest > 0) then
		n4 = n4 + 480 - nRest;
	end
	SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
	AddHonor(LIENDAU_THANG);
	NewWorld(396,1540,3050);
	SetCurCamp(GetCamp())
	SetPunish(0)
	SetFightState(0)
	SetPKMode(0,0)
	SetDeathScript("")
	SetDmgScript("")
	LockMoveItem(0)
	Msg2Player(LIENDAU_MSGBOCUOC)
	PlayerIndex = nP2;
	local DesID = GetUUID();
	DesID = FindDataId(DesID);
	if(DesID >= 0) then
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(DesID);
		n2 = SetNumber3(n2,3,GetNumber3(n2,3)+1);
		if(nRest > 0) then
		n4 = n4 + 480 - nRest;
		end
		SetDataGr(DesID, n1,n2,n3,n4,n5,Name1,Name2);
	end
end;

function phonglang_out(nPlayerIndex)
	PlayerIndex = nPlayerIndex;
	local szName = GetName();
	Msg2MSAll(1, format("%s kh«ng may tö vong.",szName)); --thong bao roi khoi~
end;

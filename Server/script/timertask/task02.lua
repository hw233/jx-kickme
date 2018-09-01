Include("\\script\\library\\worldlibrary.lua")
Include("\\script\\header\\taskid.lua");
Include("\\script\\maps\\tongkim\\trap\\kim.lua");
Include("\\script\\maps\\tongkim\\trap\\tong.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\liendau.lua");
Include("\\script\\header\\phonglangdo.lua");
function OnTimer()
	StopTimer();
	if(SubWorld == SubWorldID2Idx(380)) then	--day la gio hen tu dong day~ ra ngoai chien truong khi o trong doanh trai qua lau
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
		if((GetPMParam(1, nPlayerDataIdx, 0) == 1) and (GetPMParam(1, nPlayerDataIdx, 1) == 1)) then --neu co online va dang trong chien dau
			if(GetMSIdxGroup(1, nPlayerDataIdx) ==  0) then --tong
				tong_ratran()
			else	--kim
				kim_ratran()
			end
			SetFightState(1)
		end
	end
end;

function OnMissionTimer(nIndex)
	if(SubWorld == SubWorldID2Idx(380)) then
		ontime_tongkim(nIndex)
	elseif(SubWorld == SubWorldID2Idx(337)) then
		ontime_phonglangdo(nIndex)
	else
		for i=1,getn(MAP_VUOTAI) do
			if(SubWorld == SubWorldID2Idx(MAP_VUOTAI[i])) then
			ontime_vuotai(nIndex)
			return end
		end
		for i=1,getn(MAP_LIENDAU) do
			if(SubWorld == SubWorldID2Idx(MAP_LIENDAU[i])) then
			ontime_dautruongliendau(nIndex)
			return end
		end
	end
end;

function ontime_tongkim(nIndex)
	StopMissionTimer(nIndex,2);
	--tong soai
	local nNpcIdx;
	nNpcIdx = AddNpcNew(636,100,380,1332*32,3443*32,"\\script\\feature\\tongkim\\die_nguyensoai.lua",
		nil,nil,1,"555",0,5000000,100,8000,1000,nil,nil,nil,nil,90,nil,nil);
	AddMSNpc(nIndex,nNpcIdx);
	SetNpcDmgEx(nNpcIdx,0,0,0,1500,0,0);
	--kim soai
	nNpcIdx = AddNpcNew(642,100,380,1571*32,3197*32,"\\script\\feature\\tongkim\\die_nguyensoai.lua",
		nil,nil,1,"555",0,5000000,100,8000,1000,nil,nil,nil,nil,90,nil,nil);
	AddMSNpc(nIndex,nNpcIdx);
	SetNpcDmgEx(nNpcIdx,0,0,0,1500,0,0);
	Msg2MSAll(1,"Nguyªn so¸i ®· xuÊt hiÖn vµ trùc tiÕp chiÕn ®Êu!!!")
end;

function ontime_vuotai(nIndex)
	StopMissionTimer(nIndex,2);--tat hen gio so 2
	local nCount = GetMSPlayerCount(1);
	for i=1,nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online thi tinh diem
			PlayerIndex = MSDIdx2PIdx(1, i);
			SetCurCamp(GetCamp())
			SetFightState(0)
			SetPunish(0)
			SetDeathScript("")
			local nTask = GetNumber(GetTask(TASK_NVST),9);
			NewWorld(THANHTHI_RETURN[nTask][1],
			THANHTHI_RETURN[nTask][2],THANHTHI_RETURN[nTask][3])
			Msg2Player("Thêi gian ®· hÕt! NhiÖm vô thÊt b¹i!")
		end
	end
	SetMissionV(0,0);
	SetMissionV(1,0);
	CloseMission(nIndex)
end;

function ontime_dautruongliendau(nIndex)
	StopMissionTimer(nIndex,2);--tat hen gio so 2
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	local nDmg1 = GetPMParam(1,1,1);
	local nDmg2 = GetPMParam(1,2,1);
	CloseMission(nIndex)
	if(nDmg1 > nDmg2) then
		PlayerIndex = nP2;
		local nGroup = GetTask(TASK_LIENDAU) - 1;
		local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber3(n2,1,GetNumber3(n2,1)+1);
		n3 = n3 + LIENDAU_THANG;
		n4 = n4 + 480;
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
		Msg2Player(LIENDAU_MSGWINTIME)
		PlayerIndex = nP1;
		nGroup = GetTask(TASK_LIENDAU) - 1;
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber3(n2,3,GetNumber3(n2,3)+1);
		n4 = n4 + 480;
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		NewWorld(396,1540,3050);
		SetCurCamp(GetCamp())
		SetPunish(0)
		SetFightState(0)
		SetPKMode(0,0)
		SetDeathScript("")
		SetDmgScript("")
		LockMoveItem(0)
	elseif(nDmg1 < nDmg2) then
		PlayerIndex = nP1;
		local nGroup = GetTask(TASK_LIENDAU) - 1;
		local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber3(n2,1,GetNumber3(n2,1)+1);
		n3 = n3 + LIENDAU_THANG;
		n4 = n4 + 480;
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
		Msg2Player(LIENDAU_MSGWINTIME)
		PlayerIndex = nP2;
		nGroup = GetTask(TASK_LIENDAU) - 1;
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber3(n2,3,GetNumber3(n2,3)+1);
		n4 = n4 + 480;
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		NewWorld(396,1540,3050);
		SetCurCamp(GetCamp())
		SetPunish(0)
		SetFightState(0)
		SetPKMode(0,0)
		SetDeathScript("")
		SetDmgScript("")
		LockMoveItem(0)
	else
		PlayerIndex = nP1;
		local nGroup = GetTask(TASK_LIENDAU) - 1;
		local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber3(n2,2,GetNumber3(n2,2)+1);
		n3 = n3 + LIENDAU_HOA;
		n4 = n4 + 480;
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		AddHonor(LIENDAU_HOA);
		NewWorld(396,1540,3050);
		SetCurCamp(GetCamp())
		SetPunish(0)
		SetFightState(0)
		SetPKMode(0,0)
		SetDeathScript("")
		SetDmgScript("")
		LockMoveItem(0)
		Msg2Player(LIENDAU_MSGSAME)
		PlayerIndex = nP2;
		nGroup = GetTask(TASK_LIENDAU) - 1;
		n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
		n2 = SetNumber3(n2,2,GetNumber3(n2,2)+1);
		n3 = n3 + LIENDAU_HOA;
		n4 = n4 + 480;
		SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
		AddHonor(LIENDAU_HOA);
		NewWorld(396,1540,3050);
		SetCurCamp(GetCamp())
		SetPunish(0)
		SetFightState(0)
		SetPKMode(0,0)
		SetDeathScript("")
		SetDmgScript("")
		LockMoveItem(0)
		Msg2Player(LIENDAU_MSGSAME)
	end
end;

function ontime_phonglangdo(nIndex)
	StopMissionTimer(nIndex,2);
	release_phonglangboss();
end;

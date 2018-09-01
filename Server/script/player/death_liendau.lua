Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\liendau.lua");
function OnDeath(nDesNpcIdx)
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	local nRest = floor(GetMSRestTime(1,2)/18);
	CloseMission(1)
	if(PlayerIndex == nP1) then
		nP1 = nP2;
		nP2 = PlayerIndex;
	end
	PlayerIndex = nP1;
	local nGroup = GetTask(TASK_LIENDAU) - 1;
	local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
	local winname = Name1;
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
	Msg2Player(LIENDAU_MSGWIN)
	PlayerIndex = nP2;
	nGroup = GetTask(TASK_LIENDAU) - 1;
	n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(nGroup);
	n2 = SetNumber3(n2,3,GetNumber3(n2,3)+1);
	if(nRest > 0) then
		n4 = n4 + 480 - nRest;
	end
	SetDataGr(nGroup, n1,n2,n3,n4,n5,Name1,Name2);
	SetCurCamp(GetCamp())
	SetPunish(0)
	SetPKMode(0,0)
	SetDeathScript("")
	SetDmgScript("")
	LockMoveItem(0)
	Revive()
	Msg2SubWorld(format("<color=cyan>Li�n ��u[%s] chi�n th�ng [%s]",winname, Name1));
end;

function GetDamage(nDamage)
	local nP1 = MSDIdx2PIdx(1, 1);
	local nP2 = MSDIdx2PIdx(1, 2);
	local nTotalDmg;
	if(PlayerIndex == nP1) then
		nTotalDmg = GetPMParam(1,1,1)+nDamage;
		SetPMParam(1,1,1,nTotalDmg)
	else
		nTotalDmg = GetPMParam(1,2,1)+nDamage;
		SetPMParam(1,2,1,nTotalDmg)
	end
	Msg2Player(format("B�n b� s�t th��ng %d",nTotalDmg));
end;
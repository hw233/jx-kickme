--Script Created by Ken Nguyen
--than bi do chi
Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local nMemCount = GetTeamSize();
	if (nMemCount == 0 ) then
		getcommon()
	return end
	local nTeamId = GetTeam();
	local nIndex;
	for i = 0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex
			getcommon()
		end
	end
end;

function getcommon()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local nKind = GetNumber2(nTaskValue, 4); --?[7][8] lo�i update
	local nType = GetNumber(nTaskValue, 2); --loai ko giao
	local w,x,y = GetWorldPos();
	if(nType == 0 and nKind == 6) then
			nTaskValue = GetTask(TASK_DIADOCHI);
			local nNum = GetNumber3(nTaskValue,1);
			local nGotNum = GetNumber3(nTaskValue,2);
			nGotNum = nGotNum + 1;
			if(nNum == w) then
				nNum = SetNumber3(nTaskValue,2,nGotNum);
				SetTask(TASK_DIADOCHI, nNum);
				Msg2Player("B�n �� c� "..nGotNum.." t�m "..GetSubWorldName(w).." ��a �� ch�.");
			return end
	end
	nTaskValue = GetTask(TASK_SHXT);
	nTaskValue = nTaskValue + 1;
	SetTask(TASK_SHXT, nTaskValue);
	local strMain = format("B�n nh�n ���c 1 m�nh B�n �� s�n h� x� t�c. T�ng c�ng %d.", nTaskValue);
	Msg2Player(strMain);
end
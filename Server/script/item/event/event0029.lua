--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	 the dat cuoc
--||Description:	You are missing in my heart
Include("\\script\\header\\taskid.lua");
function useitem(nItemIdx)
	SetTaskTemp(ITEMINDEX,nItemIdx);
	FreezeItem(nItemIdx,1);
	Input("somayman");
end;

function somayman(num)
	FreezeItem(GetTaskTemp(ITEMINDEX),0);
	if(num < 1 or num > 99) then
	Msg2Player("Con s� d� �o�n ch� ���c t� 1 ��n 99!")
	return end
	local nTaskValue = GetTask(TASK_LINHTINH);
	local nData = GetDataInt(DATA_DATCUOC);
	local nTime = GetTask(TASK_DATCUOCT);
	if(nData ~= nTime) then
	SetTask(TASK_DATCUOCT, nData);
	SetTask(TASK_LINHTINH,SetNumber2(nTaskValue,2,1));
	nData = nData - nTime;
	if(nData ~= 1) then
	SetTask(TASK_DATCUOC4, 0);
	SetTask(TASK_DATCUOC5, 0);
	SetTask(TASK_DATCUOC6, 0);
	else
	SetTask(TASK_DATCUOC4, GetTask(TASK_DATCUOC1));
	SetTask(TASK_DATCUOC5, GetTask(TASK_DATCUOC2));
	SetTask(TASK_DATCUOC6, GetTask(TASK_DATCUOC3));
	end
	SetTask(TASK_DATCUOC1, SetNumber2(0,1,num));
	SetTask(TASK_DATCUOC2, 0);
	SetTask(TASK_DATCUOC3, 0);
	if(random(2) == 1) then
	AddItem(0,2,random(0,2),0,0,5,1,0);--phuc duyen
	else
	AddOwnExp(50000);
	Msg2Player("B�n nh�n ���c kinh nghi�m <color=yellow>50.000")
	end
	RemoveItem(GetTaskTemp(ITEMINDEX),1);
	Msg2Player("B�n �� c��c s� <color=green>"..num);
	return end
	local nDone = GetNumber2(nTaskValue,2) + 1;
	if(nDone > 12) then
	Msg2Player("M�i ng�y b�n ch� ���c c��c t�i �a 12 s�!")
	return end
	SetTask(TASK_LINHTINH,SetNumber2(nTaskValue,2,nDone));
	if		(nDone == 1 ) then
	SetTask(TASK_DATCUOC1, SetNumber2(0,1,num));
	elseif(nDone == 2 ) then
	SetTask(TASK_DATCUOC1, SetNumber2(GetTask(TASK_DATCUOC1),2,num));
	elseif(nDone == 3 ) then
	SetTask(TASK_DATCUOC1, SetNumber2(GetTask(TASK_DATCUOC1),3,num));
	elseif(nDone == 4 ) then
	SetTask(TASK_DATCUOC1, SetNumber2(GetTask(TASK_DATCUOC1),4,num));
	elseif(nDone == 5 ) then
	SetTask(TASK_DATCUOC2, SetNumber2(0,1,num));
	elseif(nDone == 6 ) then
	SetTask(TASK_DATCUOC2, SetNumber2(GetTask(TASK_DATCUOC2),2,num));
	elseif(nDone == 7 ) then
	SetTask(TASK_DATCUOC2, SetNumber2(GetTask(TASK_DATCUOC2),3,num));
	elseif(nDone == 8 ) then
	SetTask(TASK_DATCUOC2, SetNumber2(GetTask(TASK_DATCUOC2),4,num));
	elseif(nDone == 9 ) then
	SetTask(TASK_DATCUOC3, SetNumber2(0,1,num));
	elseif(nDone == 10) then
	SetTask(TASK_DATCUOC3, SetNumber2(GetTask(TASK_DATCUOC3),2,num));
	elseif(nDone == 11) then
	SetTask(TASK_DATCUOC3, SetNumber2(GetTask(TASK_DATCUOC3),3,num));
	elseif(nDone == 12) then
	SetTask(TASK_DATCUOC3, SetNumber2(GetTask(TASK_DATCUOC3),4,num));
	end
	if(random(2) == 1) then
	AddItem(0,2,random(0,2),0,0,5,1,0);--phuc duyen
	else
	AddOwnExp(50000);
	Msg2Player("B�n nh�n ���c kinh nghi�m <color=yellow>50.000")
	end
	RemoveItem(GetTaskTemp(ITEMINDEX),1);
	Msg2Player("B�n �� c��c s� <color=green>"..num);
end;

function noinput()
	FreezeItem(GetTaskTemp(ITEMINDEX),0)
end;

--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Qu� Ho�ng Kim
--||Feaure:	
--||Description:	You are missing in my heart
Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local nValue = GetTask(TASK_RESET);
	local nUsed = GetNumber(nValue,9);
	if (nUsed >= 1) then
		Msg2Player("M�i ng�y ch� c� th� �n 1 qu� Ho�ng kim. Mai h�y ti�p nh�!")
	return end
	if (GetLevel() < 120) then
		Msg2Player("��ng c�p 120 tr� l�n m�i ���c s� d�ng Qu� Ho�ng Kim.")
	return end
    SetTask(TASK_RESET,SetNumber(nValue,9,nUsed+1))
    AddOwnExp(15000000)
    RemoveItem(nItemIndex,1,1)
end

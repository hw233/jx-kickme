--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Qu� Huy Ho�ng trung
--||Feaure:	
--||Description:	You are missing in my heart
Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local nValue = GetTask(TASK_RESET);
	local nUsed = GetNumber(nValue,1);
	if (nUsed >= 5) then
		Msg2Player("H�m nay b�n �� s� d�ng 5 qu� r�i. Mai h�y ti�p t�c!")
	return end
	if (GetLevel() < 100) then
		Msg2Player("��ng c�p 100 tr� l�n m�i ���c s� d�ng Qu� Huy Ho�ng trung.")
	return end
    SetTask(TASK_RESET,SetNumber(nValue,1,nUsed+1))
    AddOwnExp(3000000)
    RemoveItem(nItemIndex,1,1)
end


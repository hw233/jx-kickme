--Script Created by Ken Nguyen
--Tay tuy kinh [1][2]
Include("\\script\\header\\taskid.lua");
function useitem(nItemIdx)
	local nValue = GetTask(TASK_TAYTUYKINH)
	local nTimes = GetNumber2(nValue,1);
	if (nTimes >= 15) then
		Msg2Player("M�i nh�n v�t ch� c� th� s� d�ng t�i �a <color=yellow>15<color> T�y T�y kinh!");
	else
		SetTask(TASK_TAYTUYKINH, SetNumber2(nValue,1,nTimes+1))
		AddProp(5);
		RemoveItem(nItemIdx, 1);
	end
end;

--Script Created by Ken Nguyen
--Tay tuy kinh [1][2]
Include("\\script\\header\\taskid.lua");
function useitem(nItemIdx)
	local nValue = GetTask(TASK_TAYTUYKINH)
	local nTimes = GetNumber2(nValue,1);
	if (nTimes >= 15) then
		Msg2Player("Mçi nh©n vËt chØ cã thÓ sö dông tèi ®a <color=yellow>15<color> TÈy Tñy kinh!");
	else
		SetTask(TASK_TAYTUYKINH, SetNumber2(nValue,1,nTimes+1))
		AddProp(5);
		RemoveItem(nItemIdx, 1);
	end
end;

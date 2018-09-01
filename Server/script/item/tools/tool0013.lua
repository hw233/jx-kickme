--Script Created by Ken Nguyen
--vo lam mat tich
Include("\\script\\header\\taskid.lua");
function useitem(nItemIdx)
	local nValue = GetTask(TASK_TAYTUYKINH)
	local nTimes = GetNumber2(nValue,2);
	if (nTimes >= 15) then
		Msg2Player("Mçi nh©n vËt chØ cã thÓ sö dông tèi ®a <color=yellow>15<color> Vâ l©m MËt tŞch!");
	else
		SetTask(TASK_TAYTUYKINH, SetNumber2(nValue,2,nTimes+1))
		AddMagicPoint(1);
		RemoveItem(nItemIdx, 1);
	end
end;

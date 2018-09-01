--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Qu∂ Hoµng Kim
--||Feaure:	
--||Description:	You are missing in my heart
Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local nValue = GetTask(TASK_RESET);
	local nUsed = GetNumber(nValue,9);
	if (nUsed >= 1) then
		Msg2Player("MÁi ngµy chÿ c„ th” ®n 1 qu∂ Hoµng kim. Mai h∑y ti’p nh–!")
	return end
	if (GetLevel() < 120) then
		Msg2Player("ßºng c p 120 trÎ l™n mÌi Æ≠Óc sˆ dÙng Qu∂ Hoµng Kim.")
	return end
    SetTask(TASK_RESET,SetNumber(nValue,9,nUsed+1))
    AddOwnExp(15000000)
    RemoveItem(nItemIndex,1,1)
end

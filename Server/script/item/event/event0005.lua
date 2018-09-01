--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Qu¶ Huy Hoµng cao
--||Feaure:	
--||Description:	You are missing in my heart
Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local nValue = GetTask(TASK_RESET);
	local nUsed = GetNumber(nValue,1);
	if (nUsed >= 5) then
		Msg2Player("H«m nay b¹n ®· sö dông 5 qu¶ råi. Mai h·y tiÕp tôc!")
	return end
	if (GetLevel() < 120) then
		Msg2Player("§¼ng cÊp 120 trë lªn míi ®­îc sö dông Qu¶ Huy Hoµng cao.")
	return end
    SetTask(TASK_RESET,SetNumber(nValue,1,nUsed+1))
    AddOwnExp(5000000)
    RemoveItem(nItemIndex,1,1)
end


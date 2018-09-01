--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Thiet la han
--||Feaure:	
--||Description:	You are missing in my heart
--Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	if (GetLevel() < 80) then
		Msg2Player("§¼ng cÊp 80 trë lªn míi cã thÓ luyÖn tËp víi ThiÕt la h¸n.")
	return end
    AddOwnExp(5000000)
    RemoveItem(nItemIndex,1)
end;

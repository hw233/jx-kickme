--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Ban nhuoc tam kinh
--||Feaure:	
--||Description:	You are missing in my heart
--Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local nGetExp = GetExp();
	if(nGetExp == nil) then
	return end;
	if(nGetExp >= 0) then
		Msg2Player("B¹n kh«ng cã ®iÓm ©m kinh nghiÖm!")
	return end;
    AddOwnExp(0-nGetExp)
    RemoveItem(nItemIndex,1)
end;

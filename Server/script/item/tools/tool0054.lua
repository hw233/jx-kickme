--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Thiet la han
--||Feaure:	
--||Description:	You are missing in my heart
--Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	if (GetLevel() < 80) then
		Msg2Player("��ng c�p 80 tr� l�n m�i c� th� luy�n t�p v�i Thi�t la h�n.")
	return end
    AddOwnExp(5000000)
    RemoveItem(nItemIndex,1)
end;

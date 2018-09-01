--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   Ban nhuoc tam kinh
--||Feaure:	
--||Description:	You are missing in my heart
--Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	nPK = GetPK();
	if(nPK <= 0) then
		Msg2Player("B¹n kh«ng cßn trÞ PK n÷a!")
	return end;
    SetPK(nPK-1);
    RemoveItem(nItemIndex,1)
end;

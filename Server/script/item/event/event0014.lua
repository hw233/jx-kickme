--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	Phi�n V�
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(2,3) == 1) then
        local id =   ItemSetAdd(0,0,10,7,10,0,0)
		SetItemDate(id,129600)
		AddItemID(id)
		RemoveItem(nItemIndex,1)
		Msg2Player("B�n nh�n ���c 1 Phi�n V�.") 
	else
		Talk(1,"","Xin s�p x�p h�nh trang 2x3 � tr�ng!")
	end
end;

--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	Chi�u D� Ng�c S� T�
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(2,3) == 1) then
        local id =   ItemSetAdd(0,0,10,5,5,0,0)
		SetItemDate(id,129600)
		AddItemID(id)
		RemoveItem(nItemIndex,1)
		Msg2Player("B�n nh�n ���c 1 Chi�u D� Ng�c S� T� .") 
	else
		Talk(1,"","Xin s�p x�p h�nh trang 2x3 � tr�ng!")
	end
end;

--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	 Day chuyen an bang
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(2,3) == 1) then
		AddItem(2,0,163,0,0,0,5,0)
		RemoveItem(nItemIndex,1)
		Msg2Player("Nh�n ���c 1 An Bang h�ng li�n.") 
	else
		Talk(1,"","Xin s�p x�p h�nh trang 2x3 � tr�ng!")
	end
end;

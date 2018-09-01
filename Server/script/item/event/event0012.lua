--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	Phi V©n
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(2,3) == 1) then
        local id =   ItemSetAdd(0,0,10,8,10,0,0)
		SetItemDate(id,129600)
		AddItemID(id)
		RemoveItem(nItemIndex,1)
		Msg2Player("B¹n nhËn ®­îc 1 Phi V©n.") 
	else
		Talk(1,"","Xin s¾p xÕp hµnh trang 2x3 « trèng!")
	end
end;

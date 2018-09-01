--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	 Ao Dinh quoc
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(2,3) == 1) then
		AddItem(2,0,158,0,0,0,5,0)
		RemoveItem(nItemIndex,1)
		Msg2Player("NhËn ®­îc 1 §Þnh Quèc y.") 
	else
		Talk(1,"","Xin s¾p xÕp hµnh trang 2x3 « trèng!")
	end
end;

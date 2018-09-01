--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||Feaure:	 hiep cot
--||Description:	You are missing in my heart

function useitem(nItemIndex)
	if (CheckRoom(6,9) == 1) then
		for i=185,188 do
		AddItem(2,0,i,0,0,0,5,0)
		end
		RemoveItem(nItemIndex,1)
		Msg2Player("NhËn ®­îc 1 bé HiÖp Cèt.") 
	else
		Talk(1,"",12266)
	end
end;

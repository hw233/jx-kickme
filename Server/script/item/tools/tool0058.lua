--Script Created by Ken Nguyen
--Hoa hong

function useitem(nItemIndex)
	for i=284,290 do
	CastSkill(i,1);
	end
    RemoveItem(nItemIndex,1,1);
end;

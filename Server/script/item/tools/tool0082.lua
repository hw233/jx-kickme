
function useitem(nItemIndex)
	if(CheckRoom(2,3) == 0) then
	Talk(1,"",12265)
	return end
	AddItem(0,4,1,0,0,5,0,0)
	RemoveItem(nItemIndex,1)
end

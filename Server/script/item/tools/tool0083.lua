
function useitem(nItemIndex)
	if(CheckRoom(2,2) == 0) then
	Talk(1,"",12265)
	return end
	AddItem(0,3,27,0,0,0,0,0)
	AddItem(0,3,27,0,0,0,0,0)
	RemoveItem(nItemIndex,1)
end
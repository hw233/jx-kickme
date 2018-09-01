Include( "\\script\\item\\checkmapid.lua" )
--tong kim mau
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	RemoveItem(nItemIdx,1);
	Potion(2,500);
end
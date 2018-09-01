--Script Created by Ken Nguyen
--do pho ruong mo rong
function useitem(nItemIdx)
	local nGet = GetExBox()
	if(nGet < 1) then
	Msg2Player("H·y ®Õn gÆp ThÈm cöu ®Ó më réng r­¬ng thø nhÊt, míi cã thÓ më r­¬ng tiÕp theo.")
	return end
	if(nGet >= 3) then
	Msg2Player("B¹n ®· më réng sè r­¬ng tèi ®a råi.")
	return end
	SetExBox(nGet+1);
	RemoveItem(nItemIdx,1);
end;

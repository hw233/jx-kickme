--Script Created by Ken Nguyen
--do pho ruong mo rong
function useitem(nItemIdx)
	local nGet = GetExBox()
	if(nGet < 1) then
	Msg2Player("H�y ��n g�p Th�m c�u �� m� r�ng r��ng th� nh�t, m�i c� th� m� r��ng ti�p theo.")
	return end
	if(nGet >= 3) then
	Msg2Player("B�n �� m� r�ng s� r��ng t�i �a r�i.")
	return end
	SetExBox(nGet+1);
	RemoveItem(nItemIdx,1);
end;

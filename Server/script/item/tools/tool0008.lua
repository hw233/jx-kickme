Include("\\script\\item\\checkmapid.lua");
--Script Created by Ken Nguyen
--Tho dia phu`
function useitem(nItemIndex)
	if(GetFightState() == 0) then
	Msg2Player("Kh�ng th� s� d�ng Th� ��a ph� � n�i phi chi�n ��u!")
	return end
	if(CheckMapForTP() == 1) then
	Msg2Player("N�i ��y kh�ng th� s� d�ng th� ��a ph�!")
	return end;
	BackHome()
	RemoveItem(nItemIndex, 1)
end;

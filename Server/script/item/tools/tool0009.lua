Include("\\script\\item\\checkmapid.lua");
--Script Created by Ken Nguyen
--Tho dia phu` vo han
function useitem(nItemIndex)
	if(GetFightState() == 0) then
	Msg2Player("Kh�ng th� s� d�ng Th� ��a ph� � n�i phi chi�n ��u!")
	return end
	if(CheckMapForTP() == 1 or GetNumber(GetTask(TASK_LINHTINH),2) > 0) then
	Msg2Player("N�i ��y kh�ng th� s� d�ng th� ��a ph�!")
	return end;
	BackHome()
end;

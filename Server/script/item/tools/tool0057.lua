--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   tam tam tuong anh phu
--||Feaure:	
--||Description:	You are missing in my heart
Include("\\script\\item\\checkmapid.lua");
Include("\\script\\header\\taskid.lua");

function useitem(nItemIndex)
	local szName = GetLoveName();
	if(szName == "") then
	Msg2Player("B�n ch�a c� � trung nh�n.")
	return end
	if(CheckMapForTP() == 1) then
	Msg2Player("Xin l�i! N�i ��y kh�ng th� s� d�ng v�t ph�m n�y!")
	return end
	local nPlayer = FindPlayer(szName);
	if(nPlayer <= 0) then
	Msg2Player("Kh�ng t�m th�y ph�i ng�u c�a b�n tr�n m�ng!")
	return end
	local tempid = PlayerIndex;
	PlayerIndex = nPlayer;
	if(CheckMapForTP() == 1 or GetNumber(GetTask(TASK_LINHTINH),2) > 0) then
	PlayerIndex = tempid;
	Msg2Player("Xin l�i! Ph�i ng�u c�a b�n �ang � m�t n�i ��c th�, b�n kh�ng th� ��n!")
	return end
	local w,x,y = GetWorldPos();
	local fight = GetFightState();
	
	PlayerIndex = tempid;
	if(NewWorld(w,floor(x/32),floor(y/32)) == 1) then
		SetFightState(fight);
		RemoveItem(nItemIndex,1)
	end
end;

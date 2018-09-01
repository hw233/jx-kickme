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
	Msg2Player("B¹n ch­a cã ý trung nh©n.")
	return end
	if(CheckMapForTP() == 1) then
	Msg2Player("Xin lçi! N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy!")
	return end
	local nPlayer = FindPlayer(szName);
	if(nPlayer <= 0) then
	Msg2Player("Kh«ng t×m thÊy phèi ngÉu cña b¹n trªn m¹ng!")
	return end
	local tempid = PlayerIndex;
	PlayerIndex = nPlayer;
	if(CheckMapForTP() == 1 or GetNumber(GetTask(TASK_LINHTINH),2) > 0) then
	PlayerIndex = tempid;
	Msg2Player("Xin lçi! Phèi ngÉu cña b¹n ®ang ë mét n¬i ®Æc thï, b¹n kh«ng thÓ ®Õn!")
	return end
	local w,x,y = GetWorldPos();
	local fight = GetFightState();
	
	PlayerIndex = tempid;
	if(NewWorld(w,floor(x/32),floor(y/32)) == 1) then
		SetFightState(fight);
		RemoveItem(nItemIndex,1)
	end
end;

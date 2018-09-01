--||Author:	Ken Nguyen
--||Date:	30/1/2014
--||FileName:   nhan mau free
--||Description:	You are missing in my heart
Include("\\script\\header\\taskid.lua");
MAX_RESTTIME = 4
function useitem(nItemIndex)
	if (GetLevel() < 100) then
		--AddSkillState(472, 1, 72 )
		local nTaskTime = GetTask(TASK_THOIGIAN3);
		local nCurTime = GetTimeMin();
		if(nCurTime - nTaskTime < MAX_RESTTIME) then
		Msg2Player("C¸ch <color=yellow>"..MAX_RESTTIME.." phót<color> b¹n míi cã thÓ nhËn 1 lÇn!");
		return end
		SetTask(TASK_THOIGIAN3,nCurTime);
		while(CheckRoom(1,1) == 1) do
			AddItem(0,1,2,0,3,5,0,0);
		end
	else
		RemoveItem(nItemIndex,1)
		Talk(1,"","§¼ng cÊp 100 giíi h¹n sö dông. HÖ thèng tù lo¹i bá vËt phÈm.")
	end
end;

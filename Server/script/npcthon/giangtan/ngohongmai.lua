Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_TAYTUYKINH);
	local nTask = GetNumber(nTaskValue,5);
	if(nTask == 2) then
		SetTask(TASK_TAYTUYKINH, SetNumber(nTaskValue,5,3));
		if(GetSex() == 0) then
		AddItem(0,0,5,0,1,3,0,0)
		else
		AddItem(0,0,5,2,1,3,0,0)
		end
		AddRepute(6)
		Msg2Player("Hoµn thµnh nhiÖm vô. Hång Mai rÊt c¶m kÝch tr­íc nghÜa cö cña b¹n.")
		Msg2Player("B¹n nhËn ®­îc 1 ®«i hµi.")
		Msg2Player("Thanh thÕ giang hå cña b¹n t¨ng thªm 6 ®iÓm.")
		Talk(1,"",12936)
	else
	Talk(1,"",12937)
	end
end

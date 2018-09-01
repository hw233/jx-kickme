Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\openclose.lua");
function main()
	if(CLOSE_FEATURE == 1) then
	Talk(1,"",TALK_CLOSE)
	return end
	Say2(10194,3,1,"","Ta ®Õn lµm nhiÖm vô ChÝnh tuyÕn cÊp 20 trë lªn/nhiemvuchinh","Ta ®Õn xem giíi thiÖu vÒ nhiÖm vô /xemgioithieu","Sau nµy h·y nãi/no")
end;

function xemgioithieu()
	Say2(10243,1,1,"","KÕt thóc ®èi tho¹i/no")
end;

function nhiemvuchinh()
	local nTaskValue = GetTask(TASK_NVST);
	local nChinh = GetNumber2(nTaskValue,2);
	local nTrung = GetNumber2(nTaskValue,3);
	local nTa = GetNumber2(nTaskValue,4);
	if(nChinh > 19 and nTrung > 20 and nTa > 29) then
	Talk(1,"","Sau nµy ng­¬i ph¶i tù b¶o träng!");
	return end;
	if(nChinh == 19) then
	Talk(1,"donechinh",10340);
	return end
	if(nTrung == 20) then
	Talk(1,"donetrung",14746);
	return end
	if(nTa == 29) then
	Talk(1,"doneta","Cã chót quµ tÆng cho ng­¬i!");
	return end
	if(GetLevel() < 20) then
	Talk(1,"",10344);
	return end;
	if(GetFactionNo() < 0) then
	Talk(1,"",12636);
	return end;
	Say(10345,2,"Ta muèn nhËn nhiÖm vô /selnv","Ta chØ ®Õn ch¬i/no")
end;

function selnv()
	Say(10346,4,"ChÝnh ph¸i/nhannv","Trung lËp/nhannv","Tµ ph¸i/nhannv","§Ó ta suy nghÜ l¹i/no")
end;

function nhannv(sel)
	local nSel = sel + 2;
	local nTaskValue = GetTask(TASK_NVST);
	if(GetNumber2(nTaskValue,nSel) > 0) then
		Talk(1,"",10369);
	return end;
	if(CheckRoom(1,1) == 0) then
		Talk(1,"",12265);
	return end;
	SetTask(TASK_NVST, SetNumber2(nTaskValue,nSel,1));
	local nid = ItemSetAdd(0,4,41+nSel,0,0,5,0);
	LockItem(nid);
	AddItemID(nid);
	Msg2Player("NhËn ®­îc mét tói th­ cña Long Ngò.")
end;

function donechinh()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,20));
	AddOwnExp(300000);
	if(random(1,2) == 1) then
		AddItem(2,0,RANDOM(167,175),0,0,0,10,0);
	else
		if(GetSex() == 0) then
		AddItem(2,0,RANDOM(167,175),0,0,0,5,0);
		else
		AddItem(2,0,RANDOM(167,175),0,0,0,5,0);
		end
	end
	Msg2Player("B¹n B¹n nhËn ®­îc mét mãn b¶o khÝ.")
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô M¹c SÇu giao. Long Ngò v« cïng hµi lßng, nh­ng b­íc ®­êng giang hå chØ míi b¾t ®Çu.")
end;

function donetrung()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,21));
	AddOwnExp(300000);
	if(random(1,2) == 1) then
		AddItem(2,0,RANDOM(167,175),0,0,0,10,0);
	else
		if(GetSex() == 0) then
		AddItem(2,0,RANDOM(167,175),0,0,0,5,0);
		else
		AddItem(2,0,RANDOM(167,175),0,0,0,5,0);
		end
	end
	Msg2Player("B¹n B¹n nhËn ®­îc mét mãn b¶o khÝ.")
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô s¸t thñ Phã Nam B¨ng giao. Trªn giang hå b¹n ®· cã chót danh tiÕng, ®©y còng kh«ng ph¶i lµ chuyÖn tèt, trong thµnh cã nhiÒu tai m¾t theo dâi.")
end;

function doneta()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,30));
	AddOwnExp(300000);
	if(random(1,2) == 1) then
		AddItem(2,0,RANDOM(167,175),0,0,0,10,0);
	else
		if(GetSex() == 0) then
		AddItem(2,0,RANDOM(167,175),0,0,0,5,0);
		else
		AddItem(2,0,RANDOM(167,175),0,0,0,5,0);
		end
	end
	Msg2Player("B¹n B¹n nhËn ®­îc mét mãn b¶o khÝ.")
	Msg2Player("B¹n ®· hoµn thµnh nhiÖm vô chñ tuyÕn Tµ ph¸i. Sau nµy cã lÏ cã nhiÒu trËn chiÕn ®ang chê b¹n, mét kÎ m¸u l¹nh.")
end;

function no()
end;
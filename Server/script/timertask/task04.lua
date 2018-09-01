
Include("\\script\\header\\taskid.lua");

function OnTimer()
	StopTimer();
	Say(12956,2,
	"Ta ch p nhÀn/chapnhan",
	"Ta c«n ph∂i suy ngh‹ th™m/tuchoi")
end;

function OnMissionTimer(nIndex)
	StopMissionTimer(nIndex,4);
end;

function chapnhan()
	local ManId = GetTaskTemp(HAVELOVE_FEMALE);
	local FemaleId = PlayerIndex;
	PlayerIndex = ManId;
	local mandwid = GetNpcID(GetPlayerNpcIdx());
	PlayerIndex = FemaleId;
	if(FindNearNpc(mandwid) <= 0) then
	return end
	if(GetLoveName() ~= "") then
	return end
	SetTaskTemp(HAVELOVE_FEMALE,0);
	PlayerIndex = ManId;
	SetTaskTemp(HAVELOVE_MALE,0);
	AddItem(0,0,3,0,random(1,5),random(0,4),0,0);
	local str = "Nguy÷t L∑o t∆ng 2 bπn Æ´i nh…n Æ›nh ≠Ìc th“ nguy“n tr®m n®m!"
	Msg2Player(str);
	local szName = GetName();
	PlayerIndex = FemaleId;
	MakeLove(szName, 0);	--ket hon
	AddItem(0,0,3,0,random(1,5),random(0,4),0,0);
	Msg2Player(str);
	CastSkill(251,1);
	for i=284,290 do
	CastSkill(i,1);
	end
	AddCountNews(format("%s s∏nh duy™n cÔng %s. Xin chÛc cho Æ´i t©n lang vµ t©n giai nh©n b∏ch ni™n giai l∑o!",szName, GetName()),3)
end;

function tuchoi()
	local ManId = GetTaskTemp(HAVELOVE_FEMALE);
	local FemaleId = PlayerIndex;
	PlayerIndex = ManId;
	local mandwid = GetNpcID(GetPlayerNpcIdx());
	PlayerIndex = FemaleId;
	if(FindNearNpc(mandwid) <= 0) then
	return end
	SetTaskTemp(HAVELOVE_FEMALE,0);
	Talk(1,"",12968)
	
	PlayerIndex = ManId;
	SetTaskTemp(HAVELOVE_MALE,0);
	Talk(1,"",12967)
end;

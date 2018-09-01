Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
-- Ken Nguyen
-- npc Pho Nam Bang
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,3);
	if(nValue == 1 and GetItemCount(50) > 0) then
		Say2(10455,1,1,GetName(),
		END_TALK.."/no");
		DelItem(50);
		SetTask(TASK_NVST, SetNumber2(nTaskValue,3,2));
		Msg2Player("Phã Nam B¨ng b¶o b¹n lªn La Tiªu S¬n ®¸nh b¹i Ninh T­íng Qu©n.")
		AddNote(NOTEHEAD.."lªn La Tiªu S¬n ®¸nh Ninh T­íng Qu©n");
	return end
	if(nValue == 3) then
		Say2(10457,1,1,GetName(),
		END_TALK.."/done20");
	return end
	if(nValue == 4 and GetLevel() >= 30) then
		Say2(10458,1,1,GetName(),
		END_TALK.."/nv_30");
	return end
	if(nValue == 6) then
		Say2(10459,1,1,GetName(),
		END_TALK.."/done30");
	return end
	if(nValue == 7 and GetLevel() >= 40) then
		Say2(10461,1,1,GetName(),
		END_TALK.."/nv_40");
	return end
	if(nValue == 11) then
		Say2("Cè g¾ng lªn!",1,1,"",
		END_TALK.."/done40");
	return end
	if(nValue == 12 and GetLevel() >= 50) then
		Say2(14715,1,1,"",
		END_TALK.."/nv_50");
	return end
	if(nValue == 15) then
		Say2("Phã Nam B¨ng: Thµnh c«ng råi? Ta còng biÕt ng­¬i sÏ thµnh c«ng.",1,1,"",
		END_TALK.."/done50");
	return end
	if(nValue == 16 and GetLevel() >= 60) then
		Say2(14743,1,1,"",
		END_TALK.."/nv_60");
	return end
	if(nValue == 19) then
		Say2(14745,1,1,GetName(),
		END_TALK.."/done60");
	return end
	Talk(1,"","Giang hå hiÓm ¸c, m­êi ba huynh ®Ö giê chØ cßn m×nh ta.");
end

function nv_30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,5));
	AddOwnExp(10000);
	Msg2Player("Phã Nam B¨ng b¶o b¹n ®i Thôc C­¬ng S¬n ®¸nh b¹i L­ ThiÖn T­îng.");
	AddNote(NOTEHEAD.."lªn Thôc C­¬ng S¬n ®¸nh L­ ThiÖn T­îng <231/199>");
end;

function nv_40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,8));
	AddOwnExp(15000);
	Msg2Player("Phã Nam B¨ng b¶o b¹n ®i Thóy Yªn m«n t×m LÖ Thu Thñy.")
	AddNote(NOTEHEAD.."®Õn Thóy Yªn M«n t×m LÖ Thu Thñy");
end;

function nv_50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,13));
	AddOwnExp(30000);
	Msg2Player("Phã Nam B¨ng b¶o b¹n ®i Thiªn V­¬ng Bang t×m Hµn Giang §éc §iÕu TÈu.")
	Msg2Player("Thùc chÊt b¹n chØ cÇn ®Õn bÕn tµu Ba L¨ng HuyÖn lµ gÆp «ng ta.")
	AddNote(NOTEHEAD.."®Õn bÕn tµu Ba L¨ng HuyÖn (n¬i ®i Thiªn V­¬ng §¶o) t×m Hµn Ng­ ¤ng");
end

function nv_60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,17));
	AddOwnExp(50000);
	Msg2Player("Phã Nam B¨ng b¶o b¹n ®i t×m Kh«ng TÞch §¹i S­.")
	AddNote(NOTEHEAD.."t×m Kh«ng TÞch §¹i S­ BiÖn Kinh <208/183>");
end

function done20()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,4));
	AddOwnExp(5000);
	AddSkillState( 509, 1, 180);
	AddItem(2,0,181,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 hé uyÓn.")
	Msg2Player("Phã Nam B¨ng nãi sau nµy sÏ t×m b¹n.");
	Talk(1,"","Cè g¾ng lªn");
end;

function done30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,7));
	AddOwnExp(10000);
	AddSkillState( 509, 1, 180);
	AddItem(2,0,177,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 chiÕn gi¸p.")
	Msg2Player("Phã Nam B¨ng nãi L©m Uyªn Nhai cã mét kÕ ho¹ch lín, sau nµy sÏ t×m b¹n!")
	Talk(1,"","Cè g¾ng lªn");
end;

function done40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,12));
	AddOwnExp(20000);
	AddSkillState(509, 1, 180);
	AddItem(2,0,179,0,0,0,5,0);
	Msg2Player("B¹n nhËn ®­îc 1 chiÕc nhÉn.")
	Msg2Player("Phã Nam B¨ng nãi sau nµy sÏ t×m b¹n.");
end;

function done50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,16));
	AddOwnExp(40000);
	AddSkillState(509, 1, 180);
	AddItem(0,0,10,2,7,0,0,0);
	Msg2Player("B¹n nhËn ®­îc mét con tuÊn m·.");
	Msg2Player("Phã Nam B¨ng nãi sau nµy sÏ t×m b¹n.");
end;

function done60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,20));
	AddOwnExp(40000);
	AddSkillState(509, 1, 180);
	Msg2Player("Phã Nam B¨ng nãi sÏ ®i Hoa S¬n lµm chót chuyÖn, sau nµy cã dÞp gÆp l¹i. B¹n quay vÒ t×m Long Ngò.")	
end;

function no()
end;
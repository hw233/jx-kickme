Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
-- Ken Nguyen
-- npc manh pham
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,2);
	if(nValue == 13) then
	Say2(10433,1,1,GetName(),
		END_TALK.."/nv_501");
	return end
	if(nValue == 15) then
	Say2(10190,1,1,GetName(),
		END_TALK.."/done50");
	return end
	if(nValue == 16 and GetLevel() >= 60) then
		Say2(10191,1,1,GetName(),
		END_TALK.."/nv_60");
	return end
	Talk(1,"",10427);
end;

function nv_501()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,14));
	AddOwnExp(30000);
	Msg2Player("M¹nh Phµm b¶o b¹n ®Õn L­u Tiªn ®éng tiªu diÖt O¸n §éc, ®em thñ cÊp h¾n vÒ.")
	AddNote(NOTEHEAD.."®¸nh O¸n §éc L­u Tiªn ®éng <210/198>");
end;

function done50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,16));
	AddOwnExp(40000);
	AddSkillState(509,1,180);
	AddItem(0,2,45,0,0,5,0,0);--tien thao lo
	Msg2Player("B¹n nhËn ®­îc 1 b×nh Tiªn Th¶o Lé.");
	Msg2Player("M¹nh Phµm b¶o b¹n luyÖn tËp thªm, y sÏ ®i hái th¨m tung tÝch M¹c SÇu, khi cã tin sÏ b¸o cho b¹n biÕt.")
end

function nv_60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,17));
	AddOwnExp(50000);
	Msg2Player("M¹nh Phµm b¶o b¹n ®i MËt ®¹o ¸c B¸ §¹i Lý, M¹c SÇu bÞ 1 ng­êi thÇn bÝ b¾t ®Õn ®ã.")
	AddNote(NOTEHEAD.."®¸nh Ng­êi thÇn bÝ ¸c B¸ Gia §¹i Lý <209/194>");
end;

function no()
end;
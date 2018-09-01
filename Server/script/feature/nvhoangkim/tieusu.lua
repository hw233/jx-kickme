Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc tieu su Duong Chau
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 6) then
		Say2(10821,1,1,GetName(),
		END_TALK.."/nv_30");
	return end
	if(nValue == 7 and GetLevel() >= 30) then
		Talk(1,"nv_301","LÇn tr­íc hái H¹ HÇu Phôc ë ®©u, b©y giê cã thÓ tr¶ lêi ta råi chø?");
	return end
	Talk(1,"",10836);
end;

function nv_30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,7));
	if(GetLevel() >= 30) then
		nv_301();
	else
		Talk(1,"",10823);
	end
end

function nv_301()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,8));
	Talk(1,"",10839);
	Msg2Player("§Õn Thanh Thµnh S¬n t×m H¹ HÇu Phôc. Trªn ®­êng ®i b¹n cã thÓ gÆp h¾n.");
	AddNote(NOTEHEAD.."®i Thanh Thµnh S¬n ®¸nh H¹ HÇu Phôc");
end

function no()
end;
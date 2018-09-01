Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc khong tich dai su
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,3);
	if(nValue == 17) then
		Say2(14744,1,1,GetName(),
		END_TALK.."/nv_601");
	return end
	Talk(1,"","Nh©n qu¶ trªn ®êi ®· ®Þnh s½n. A Di ®µ PhËt!");
end;

function nv_601()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,18));
	AddOwnExp(50000);
	Msg2Player("Kh«ng TÞch ThÇn T¨ng b¶o b¹n ra ngoµi thµnh thö søc víi «ng ta (182/177).")
	AddNote(NOTEHEAD.."thö søc víi Kh«ng TÞch §¹i S­ BiÖn Kinh <182/177>");
end

function no()
end;
Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc mac xao nhi
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,2);
	if(nValue == 12 and GetLevel() >= 50) then
		Say2(10432,1,1,GetName(),
		END_TALK.."/nv_50");
	return end
	Talk(1,"",10375)
end;

function nv_50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,13));
	AddOwnExp(30000);
	Msg2Player("M¹c X¶o Nhi b¶o b¹n ®i L©m An t×m  M¹nh Phµm, «ng ta biÕt tung tÝch cña M¹c SÇu.")
	AddNote(NOTEHEAD.."t×m M¹nh Phµm L©m An <203/187>");
end

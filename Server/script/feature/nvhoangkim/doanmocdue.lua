Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc doan moc due
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 24) then
		Say2(11025,1,1,GetName(),
		END_TALK.."/nv_60");
	return end
	Say2(14427,1,1,"",
		END_TALK.."/no");
end;

function nv_60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,25));
	Msg2Player("B¹n t×m ®Õn Long M«n TrÊn gÆp §oan Méc Thanh.");
	AddNote(NOTEHEAD.."®Õn Long M«n TrÊn gÆp §oan Méc Thanh");
end

function no()
end;
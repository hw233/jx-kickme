Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc Nhu Ngoc
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 18) then
		Say2(10970,1,1,GetName(),
		END_TALK.."/nv_501");
	return end
	Talk(1,"",14648);
end;

function nv_501()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,19));
	Msg2Player("B¹n ®i t×m TrÇn Tam B¶o.");
end

function no()
end;
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
		Talk(1,"nv_301","L�n tr��c h�i H� H�u Ph�c � ��u, b�y gi� c� th� tr� l�i ta r�i ch�?");
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
	Msg2Player("��n Thanh Th�nh S�n t�m H� H�u Ph�c. Tr�n ���ng �i b�n c� th� g�p h�n.");
	AddNote(NOTEHEAD.."�i Thanh Th�nh S�n ��nh H� H�u Ph�c");
end

function no()
end;
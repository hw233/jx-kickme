Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
-- Ken Nguyen
-- npc Cong tu tieu
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,2);
	if(nValue == 5) then
	Say2(10402,1,1,GetName(),
		END_TALK.."/nv_301");
	return end
	Talk(1,"",10401);
end;

function nv_301()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,6));
	AddOwnExp(10000)
	Msg2Player("C�ng T� Ti�u b�o b�n �i D��c V��ng c�c t�m thu�c h� Gi�i L�u Phong.")
	AddNote(NOTEHEAD.."��nh Gi�i L�u Phong D��c V��ng C�c <289/205>");
end;

function no()
end;
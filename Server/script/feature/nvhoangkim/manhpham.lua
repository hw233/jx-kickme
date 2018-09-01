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
	Msg2Player("M�nh Ph�m b�o b�n ��n L�u Ti�n ��ng ti�u di�t O�n ��c, �em th� c�p h�n v�.")
	AddNote(NOTEHEAD.."��nh O�n ��c L�u Ti�n ��ng <210/198>");
end;

function done50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,16));
	AddOwnExp(40000);
	AddSkillState(509,1,180);
	AddItem(0,2,45,0,0,5,0,0);--tien thao lo
	Msg2Player("B�n nh�n ���c 1 b�nh Ti�n Th�o L�.");
	Msg2Player("M�nh Ph�m b�o b�n luy�n t�p th�m, y s� �i h�i th�m tung t�ch M�c S�u, khi c� tin s� b�o cho b�n bi�t.")
end

function nv_60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,17));
	AddOwnExp(50000);
	Msg2Player("M�nh Ph�m b�o b�n �i M�t ��o �c B� ��i L�, M�c S�u b� 1 ng��i th�n b� b�t ��n ��.")
	AddNote(NOTEHEAD.."��nh Ng��i th�n b� �c B� Gia ��i L� <209/194>");
end;

function no()
end;
Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc thai cong cong
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 2) then
		Say2(10674,1,1,GetName(),
		END_TALK.."/nv_201");
	return end
	if(nValue == 4) then
		Say2(10704,1,1,GetName(),
		END_TALK.."/nv_202");
	return end
	Talk(1,"",10675);
end;

function nv_201()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,3));
	Msg2Player("�i l�n Ph�c Ng�u S�n ��ng t�m Kim ph�t.")
	AddNote(NOTEHEAD.."��nh Ti�u K� Nhi  Ph�c Ng�u S�n ��ng <226/205>");
end

function nv_202()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,5));
	Msg2Player("B�n nh�n ���c 1 b�nh Thi�n H��ng Ng�c Chi Cao. Mang v� cho V�n Nhi.")
end

function no()
end;
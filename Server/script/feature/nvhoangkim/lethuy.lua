Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc mac xao nhi
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,3);
	if(nValue == 8) then
		Say2(15484,1,1,GetName(),
		END_TALK.."/nv_401");
	return end
	if(nValue == 10) then
		Say2(15485,1,1,GetName(),
		END_TALK.."/nv_402");
	return end
	Talk(1,"",15483);
end;

function nv_401()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,9));
	AddOwnExp(15000);
	Msg2Player("L� Thu Th�y b�o b�n ��n Ho�ng H� Nguy�n ��u ��nh b�i T� T� L�c.")
	AddNote(NOTEHEAD.."��nh T� T� L�c Ho�ng H� Nguy�n ��u <192/195>");
end

function nv_402()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),3,11));
	Msg2Player("L� Thu Th�y gi�p b�n t�y t�y, hi�n gi� b�n c� th� thay ��i �i�m k� n�ng.")
	Msg2Player("N�u b�n kh�ng thu�c Phe Trung l�p, th� s� kh�ng ���c t�y t�y. B�n c� th� v� t�m Ph� Nam B�ng.")
	if(GetCamp() == 3) then
	Say("B�n nh�n ���c 1 c� h�i t�y �i�m k� n�ng mi�n ph�.",1,"B�t ��u t�y/taykynang");
	end
end

function no()
end;
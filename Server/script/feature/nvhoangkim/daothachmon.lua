Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc Dao thach mon
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 13) then
		Say2(10874,1,1,GetName(),
		END_TALK.."/nv_40");
	return end
	if(nValue == 14 and GetLevel() >= 40) then
		nv_401();
	return end
	if(nValue == 16) then
		Say2(10877,1,1,GetName(),
		END_TALK.."/done40");
	return end
	Talk(1,"",14933);
end;

function nv_40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,14));
	if(GetLevel() >= 40) then
		nv_401();
	else
		Talk(1,"",10875);
	end
end

function nv_401()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,15));
	Say2(10876,1,1,GetName(),
		END_TALK.."/no");
	Msg2Player("�i Th�c C��ng S�n t�m Ti�u V� Th��ng");
	AddNote(NOTEHEAD.."��nh Ti�u V� Th��ng Th�c C��ng S�n <243/200>");
end

function done40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,17));
	AddOwnExp(280000);
	AddSkillState( 509, 1, 180);
	Msg2Player("B�n nh�n ���c Tr�n Minh Chi Li�n.");
	AddItem(2,0,184,0,0,0,5,0);
	Msg2Player("B�n nh�n ���c 1 chi�c nh�n.")
	Msg2Player("B�n nh�n ���c 280.000 �i�m kinh nghi�m");
	Talk(1,"fwd","L�n n�y may nh� ng��i gi�p, nh�ng th� n�y ta t�ng ng��i.");
end

function fwd()
	Talk(1,"taytuy",10878);
end;

function taytuy()
	if(GetCamp() == 2) then
	Say("B�n nh�n ���c 1 c� h�i t�y �i�m k� n�ng mi�n ph�.",1,"B�t ��u t�y/taykynang");
	end
end;

function no()
end;
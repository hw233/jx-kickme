Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
--npc pho loi thu
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 10) then
		Say2(10842,1,1,GetName(),
		"��a 1 v�n l��ng/nv_303");
	return end
	if(nValue == 12) then
		Say2(10847,1,1,GetName(),
		END_TALK.."/done30");
	return end
	if(nValue == 17) then
		Say2(10900,1,1,GetName(),
		END_TALK.."/nv_50");
	return end
	Talk(1,"","Kh� Kh�... L�i ��n t�m l�o c� chuy�n g�?");
end;

function nv_303()
	if(GetCash() < 10000) then
		Talk(1,"",10845);
	else
		Pay(10000);
		SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,11));
		Msg2Player("Ph� L�i Th� b�o g�n ��y Tang Chu th��ng xu�t hi�n � L�m An <210/203>");
		AddNote(NOTEHEAD.."��n L�m An t�m Tang Chu <210/203>");
		Say2(10848,1,1,GetName(),
		END_TALK.."/no");
	end
end

function nv_50()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,18));
	Msg2Player("B�n l�n Bi�n Kinh d� la tin t�c, t�nh c� g�p Nh� Ng�c <210/196>.");
	AddNote(NOTEHEAD.."l�n Bi�n Kinh g�p Nh� Ng�c <210/196>");
end

function done30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,13));
	AddOwnExp(80000);
	AddSkillState( 509, 1, 180);
	AddItem(2,0,182,0,0,0,5,0);
	Msg2Player("B�n nh�n ���c 1 ng�c b�i.")
	Msg2Player("B�n nh�n ���c 80.000 �i�m kinh nghi�m");
	Talk(1,"","B�n tr�! Giang h� r�t nguy hi�m! Ta c� v�t n�y c� th� gi�p ���c ng��i.");
	AddNote(NOTEHEAD.."��n V� �ang ph�i t�m ��o Th�ch M�n");
end

function no()
end;
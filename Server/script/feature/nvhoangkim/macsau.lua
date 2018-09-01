Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
-- Ken Nguyen
-- npc Macsau
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,2);
	if(nValue == 1 and GetItemCount(49) > 0) then
		Say2(10374,1,1,GetName(),
		END_TALK.."/no");
		DelItem(49);
		SetTask(TASK_NVST, SetNumber2(nTaskValue,2,2));
		Msg2Player("M�c S�u b�o b�n ra b�n t�u ngo�i th�nh g�p c� �y.")
		AddNote(NOTEHEAD.."g�p M�c S�u ngo�i th�nh <204/186>");
	return end
	if(nValue == 3) then
		Say2(10398,1,1,GetName(),
		"��i tho�i v�i M�c X�o Nhi/macxaonhi");
	return end
	if(nValue == 4 and GetLevel() >= 30) then
		Say2(10400,1,1,GetName(),
		END_TALK.."/nv_30");
	return end
	if(nValue == 7) then
		Talk(1, "done30", format("��y kh�ng ph�i l� Ho�ng Kim L�n sao? %s B�n l�nh c�a ng��i c�ng kh�ng t�.",GetName()))
	return end
	if(nValue == 8 and GetLevel() >= 40) then
		Say2(10428,1,1,GetName(),
		END_TALK.."/nv_40");
	return end
	if(nValue == 11) then
		Talk(1, "done40", format("C�u Hi�n Chi Ch�! %s, ta qu� nhi�n kh�ng nh�n l�m ng��i.",GetName()))
	return end
	if(nValue == 18) then
		Say2(10216,1,0,GetName(),
		"��i tho�i v�i M�c S�u/forward601");
	return end
	Talk(1,"",10373);
end;

function nv_30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,5));
	AddOwnExp(10000);
	Msg2Player("M�c S�u b�o b�n �i Th�nh �� T�n T��ng T� t�m C�ng T� Ti�u �i�u tra tung t�ch c�a Ho�ng Kim L�n.")
	AddNote(NOTEHEAD.."t�m C�ng T� Ti�u Th�nh �� <403/319>");
end;

function nv_40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,9));
	AddOwnExp(15000);
	Msg2Player("M�c S�u b�o b�n �i D��ng Ch�u t�m  H� V� Th� �i�u tra tung t�ch c�a C�u Hi�n Chi Ch�.")
	AddNote(NOTEHEAD.."t�m H� V� Th� D��ng Ch�u <212/194>");
end;

function macxaonhi()
	Say2(10399,1,0,GetName(),
	END_TALK.."/done20");
	Msg2Player("M�c S�u b�o sau n�y s� t�m b�n.")
end;

function forward601()
	Say2(10242,1,1,GetName(),
		"��i tho�i v�i Nam Cung Phi V�n/forward602");
end;

function forward602()
	Say2(10286,1,0,GetName(),
		"L�i ��i tho�i v�i M�c S�u/forward603");
end;

function forward603()
	Say2(10313,1,1,GetName(),
		END_TALK.."/done60");
end;

function done20()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,4));
	AddOwnExp(5000);
	AddSkillState(509,1,180);
	AddItem(0,0,10,2,1,0,0,0);
	AddItem(2,0,183,0,0,0,5,0);
	Msg2Player("B�n nh�n ���c 1 con tu�n m� v� 1 ��i gi�y.")
end;

function done30()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,8));
	AddOwnExp(10000);
	AddSkillState(509,1,180);
	Msg2Player("M�c S�u n�i sau n�y s� t�m b�n");
	AddItem(2,0,176,0,0,0,5,0);
	Msg2Player("B�n nh�n ���c 1 kh�i m�o.")
	Talk(1,"","C� g�ng l�n");
end;

function done40()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,12));
	AddOwnExp(20000);
	AddSkillState(509,1,180);
	AddItem(2,0,178,0,0,0,5,0);
	Msg2Player("B�n nh�n ���c 1 h�ng li�n.")
	Msg2Player("M�c S�u n�i sau n�y s� t�m b�n. C� ta s� gi�p b�n ti�n h�nh t�y t�y, b�n �� c� c� h�i s�a �i�m k� n�ng. N�u b�n kh�ng thu�c phe ch�nh ph�i s� kh�ng ���c c� h�i n�y.")
	if(GetCamp() == 1) then
	Say("B�n nh�n ���c 1 c� h�i t�y �i�m k� n�ng mi�n ph�.",1,"B�t ��u t�y/taykynang");
	end
end;

function done60()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),2,19));
	AddOwnExp(90000);
	AddSkillState(509,1,180);
	Msg2Player("M�c S�u s� c�ng Nam Cung Phi V�n ��n Thi�n Long t� gi�i quy�t m�t s� chuy�n, b�n h�y v� g�p Long Ng�.")
end;

function no()
end;
Include("\\script\\header\\taskid.lua");
Include("\\script\\feature\\nvhoangkim\\hkhead.lua");
-- Ken Nguyen
-- npc Van Nhi
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nValue = GetNumber2(nTaskValue,4);
	if(nValue == 1 and GetItemCount(51) > 0) then
		if(GetSex() == 0) then
		Say2(10672,1,1,GetName(),
		END_TALK.."/no");
		else
		Say2(10673,1,1,GetName(),
		END_TALK.."/no");
		end
		DelItem(51);
		SetTask(TASK_NVST, SetNumber2(nTaskValue,4,2));
		AddNote(NOTEHEAD.."�i L�m An t�m Th�i C�ng C�ng <203/200>");
	return end
	if(nValue == 5) then
		Say2(10705,1,1,GetName(),
		END_TALK.."/done20");
	return end
	if(nValue == 9) then
		Say2(10841,1,1,GetName(),
		END_TALK.."/nv_302");
	return end
	Talk(1,"",14591);
end

function nv_302()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,10));
	Msg2Player("B�n l�p t�c ��n Giang T�n th�n t�m Ph� L�i Th�.");
	AddNote(NOTEHEAD.."��n Giang T�n Th�n t�m Ph� L�i Th� <445/387>");
end;

function done20()
	SetTask(TASK_NVST, SetNumber2(GetTask(TASK_NVST),4,6));
	AddOwnExp(30000);
	AddSkillState( 509, 1, 180);
	AddItem(2,0,180,0,0,0,5,0);
	Msg2Player("B�n nh�n ���c 1 y�u ��i.")
	Msg2Player("B�n nh�n ���c 30.000 �i�m kinh nghi�m");
	Talk(1,"","Th�y ng��i c�c kh� v� ta, ta t�ng ng��i v�t n�y!");
	AddNote(NOTEHEAD.."�i D��ng Ch�u t�m Ti�u S� <199/194>");
end;

function no()
end;
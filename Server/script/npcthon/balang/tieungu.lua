Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_DAOTAYTUY);
	local nTask = GetNumber(nTaskValue,9);
	if(nTask == 0) then
	Say(11275,2,
	"Gi�p/giup",
	"Kh�ng gi�p/kogiup"
	)
	elseif(nTask == 1 or nTask == 2) then
		if(GetItemCount(57) > 0) then
		SetTask(TASK_DAOTAYTUY,SetNumber(nTaskValue,9,3));
		if(GetSex() == 0) then
		AddItem(0,0,5,0,1,1,0,0)
		Msg2Player("L�y ���c ��i gi�y c�.")
		else
		AddItem(0,0,5,2,1,1,0,0)
		Msg2Player("L�y ���c ��i gi�y th�u.")
		end
		DelItem(57)
		AddRepute(5)
		Msg2Player("��a T� B� ho�n cho Ti�u Ng� ho�n th�nh nhi�m v�.")
		Msg2Player("Danh v�ng b�n t�ng th�m 5 �i�m.")
		Talk(1,"",11276)
		else
		Talk(1,"",11277)
		end
	else
		Talk(1,"",11278)
	end
end;

function giup()
	SetTask(TASK_DAOTAYTUY, SetNumber(GetTask(TASK_DAOTAYTUY),9,1));
	Talk(1,"",11280)
	Msg2Player("Ti�p nh�n nhi�m v�: gi�p Ti�u Ng� mua thu�c T� B� ho�n �� ch�a b�nh cho b�.")
end

function kogiup()
	Talk(1,"",11281)
end

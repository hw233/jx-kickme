Include("\\script\\header\\taskid.lua");

function main()
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nTask = GetNumber(nTaskValue,9);
	if(nTask == 0) then
	Say(12929,2,
	"Gi�p/giup",
	"Kh�ng gi�p/kogiup"
	)
	elseif(nTask == 1) then
	Talk(1,"",12930)
	elseif(nTask == 2) then
		SetTask(TASK_NVDANHVONG, SetNumber(nTaskValue,9,3));
		if(GetSex() == 0) then
		AddItem(0,0,7,2,1,1,0,0)
		Msg2Player("Nh�n ���c m�t chi�c m�.")
		else
		AddItem(0,0,7,8,1,1,0,0)
		Msg2Player("Nh�n ���c m�t ng�n thoa.")
		end
		AddRepute(5)
		Msg2Player("Th�ng b�o tin v� v� s� nh�n H� t� l�m �� �� cho cha H� t�, ho�n th�nh nhi�m v�.")
		Msg2Player("Danh v�ng c�a b�n t�ng th�m 5 �i�m.")
		Talk(1,"",12931)
	else
	Talk(1,"",12932)
	end
end

function giup()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),9,1));
	Talk(1,"",12930)
	Msg2Player("Nh�n nhi�m v�: �i xin cho H� T� h�c v�.")
end

function kogiup()
end

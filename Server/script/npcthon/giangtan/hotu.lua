Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_TAYTUYKINH);
	local nTask = GetNumber(nTaskValue,6);
	if(nTask == 0) then
	Say(12916,2,
	"Gi�p/giup",
	"Kh�ng gi�p/kogiup"
	)
	elseif(nTask == 1 or nTask == 2) then
		if(GetItemCount(62) < 1) then
		Talk(1,"",RANDOM(12920, 12921))
		else
		SetTask(TASK_TAYTUYKINH, SetNumber(nTaskValue,6,3));
		AddItem(0,0,0,0,1,1,0,0)
		DelItem(62)
		AddRepute(8)
		Msg2Player("��a c�y n� cho H� t�, ho�n th�nh nhi�m v�.")
		Msg2Player("Nh�n ���c 1 m�n binh kh�.")
		Msg2Player("Danh v�ng c�a b�n t�ng th�m 8 �i�m.")
		Talk(1,"",12919)
		end
	else
		Talk(1,"",12922)
	end
end

function giup()
	SetTask(TASK_TAYTUYKINH, SetNumber(GetTask(TASK_TAYTUYKINH),6,1));
	Talk(2,"",12918, 12923)
	Msg2Player("Nh�n nhi�m v�: ��n th� r�n trong th�n l�y gi�p H� t� c�y n�.")
end

function kogiup()
	Talk(1,"",12924)
end

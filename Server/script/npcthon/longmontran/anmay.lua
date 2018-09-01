Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nTask = GetNumber(nTaskValue,8);
	if(nTask == 0) then
	Talk(1,"nhiemvu","V� ��i hi�p n�y, xin gi�p ta m�t vi�c...")
	elseif(nTask == 1) then
		Talk(1,"",12043)
	elseif(nTask == 2) then
		Talk(1,"hoanthanh",12041)
	else
		Talk(1,"",12042)
	end
end;

function nhiemvu()
	Say(12044,2,
	"Gi�p/giup",
	"Kh�ng gi�p/kogiup"
	)
end;

function hoanthanh()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),8,3));
	if(GetSex() == 0) then
		AddItem(0,0,8,1,1,1,0,0)
	else
		AddItem(0,0,8,0,1,1,0,0)
	end
		AddRepute(5)
		Msg2Player("Nh�n ���c m�t h� uy�n.")
		Msg2Player("N�i ph�n �ng c�a Mi Nhi cho l�o �n m�y ho�n th�nh nhi�m v�.")
		Msg2Player("Danh v�ng c�a b�n t�ng th�m 5 �i�m.")
		Talk(1,"",12048)
end;

function giup()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),8,1));
	Talk(1,"",12045)
	Msg2Player("Nh�n nhi�m v� gi�p l�o �n m�y ��a tin cho Tri�u Mi Nhi")
end

function kogiup()
	Talk(2,"",12046,12047)
end

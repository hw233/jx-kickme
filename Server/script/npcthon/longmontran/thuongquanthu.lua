Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nTask = GetNumber(nTaskValue,7);
	if(nTask == 0) then
	Talk(2,"nhiemvu",12049,12050)
	elseif(nTask == 2) then
		Talk(1,"hoanthanh",12051)
	else
		Talk(1,"",12052)
	end
end;

function nhiemvu()
	Say(12053,2,
	"Gi�p h�n ngh� ra bi�n ph�p/giup",
	"Kh�ch l� tinh th�n h�n/kogiup"
	)
end;

function hoanthanh()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),7,3));
		AddItem(0,0,1,0,1,1,0,0)
		AddRepute(3)
		Msg2Player("Nh�n ���c m�t m�n binh kh�.")
		Msg2Player("B�o tin t�m ���c vi�c cho Th��ng Quan Thu ho�n th�nh nhi�m v�.")
		Msg2Player("Danh v�ng c�a b�n t�ng th�m 3 �i�m.")
		Talk(1,"",12056)
end;

function giup()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),7,1));
	Talk(1,"",12054)
	Msg2Player("Nh�n nhi�m v� gi�i thi�u c�ng vi�c cho Th��ng Quan Thu")
end

function kogiup()
	Talk(1,"",12055)
end

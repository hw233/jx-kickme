Include("\\script\\header\\taskid.lua");
function main()
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nTask = GetNumber(nTaskValue,6);
	if(nTask == 0) then
	Say(11297,2,
	"Gi�p/giup",
	"Kh�ng gi�p/kogiup"
	)
	elseif(nTask == 1) then
		if(GetItemCount(58) > 0) then
		SetTask(TASK_NVDANHVONG,SetNumber(nTaskValue,6,2));
		if(GetSex() == 0) then
		AddItem(0,0,7,2,1,4,0,0)
		Msg2Player("Nh�n ���c m�t chi�c m�.")
		else
		AddItem(0,0,7,8,1,4,0,0)
		Msg2Player("Nh�n ���c m�t chi�c tr�m.")
		end
		DelItem(58)
		AddRepute(6)
		Msg2Player("��a ��i b�ng tai cho A Ph��ng ho�n th�nh nhi�m v�.")
		Msg2Player("Thanh th� giang h� c�a b�n gia t�ng 6 �i�m.")
		Talk(1,"",11298)
		else
		Talk(1,"",11299)
		end
	else
		Talk(1,"",RANDOM(11300,11301))
	end
end;

function giup()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),6,1));
	Talk(1,"",11299)
	Msg2Player("Nh�n nhi�m v�: A Ph��ng nh� b�n �i xem th� c� m�n trang s�c n�o gi� r� l�m c�a h�i m�n kh�ng.")
end

function kogiup()
end

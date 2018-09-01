Include("\\script\\header\\taskid.lua");
MAX_RESTTIME = 60	--60 phut lam 1 lan
function main(NpcIndex)
	local nValue = GetTask(TASK_NVDANHVONG);
	local nTaskTime = GetTask(TASK_THOIGIAN2);
	local nCurTime = GetTimeMin();
	if(nCurTime - nTaskTime < MAX_RESTTIME) then
		Talk(1,"",RANDOM(12564,12566))
	return end
	if(GetNumber(nValue, 3) ~= 1) then --chua co nhan
		Talk(6,"yeucau",12558,12559,12560,12561,12562,12563)
	else
		if(kiemtra() == 1) then
		Talk(2,"",12556,12557)
		Msg2Player("B¹n nhËn ®­îc 15 ®iÓm danh väng.")
		AddRepute(15)
		SetTask(TASK_NVDANHVONG, SetNumber(nValue,3,0))
		SetTask(TASK_THOIGIAN2,nCurTime)
		else
		Talk(1,"",12567)
		end
	end
end;

function yeucau()
	Say(12567,2,
		"§Ó ta t×m gióp/timthuoc",
		"Ta bËn råi/no")
end;

function timthuoc()
	local nValue = GetTask(TASK_NVDANHVONG);
	nValue = SetNumber(nValue,3,1);
	SetTask(TASK_NVDANHVONG, nValue);
	AddNote(10342);
end;

function kiemtra()
	for i=31,35 do
		if(GetItemCount(i) <= 0) then
		return 0 end
	end
	for i=31,35 do
		DelItem(i)
	end
	return 1
end;

function no()
end;
Include("\\script\\header\\taskid.lua");
THANH_DICHTRAM={
{1  	,36},--phuong tuong
{11 	,37},--thanh do
{162	,38},--dai ly
{37 	,39},--bien kinh
{78 	,40},--tuong duong
{80 	,41},--duong chau
{176	,42}--lam an
};

MAX_RESTTIME = 60	--60 phut lam 1 lan
CURTIME = GetTimeMin();
function main(NpcIndex)
	local nValue = GetTask(TASK_NVDANHVONG);
	local nEnd = GetNumber(nValue, 4);
	local nBegin = GetNumber(nValue, 5);
	local w,x,y = GetWorldPos();
	if(nEnd == 0) then --chua co nhan
		local nTaskTime = GetTask(TASK_THOIGIAN2);
		if(CURTIME - nTaskTime < MAX_RESTTIME) then
		Talk(1,"",10092)
		return end
		Say(10094,2,
		"Nh�n ��a th� gi�p/nhannv",
		"Hi�n ta �ang b�n/no")
	return end
	if(w == THANH_DICHTRAM[nBegin][1]) then
		if(GetItemCount(THANH_DICHTRAM[nEnd][2]) > 0) then
			Talk(1,"",10097);
		else
			Say(10096,2,
			"N�p ti�n/noptien",
			"Ta kh�ng c� ti�n/kotien")
		end
	elseif(w == THANH_DICHTRAM[nEnd][1]) then
		if(GetItemCount(THANH_DICHTRAM[nEnd][2]) > 0) then
		DelItem(THANH_DICHTRAM[nEnd][2]);
		SetTask(TASK_THOIGIAN2,CURTIME);
		SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),4,0));
		AddRepute(5);
		Earn(500);
		Msg2Player("Giao c�ng v�n ho�n th�nh, b�n nh�n ���c 5 �i�m danh v�ng");
		Talk(1,"",10318);
		else
		Talk(1,"",10319);
		end
	else
		Talk(1,"",10092);
	end
end

function nhannv()
	local nSize = getn(THANH_DICHTRAM);
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nRand = random(1,nSize);
	local w,x,y = GetWorldPos();
	if(THANH_DICHTRAM[nRand][1] == w) then
		if(nRand == 1) then
			nRand = 2;
		else
			nRand = nRand - 1;
		end
	end
	AddItem(0,4,THANH_DICHTRAM[nRand][2],0,0,5,0,0);
	nTaskValue = SetNumber(nTaskValue,4,nRand);
	for i=1,nSize do
		if(w == THANH_DICHTRAM[i][1]) then
		nTaskValue = SetNumber(nTaskValue,5,i);
		end
	end
	SetTask(TASK_NVDANHVONG,nTaskValue);
	Msg2Player("Nh�n nhi�m v� giao c�ng v�n kh�n c�p.");
	AddNote(10343);
	Talk(1,"",10097);
end;

function noptien()
	if(GetCash() >= 2000) then
	Pay(2000);
	SetTask(TASK_THOIGIAN2,CURTIME);
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),4,0));
	Talk(1,"",10098);
	return end
	kotien();
end;

function kotien()
	Talk(1,"",10099);
end;

function no()
end;

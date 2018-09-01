
-- Ken Nguyen
-- npc Nhiep thi tran
--Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\vuotai.lua");
Include("\\script\\header\\openclose.lua");
BOSS_SATTHU={
	{"V�n H� Tinh",321,35663,82248},
	{"B�o Tri�t S�n",321,41339,83846},
	{"Phan Ng�t Nh�n",321,39942,96050},
	{"Li�n H�nh Th�i",321,47900,87972},
	{"Cam Ch�nh C� ",225,50882,106326},
	{"D��ng Phong D�t",225,46399,108248},
	{"V� Nh�t Th� ",225,40315,103642},
	{"H� Sinh Vong",225,45648,99316},
	{"Gi� Gi�i Nh�n",93,52736,105030},
	{"Tr�nh C�u Nh�t",93,52604,97844},
	{"Chu S� B� ",93,55614,102490},
	{"Trang Minh Trung",93,51288,100816},
	{"T�ng Ch� O�n",75,54544,101848},
	{"V� Bi�n Th�nh",75,56202,100182},
	{"C� Th� ��ng",75,58241,102484},
	{"Gia C�t Kinh H�ng",75,52202,101334},
	{"Tr� Thi�n M�n",340,39137,87692},
	{"�o�n L�ng Nguy�t",340,55493,88554},
	{"Nh�m Th��ng Khung",340,61636,88584},
	{"T� D�t Minh",340,40792,87600}
};

CLOSE_SAY = "��ng/no";
FIGHT_TIME = "Nhi�m v� th�ch th�c th�i gian/thachthuc"
BUILD_ITEM = "Ch� t�o s�t th� gi�n./epsatthugian"
MAX_PERDAY = 10
FTIME_MINPLAYER = 4
FTIME_MAXTIMES = 2
FTIME_MONEY = 30000
function main(NpcIndex)
	if(CLOSE_FEATURE == 1) then
	Talk(1,"",TALK_CLOSE)
	return end
	if (GetLevel() < 80) then
	Talk(1, "",13900)
	return end
	local bHave = GetNumber2(GetTask(TASK_NVST),1)
	if(bHave > 0) then
	Say2(10832,4,1,"",
	FIGHT_TIME,
	"H�y b� nhi�m v� s�t th�./huynhiemvu",
	BUILD_ITEM,
	CLOSE_SAY)
	return end
	Say2(10832,4,1,"",
	FIGHT_TIME,
	"Ti�p nh�n Nhi�m v� s�t th�./nhannv",
	BUILD_ITEM,
	CLOSE_SAY)
end;

function thachthuc()
	Say2(12267,4,1,"",
	"Tham gia khi�u chi�n/khieuchien",
	"Ki�m tra �i�u ki�n t� ��i/checknhom",
	"Li�n quan ��n khi�u chi�n/timhieu",
	"M�u ch�y ��u r�i, t�t nh�t n�n tr�nh xa/no")
end;

function khieuchien()
	local nMapNo = 0;
	for i=1,getn(MAP_VUOTAI) do
		if(GetGlbMissionV(i-1) == 0) then
		nMapNo = i;
		end
	end
	if(nMapNo == 0) then
		Talk(1,"",10246)
	return end
	local nSubWorldId = SubWorldID2Idx(MAP_VUOTAI[nMapNo])
	if nSubWorldId < 0 then	--chua mo map, ngung ham`
	return end
	SubWorld = nSubWorldId;
	local nRestTime = GetMSRestTime(1,1);
	if(IsMission(1) == 0 or nRestTime <= 0) then
		Talk(1,"",12308)--thoi gian chua toi hoac qua gio`
	return end
	if(IsCaptain() ~= 1) then
		Talk(1,"",10244)
	return end
	if(GetTeamSize() < FTIME_MINPLAYER) then
		Talk(1,"",10245)
	return end;
	local nTeamId = GetTeam();
	local nCaptain = PlayerIndex;
	local nIndex;
	local nTaskValue;
	--local nPlayerDataIdx;
	for i=0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			if(GetLevel() < 80) then
			PlayerIndex = nCaptain;
			Talk(1,"",10245)
			return end
			local nSTG = GetItemCount(27,3) + GetItemCount(28,3) + GetItemCount(29,3) +
			GetItemCount(30,3) + GetItemCount(31,3);
			if(nSTG < 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",10245)
			return end
			nTaskValue = GetNumber(GetTask(TASK_RESET),3) - GetNumber(GetTask(TASK_RESET),4);
			if(nTaskValue > 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",10245)
			return end
			if(i == 0 and GetCash() < FTIME_MONEY)	then--doi truong
			Talk(1,"",10245)
			return end
		end
	end
	local nMapAR = 1;
	local w,x,y = GetWorldPos();
	if(w == 11) then
		nMapAR = 2;
		elseif(w == 162) then
		nMapAR = 3;
		elseif(w == 37) then
		nMapAR = 4;
		elseif(w == 78) then
		nMapAR = 5;
		elseif(w == 80) then
		nMapAR = 6;
		elseif(w ==176) then
		nMapAR = 7;
	end
	local count = 0;
	local nTotalTask;
	local nLonghuyet;
	local PlayerTab = {};
	for i=0,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerTab[count+1] = nIndex;
			count = count + 1;
			PlayerIndex = nIndex;
			nTotalTask = GetTask(TASK_NVST);
			nTotalTask = SetNumber(nTotalTask,9, nMapAR);
			SetTask(TASK_NVST, nTotalTask);
			
			nTotalTask = GetTask(TASK_RESET);
			nTaskValue = GetNumber(nTotalTask,3);--so lan
			nLonghuyet = GetNumber(nTotalTask,4);
			if(nTaskValue > 1) then
				SetTask(TASK_RESET, SetNumber(nTotalTask,4,nLonghuyet-1));
				else
				SetTask(TASK_RESET, SetNumber(nTotalTask,3,nTaskValue+1));
			end
			
			if(i == 0)	then--doi truong
			Pay(FTIME_MONEY)
			SetMissionV(0,GetUUID())--ID doi truong param 0
			end
			AddMSPlayer(1,0)
			StopTimer()	--ngung hen gio dang chay bat ky
			SetLogoutRV(1)--dung diem phuc sinh dang nhap
			SetDeathScript("\\script\\player\\death_vuotai.lua") --set script khi chet
			NewWorld(MAP_VUOTAI[nMapNo],1560,3216) --di chuyen vao vuot ai
			--SetDeathScript("\\script\\player\\death_tongkim.lua") --set script khi chet
			SetPunish(1)	--bat tinh nang chet khong mat' gi`
			SetFightState(1)
		end
	end
	--set phe phai' chung de khoi danh trung nhau
	PlayerIndex = nCaptain;
	LeaveTeam()	--giai tan nhom
	if(count > 0) then
		for i=1,count do
			PlayerIndex = PlayerTab[i];
			SetCurCamp(1)
			if(GetItemCount(27,3) > 0) then
			DelItem(27,3)
			elseif(GetItemCount(28,3) > 0) then
			DelItem(28,3)
			elseif(GetItemCount(29,3) > 0) then
			DelItem(29,3)
			elseif(GetItemCount(30,3) > 0) then
			DelItem(30,3)
			else
			DelItem(31,3)
			end
		end
	end
	------------------------------------------------------------
	Msg2MSAll(1,format("C�n %d gi�y s� ch�nh th�c t�nh th�i gian nhi�m v�.",floor(nRestTime/18)));
	SetGlbMissionV(nMapNo-1,1);--set map nay` da co nguoi dang ky
end;

function checknhom()
	if(IsCaptain() ~= 1) then
		Talk(1,"",12299)
	return end
	if(GetLevel() < 80) then
		Talk(1,"",10217)
	return end
	if(GetTeamSize() < FTIME_MINPLAYER) then
		Talk(1,"",12307)
	return end;
	local nSTG = GetItemCount(27,3) + GetItemCount(28,3) + GetItemCount(29,3) +
	GetItemCount(30,3) + GetItemCount(31,3);
	if(nSTG < 1) then
		Talk(1,"",12321)
	return end
	if(GetCash() < 30000) then
		Talk(1,"",10218)
	return end
	local nTaskValue = GetNumber(GetTask(TASK_RESET),3) - GetNumber(GetTask(TASK_RESET),4);
	if(nTaskValue > 1) then
		Talk(1,"",10219)
	return end
	local nTeamId = GetTeam();
	local nCaptain = PlayerIndex;
	local nIndex;
	for i=1,7 do
		nIndex = GetTeamMem(nTeamId, i );
		if(nIndex > 0) then
			PlayerIndex = nIndex;
			local szName = GetName();
			if(GetLevel() < 80) then
			PlayerIndex = nCaptain;
			Talk(1,"",format("Th�nh vi�n %s ch�a �� 80 c�p!",szName))
			return end
			nSTG = GetItemCount(27,3) + GetItemCount(28,3) + GetItemCount(29,3) +
			GetItemCount(30,3) + GetItemCount(31,3);
			if(nSTG < 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",format("Th�nh vi�n %s kh�ng c� S�t th� gi�n!",szName))
			return end
			nTaskValue = GetNumber(GetTask(TASK_RESET),3) - GetNumber(GetTask(TASK_RESET),4);
			if(nTaskValue > 1) then
			PlayerIndex = nCaptain;
			Talk(1,"",format("Th�nh vi�n %s kh�ng c�n s� l�n tham gia!",szName))
			return end
		end
	end
	PlayerIndex = nCaptain;
	Talk(1,"",10220);
end;

function timhieu()
	Say2(12268,1,1,"",
	CLOSE_SAY)
end;

function nhannv()
	if(GetCash() < 10000) then
	Talk(1,"","Ng��i c�n c� <1 v�n ng�n l��ng> �� nh�n nhi�m v�!")
	return end
	local nValue = GetTask(TASK_NVST);
	local nDone = GetNumber2(GetTask(TASK_RESET),4);
	if(nDone >= MAX_PERDAY) then
		Talk(1,"",13902)
	return end
	Pay(10000);
	local nNum = RANDOM(1,getn(BOSS_SATTHU));
	SetTask(TASK_NVST, SetNumber2(nValue,1,nNum));
	local str = format("%s �ang � %s %d/%d. B�n tay h�n nhu�m ��y m�u t��i. Ta kh�ng tin l� ng��i gi�t ���c h�n.", BOSS_SATTHU[nNum][1], GetSubWorldName(BOSS_SATTHU[nNum][2]), floor(BOSS_SATTHU[nNum][3]/256), floor(BOSS_SATTHU[nNum][4]/512));
	Talk(1,"",str);
	str = format("Nhi�p Th� Tr�n: gi�t %s %s %d/%d.", BOSS_SATTHU[nNum][1], GetSubWorldName(BOSS_SATTHU[nNum][2]), floor(BOSS_SATTHU[nNum][3]/256), floor(BOSS_SATTHU[nNum][4]/512));
	AddNote(str);
end;

function epsatthugian()
	local kim = 	GetItemCount(22,3)
	local moc = 	GetItemCount(23,3)
	local thuy =	GetItemCount(24,3)
	local hoa = 	GetItemCount(25,3)
	local tho = 	GetItemCount(26,3)
	local succ = 0;
	if(kim >= 5) then
		succ = 1;
		AddItem(0,3,27,0,0,0,1,0);
		DelItem(22,3,5);
		Msg2Player("K�t h�p th�nh c�ng! Nh�n ���c 1 S�t th� gi�n h� Kim.")
	end
	if(moc >= 5) then
		succ = 1;
		AddItem(0,3,28,0,0,1,1,0);
		DelItem(23,3,5);
		Msg2Player("K�t h�p th�nh c�ng! Nh�n ���c 1 S�t th� gi�n h� M�c.")
	end
	if(thuy >= 5) then
		succ = 1;
		AddItem(0,3,29,0,0,2,1,0);
		DelItem(24,3,5);
		Msg2Player("K�t h�p th�nh c�ng! Nh�n ���c 1 S�t th� gi�n h� Th�y.")
	end
	if(hoa >= 5) then
		succ = 1;
		AddItem(0,3,30,0,0,3,1,0);
		DelItem(25,3,5);
		Msg2Player("K�t h�p th�nh c�ng! Nh�n ���c 1 S�t th� gi�n h� H�a.")
	end
	if(tho >= 5) then
		succ = 1;
		AddItem(0,3,31,0,0,4,1,0);
		DelItem(26,3,5);
		Msg2Player("K�t h�p th�nh c�ng! Nh�n ���c 1 S�t th� gi�n h� Th�.")
	end
	if(succ == 0) then
		Talk(1,"","Ng��i kh�ng c� 5 s�t th� l�nh c�ng ng� h�nh.")
	end
end;

function huynhiemvu()
	Say2(13909, 2,1,"",
	"��ng ta kh�ng mu�n gi�t ng��i n�a./xacnhanhuy",
	"�� ta suy ngh� l�i./no")
end;

function xacnhanhuy()
	local nValue = GetTask(TASK_NVST);
	SetTask(TASK_NVST, SetNumber2(nValue,1,0));
	Msg2Player("Nhi�m v� s�t th� hi�n t�i �� ���c h�y b�.")
end;

function no()
end;

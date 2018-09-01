
Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\time.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\npcfile.lua");
Include("\\script\\header\\bosstieuhk.lua");
Include("\\script\\header\\huyhoang.lua");
Include("\\script\\header\\vuotai.lua");
MSG_LIENDAU = "Vâ l©m kiÖt xuÊt %d ®· ®Õn giai ®o¹n b¸o danh. C¸c cao thñ mau nhanh ch©n ®¨ng ký thi ®Êu!"
--Chia lay so du: (a/b - floor(a/b))*b
Yr,Mth,Dy,Hr,Mn,Se = 0,0,0,0,0,0;
function OnServerTimer()
	Yr,Mth,Dy,Hr,Mn,Se = GetTime()
	--sendinfo()
	--reset task 12h khuya
	resettask()
	--boss tieu hoang kim
	addbosstieuhk()
	--huy hoang
	addhuyhoang()
	--thach thuc thoi gian
	active_vuotai()
	--lien dau
	active_liendau()
	--phonglangdo
	active_phonglangdo()
	--xo so'
	active_somayman()
	--tongkim nªn ®Æt ë dßng cuèi cïng
	active_tongkim()
end;

function sendinfo()
	if(Mn == 15 or Mn == 45) then
		AddNews(format("<Th«ng c¸o> Sè nh©n sÜ ®ang trùc tuyÕn: <color=red>%d<color> .", GetPlayerCount()));
	end;
end;

function resettask()
	if(Hr ~= 0 or Mn ~= 0) then
	return end
	SetDataInt(DATA_DCHAVERES,0);
	local nValue = 0;
	for i=1,1499 do
		PlayerIndex = i;
		if(GetPlayerNpcIdx() > 0) then
		SetTask(TASK_NAM,Yr-2000);
		SetTask(TASK_THANG,Mth);
		SetTask(TASK_NGAY,Dy);
		--reset task ngay moi
		SetTask(TASK_RESET,0);
		SetTask(TASK_RESET2,0);
		SetTask(TASK_DATCUOC4, 0);
		SetTask(TASK_DATCUOC5, 0);
		SetTask(TASK_DATCUOC6, 0);
		end
	end
end

function addbosstieuhk() 
    if (Hr == 18 and Mn == 10 )then
	releasebosstieu()
	return end
    if (Hr == 22 and Mn == 10) then
	releasebosstieu()
	return end
end;

function addhuyhoang()
--qua huy hoang
	if(Hr == 12 and Mn == 0) then
	releasehhh()
	return end
	if(Hr == 12 and Mn == 5) then
	releaseqhh()
	return end
	if(Hr == 12 and Mn == 30) then
	releasehhh()
	return end
	if(Hr == 12 and Mn == 35) then
	releaseqhh()
	return end
--qua hoang kim
	if(Hr == 13 and Mn == 0) then
	releasehhk()
	return end
	if(Hr == 14 and Mn == 5) then
	releaseqhk()
	return end
end;

function active_vuotai()
	--Check thoi gian
	if(Mn == 0) then
		AddCountNews(10221,3)
		local nSubWorldId;
		for i=1,getn(MAP_VUOTAI) do
			nSubWorldId = SubWorldID2Idx(MAP_VUOTAI[i])
			if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 5400)--so phut de chinh thuc bat dau
			end
		end
	end
	--thong bao bat dau
	if(Mn == 5) then
		AddCountNews(10247,3)
	end
end;

function active_liendau()
	if (Hr == 18)	then
		if(Mn == 0 or Mn == 15 or Mn == 30 or Mn == 45) then
			Msg2SubWorld(format(MSG_LIENDAU,floor(Mn/15)+1))
			local nSubWorldId = SubWorldID2Idx(396)
			if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 5400)--so phut de chinh thuc bat dau
			end
		end
	elseif(Hr == 19 and Mn == 0) then
		SaveDataFile();
	end
end;

function active_phonglangdo()
	--Check thoi gian
	if(Mn == 1) then
		AddCountNews(10137,3)
		local nSubWorldId;
			nSubWorldId = SubWorldID2Idx(337)
			if (nSubWorldId >= 0) then
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 9720)--so phut de chinh thuc bat dau
			end
	end
end

function active_somayman()
	if(Hr == 16 and Mn == 45) then
		SetDataInt(DATA_DCHAVERES,1);
		SetDataInt(DATA_DATCUOC,GetDataInt(DATA_DATCUOC)+1);
		for i=DATA_DCBEGIN,DATA_DCEND do
		SetDataInt(i,random(99));
		end
		Msg2SubWorld("HiÖn t¹i ®· cã kÕt qu¶ 'con sè may m¾n'. Quý ®ång ®¹o xem ë LÔ quan.");
	end;
end;

function active_tongkim()
	--Check thoi gian
	local nSubWorldId = SubWorldID2Idx(380)
	if (nSubWorldId >= 0) then
	
	for i=1,getn(TONGKIM_TIMER) do
		if(Hr == TONGKIM_TIMER[i][1] and Mn == TONGKIM_TIMER[i][2]) then
			AddCountNews(10644,3)
			AddCountNews2(10222,3)
			SubWorld = nSubWorldId;
			OpenMission(1)
			StartMissionTimer(1,1, 10*1080)--so phut de chinh thuc bat dau
			StartMissionTimer(1,2, 40*1080)--thoi gian nguyen soai ra
			StartMissionTimer(1,3, 60*1080)--tong thoi gian ca tran
		end
	end
	--thoi gian bao danh con lai
	SubWorld = nSubWorldId;
	local RestTK = GetMSRestTime(1,1);
	local Minute;
	if (RestTK > 0) then
		Minute = floor(RestTK/1080);
		if(Minute == 7 or Minute == 3) then
		AddCountNews(10644,3)
		AddCountNews2(format("Thêi gian b¸o danh Tèng Kim cßn l¹i lµ %d phót.",Minute),3)
		end
	end
	--thoi gian con lai cua tran danh'
	RestTK = GetMSRestTime(1,3);
	if (RestTK > 0) then
		Minute = floor(RestTK/1080);
		if(Minute > 0) then
		for i=1,GetMSPlayerCount(1) do
			if((GetPMParam(1, i, 0) == 1) and (GetPMParam(1, i, 1) == 1)) then --neu co online va dang trong chien dau
				PlayerIndex = MSDIdx2PIdx(1, i);
				SendReport(1,Minute,0);
			end
		end
		end
	end
	
	end
end;
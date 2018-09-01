--script khi player dang nhap
--author: Ken Nguyen
--Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
--Chia lay so du: (a/b - floor(a/b))*b

function main()
	Yr,Mth,Dy,Hr,Mn,Se = GetTime();
	local nNam = GetTask(TASK_NAM) + 2000;
	local nThang = GetTask(TASK_THANG)
	local nNgay = GetTask(TASK_NGAY)
	if(nNam ~= Yr or nThang ~= Mth or nNgay ~= Dy) then --reset 1 ngay moi
		SetTask(TASK_NAM,Yr-2000);
		SetTask(TASK_THANG,Mth);
		SetTask(TASK_NGAY,Dy);
		--reset task can thiet tai day
		SetTask(TASK_RESET,0);
		SetTask(TASK_RESET2,0);
		SetTask(TASK_DATCUOC4, 0);
		SetTask(TASK_DATCUOC5, 0);
		SetTask(TASK_DATCUOC6, 0);
	end
	local nAuraT = GetTask(TASK_THOIGIAN4);
	if(nAuraT > 0) then
		local nCurTime = GetTimeMin();
		if(nCurTime - nAuraT > 0) then
		SetTask(TASK_THOIGIAN4, 0);
		SetRankEx(0,1);
		end
	end
	local nTTLTime = GetTask(TASK_TIENTHAOLO)
	if(nTTLTime > 0) then
		AddSkillState(440, 1, nTTLTime);
	end
	nTTLTime = GetTask(TASK_THIENSONBAOLO)
	if(nTTLTime > 0) then
		AddSkillState(441, 1, nTTLTime*1080);
	end
	nTTLTime = GetTask(TASK_QUEHOATUU)
	if(nTTLTime > 0) then
		AddSkillState(450, 1, nTTLTime*1080);
	end
	DelMagic(1486);
	--Msg2Player("<color=green>")
end;

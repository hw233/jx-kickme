--Ken Nguyen
--04/03/2014

BINHSI_FILE = "\\script\\feature\\tongkim\\die_binhsi.lua"
HIEUUY_FILE = "\\script\\feature\\tongkim\\die_hieuuy.lua"
THONGLINH_FILE = "\\script\\feature\\tongkim\\die_thonglinh.lua"
TONGKIM_DROP = "\\script\\feature\\tongkim\\drop.lua"
TICHLUY_GIETNGUOI = 60
TICHLUY_GIETNPC = 6
TICHLUY_LIENTRAM = 10
TICHLUY_THUONG = 400

EXPAND_RANK={
{7000,5,310,315},
{5000,4,309,314},
{3000,3,308,313},
{1000,2,307,312},
{0   ,1,306,311}
};

TONGHIEUUY_NPC={
{44187,107834},
{45317,108086},
{44851,106476},
{45389,109150},
{44786,110082},
{43690,111214},
{42167,108222},
{42833,107602},
{43800,106458}
};

TONGTHONGLINH_NPC={
{43728,106248},
{43056,107356},
{42076,108052},
{44261,111134},
{44769,109914},
{45216,108506}
};

KIMHIEUUY_NPC={
{46210,104960},
{47264,104954},
{47427,106500},
{49393,105850},
{50684,105522},
{51440,104506},
{48407,101386},
{47626,102416},
{47067,103444}
};

KIMTHONGLINH_NPC={
{47232,102956},
{47678,101912},
{48368,100730},
{51695,103964},
{50909,104990},
{49703,106202}
};

function updatetopten(nTotalAccum,nDesPlayerData)
	local i;
	local nRankAcc = -1;
	local nData = 0;
	--tim xem co trong bang chua?
	for i=10,19 do
		if(nDesPlayerData == GetMissionV(i)) then
			nData = i;
			i = 20; --break
		end
	end
	--check diem tich luy co kha nang vao bang ko? va vi tri thu may?
	for i=0,9 do
		if(nTotalAccum > GetMissionV(i)) then
			nRankAcc = i
			i = 10; --break
		end
		if(nData == i+10 and nRankAcc < 0) then
			nRankAcc = i
			i = 10; --break
		end
	end
	
	if(nRankAcc < 0) then --neu ko du diem de vao bang thi ngung
	return 0 end
	--du diem vao bang~ thi` sap xep lai bang~
	if(nRankAcc == 9 or nData-10 == nRankAcc) then	--cuoi' bang~ hoac trung vi tri'
	SetMissionV(nRankAcc,nTotalAccum)	--chen data moi vao
	SetMissionV(nRankAcc+10,nDesPlayerData)
	return 1 end

	local RankTab = {};
	local DataTab = {};
	local count = 0;
	--sao luu data cu~
	if(nData == 0) then
		for i=nRankAcc,8 do
			count = count + 1;
			RankTab[count] = GetMissionV(i)
			DataTab[count] = GetMissionV(i+10)
		end
	else
		for i=nRankAcc,nData-11 do
			count = count + 1;
			RankTab[count] = GetMissionV(i)
			DataTab[count] = GetMissionV(i+10)
		end
		for i=nData-9,9 do
			count = count + 1;
			RankTab[count] = GetMissionV(i)
			DataTab[count] = GetMissionV(i+10)
		end
	end
	SetMissionV(nRankAcc,nTotalAccum)	--chen data moi vao
	SetMissionV(nRankAcc+10,nDesPlayerData)	--chen data moi vao
	for i=nRankAcc+1,9 do
		SetMissionV(i,RankTab[i-nRankAcc])	--di chuyen data cu~ xuong 1 bac
		SetMissionV(i+10,DataTab[i-nRankAcc])	--di chuyen data cu~ xuong 1 bac
	end
	--for i=0,9 do
	--Msg2Player("Hang "..(i+1).." Acc "..GetMissionV(i).." Data "..GetMissionV(i+10))
	--end
	return 1;
end;

function release_npctk()
	--add quai
	local nNpcIdx = 0;
	--tong binh
	AddNpcAuto(1,175,207,{631},100,380,175,207,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,173,210,{631},100,380,173,210,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,176,210,{631},100,380,176,210,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	
	AddNpcAuto(1,163,211,{631},100,380,163,211,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,166,209,{631},100,380,166,209,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,171,207,{631},100,380,171,207,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,176,212,{631},100,380,176,212,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,174,215,{631},100,380,174,215,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,171,217,{631},100,380,171,217,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
		
	AddNpcAuto(2,168,214,{631},100,380,167,213,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(2,164,215,{631},100,380,163,214,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(2,168,217,{631},100,380,167,216,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	--hieu uy
	for i=1,getn(TONGHIEUUY_NPC) do
		nNpcIdx = AddNpcNew(632,100,380,TONGHIEUUY_NPC[i][1],TONGHIEUUY_NPC[i][2],HIEUUY_FILE,
		nil,nil,1,"555",0,70000,nil,800,100,200,300,nil,4320,30,nil,TONGKIM_DROP);
		AddMSNpc(1,nNpcIdx);
	end
	--thong linh
	for i=1,getn(TONGTHONGLINH_NPC) do
		nNpcIdx = AddNpcNew(633,100,380,TONGTHONGLINH_NPC[i][1],TONGTHONGLINH_NPC[i][2],THONGLINH_FILE,
		nil,nil,1,"555",0,150000,nil,1500,180,350,500,nil,7560,40,nil,TONGKIM_DROP);
		AddMSNpc(1,nNpcIdx);
		SetNpcValue(nNpcIdx,1);
	end
	--kim binh
	AddNpcAuto(1,180,204,{637},100,380,180,204,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,184,204,{637},100,380,184,204,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,185,207,{637},100,380,185,207,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
		
	AddNpcAuto(1,200,203,{637},100,380,200,203,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,197,205,{637},100,380,197,205,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,192,207,{637},100,380,192,207,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,183,201,{637},100,380,183,201,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,185,199,{637},100,380,185,199,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(1,188,197,{637},100,380,188,197,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
		
	AddNpcAuto(2,193,201,{637},100,380,192,200,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(2,199,201,{637},100,380,198,200,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	AddNpcAuto(2,194,199,{637},100,380,193,198,BINHSI_FILE,
		nil,nil,1,"555",0,36000,nil,500,50,100,200,nil,nil,20,nil,TONGKIM_DROP,1);
	--hieu uy
	for i=1,getn(KIMHIEUUY_NPC) do
		nNpcIdx = AddNpcNew(638,100,380,KIMHIEUUY_NPC[i][1],KIMHIEUUY_NPC[i][2],HIEUUY_FILE,
		nil,nil,1,"555",0,70000,nil,800,100,200,300,nil,4320,30,nil,TONGKIM_DROP);
		AddMSNpc(1,nNpcIdx);
	end
	--thong linh
	for i=1,getn(KIMTHONGLINH_NPC) do
		nNpcIdx = AddNpcNew(639,100,380,KIMTHONGLINH_NPC[i][1],KIMTHONGLINH_NPC[i][2],THONGLINH_FILE,
		nil,nil,1,"555",0,200000,nil,1500,180,350,500,nil,7560,40,nil,TONGKIM_DROP);
		AddMSNpc(1,nNpcIdx);
		SetNpcValue(nNpcIdx,1);
	end
end;
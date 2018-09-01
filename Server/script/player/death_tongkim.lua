
--Include("\\script\\library\\worldlibrary.lua");
--Ken Nguyen 06/03/2014
Include("\\script\\header\\tongkim.lua");
--Tinh diem Player chet trong chien truong Tong Kim
--MSParam
--0		online
--1		chien dau
--2		0_tong so tich luy
--3		1_tu vong
--4		2_lien tram max
--5		3_giet nguoi choi
--6 	4_tichluy gietnguoichoi
--7 	5_gietnpc
--8 	6_tichluy gietnpc
--9 	7_LT hien tai
--10	8_tichluyL LT hien tai
--11	cap bac-quan ham`

function OnDeath(nDesNpcIndex)
	if(SubWorld == SubWorldID2Idx(380)) then
		if(GetMSRestTime(1,1) > 0) then
		return end;
		local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
		local nOnline = GetPMParam(1,nPlayerDataIdx,0);
		local nDesPlayerIdx = NpcIdx2PIdx(nDesNpcIndex);
		if(nDesPlayerIdx <= 0) then --quai'
			if(nPlayerDataIdx > 0 and nOnline == 1) then
			SetPMParam(1,nPlayerDataIdx,3,GetPMParam(1,nPlayerDataIdx,3)+1);--tu vong
			SetPMParam(1,nPlayerDataIdx,9,0);--lien tram hien tai
			SetPMParam(1,nPlayerDataIdx,10,0);--tich luy LT hien tai
			SendReport(1,nPlayerDataIdx);--update bang xep hang ca nhan
			end
		return end
		
		local nDesPlayerData	= PIdx2MSDIdx(1,nDesPlayerIdx);
		local nDesOnline = GetPMParam(1,nDesPlayerData,0);
		if(nPlayerDataIdx > 0 and nDesPlayerData > 0 and nOnline == 1 and nDesOnline == 1) then	--co ton tai. va ca 2 dang online trong chien truong
			local szName = GetName();
			local szRank = GetRankEx();
			local nDieRank = GetPMParam(1,nPlayerDataIdx,11);	--cap bac nguoi chet
			SetPMParam(1,nPlayerDataIdx,3,GetPMParam(1,nPlayerDataIdx,3)+1);--tu vong
			SetPMParam(1,nPlayerDataIdx,9,0);--lien tram hien tai
			SetPMParam(1,nPlayerDataIdx,10,0);--tich luy LT hien tai
			SendReport(1,nPlayerDataIdx);--update bang xep hang ca nhan
			PlayerIndex = nDesPlayerIdx;
			local szDesName = GetName();
			local szDesRank = GetRankEx();
			local szBeKill = format("<color=Pink>%s<color> <color=yellow>%s<color> h¹ s¸t <color=Pink>%s<color> <color=cyan>%s<color>",
								szDesRank,szDesName,szRank,szName);
			Msg2MSAll(1,szBeKill);--thong bao toan nguoi choi
			SetPMParam(1,nDesPlayerData,5,GetPMParam(1,nDesPlayerData,5) + 1);--so luong giet player
			SetPMParam(1,nDesPlayerData,6,GetPMParam(1,nDesPlayerData,6) + TICHLUY_GIETNGUOI + TICHLUY_GIETNGUOI*nDieRank);--tich luy player,
			local CurNewLT = GetPMParam(1,nDesPlayerData,9) + 1;
			SetPMParam(1,nDesPlayerData,9,CurNewLT);--lien tram hien tai
			local MaxLT = GetPMParam(1,nDesPlayerData,4);
			if(CurNewLT > MaxLT) then
			SetPMParam(1,nDesPlayerData,4,CurNewLT);--max LT
			end
			SetPMParam(1,nDesPlayerData,10,GetPMParam(1,nDesPlayerData,10) + TICHLUY_LIENTRAM + CurNewLT);--tich luy LT hien tai
			
			local nTotalAccum = GetPMParam(1,nDesPlayerData,2) +TICHLUY_GIETNGUOI+TICHLUY_GIETNGUOI*nDieRank+TICHLUY_LIENTRAM+CurNewLT;--tong so tich luy
			SetPMParam(1,nDesPlayerData,2,nTotalAccum);
			local nRank = GetPMParam(1,nDesPlayerData,11);	--cap bac
			local nGroup = GetMSIdxGroup(1, nDesPlayerData);
			local i;
			if (nRank < 5) then
				for i=1,getn(EXPAND_RANK) do
					if(nTotalAccum >= EXPAND_RANK[i][1] and nRank < EXPAND_RANK[i][2]) then
					SetPMParam(1,nDesPlayerData,11,EXPAND_RANK[i][2])
					nRank = EXPAND_RANK[i][2]
					SetRankEx(EXPAND_RANK[i][nGroup+3])
					end
				end
			end
			if(updatetopten(nTotalAccum,nDesPlayerData) == 0) then
				SendReport(1,nDesPlayerData);--update bang xep hang ca nhan
			else
				local nCount = GetMSPlayerCount(1);
				for i=1,nCount do
				if(GetPMParam(1, i, 0) == 1) then --dang online
				PlayerIndex = MSDIdx2PIdx(1, i);
				SendReport(1,nDesPlayerData);--update bang xep hang quoc te
				end
				end
			end
		end
	end
end;


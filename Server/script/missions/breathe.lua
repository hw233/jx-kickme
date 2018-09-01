
--Include("\\script\\library\\worldlibrary.lua");
--Include("\\script\\header\\taskid.lua");
function MissionBreathe(nIndex)
	if(SubWorld == SubWorldID2Idx(380)) then
		local nCount = GetMSPlayerCount(nIndex);
		for i=1,nCount do
		if((GetPMParam(nIndex, i, 0) == 1) and (GetPMParam(nIndex, i, 1) == 1)) then --neu co online va dang trong chien dau
			PlayerIndex = MSDIdx2PIdx(nIndex, i);
			local nRest = floor(GetRestTime()/18);
			if(nRest >= 1) then
				Msg2Player("B¹n cßn cã thÓ ë l¹i doanh tr¹i "..nRest.."gi©y n÷a.");
			end
		end
		end
	elseif(SubWorld == SubWorldID2Idx(337)) then
		local nRest = floor(GetMSRestTime(1,1)/18);
		if(nRest > 0) then
			local nCount = GetMSPlayerCount(nIndex);
			for i=1,nCount do
			if(GetPMParam(nIndex, i, 0) == 1) then --neu co online
			PlayerIndex = MSDIdx2PIdx(nIndex, i);
			Msg2Player("Cßn "..nRest.." gi©y n÷a thuyÒn sÏ khëi hµnh.");
			end
			end
		end
	end
end;
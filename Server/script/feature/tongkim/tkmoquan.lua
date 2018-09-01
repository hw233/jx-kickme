--Tong kim Mo binh quan
--Author: Ken Nguyen 2013
--DMEM TEAM
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\time.lua");
Include("\\script\\header\\tongkim.lua");
Include("\\script\\library\\worldlibrary.lua");
END_TALK="KÕt thóc ®èi tho¹i/no"
NEEDMONEY = 3000
NEEDLEVEL = 60
function main(NpcIndex)

	local nSubWorldId = SubWorldID2Idx(380)
	if nSubWorldId < 0 then	--chua mo map, ngung ham`
	return end
	SubWorld = nSubWorldId;--thang nay dang dung o map 325 (khac 380), nen phai dat bien toan` cau` SubWorld khac cho no' de su dung mission cua 380

	if(IsMission(1) == 0) then
		Say(10635,1,	--dai chien chua bat dau, ngung ham`
			END_TALK)
		return
	end
	local bTong = GetNpcValue(NpcIndex)
	if(bTong == nil) then
	return end
	
	--Yr,Mth,Dy,Hr,Mn,Se = GetTime();
	--local bOnTime = 0;
	--for i=1,getn(TONGKIM_TIMER) do
	--	if(Hr == TONGKIM_TIMER[i][1] and (Mn >= TONGKIM_TIMER[i][2] + 1)) then
	--		if (Mn < TONGKIM_TIMER[i][2] + 15) then
	--			bOnTime = 1;
	--		else
	--			bOnTime = 2;
	--		end
	--	end
	--end
	
	local nPlayerDataIdx, nGroup, nTongMem, nKimMem = 0,0,0,0;
	if(bTong > 0) then	--------------------------------------------------ben Tong
	nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	if(nPlayerDataIdx > 0) then	--neu da gia nhap roi
		nGroup = GetMSIdxGroup(1, nPlayerDataIdx)
		if(nGroup == 1) then	--nhom 1 da gia nhap phe Kim roi, ngung ham`
			Talk(1,"",10645)
		return end
		----da gia nhap phe tong, cho vao` trong
		Say(10646,2,
		"Gia nhËp Tèng qu©n/gianhaptong",
		"Rêi khái/out")
	return end
	if (GetMSRestTime(1,2) < 5400) then
		Say(10641,1,	--ngung gia nhap
			END_TALK)
		return
	end
	nTongMem = GetMSGroupCount(1,0);
	nKimMem  = GetMSGroupCount(1,1);
	if((nTongMem > nKimMem + 5) or nTongMem > 100) then --so luong da du~
		Talk(1,"",10648)
	return end
		Say(10646,2,
		"Gia nhËp Tèng qu©n/gianhaptong",
		"Rêi khái/out")
	return end-------------------------------------------------

	
	nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	if(nPlayerDataIdx > 0) then	--neu da gia nhap roi
		nGroup = GetMSIdxGroup(1, nPlayerDataIdx)
		if(nGroup == 0) then	--nhom 0 da gia nhap phe Tong roi
			Talk(1,"",10636)
		return end
		----da gia nhap phe kim, cho vao` trong
		Say(10637,2,
		"Gia nhËp Kim qu©n/gianhapkim",
		"Rêi khái/out")
	return end
	if (GetMSRestTime(1,2) < 5400) then
		Say(10641,1,	--ngung gia nhap
			END_TALK)
		return
	end
	nTongMem = GetMSGroupCount(1,0);
	nKimMem  = GetMSGroupCount(1,1);
	if((nKimMem > nTongMem + 5) or nKimMem > 100) then --so luong da du~
		Talk(1,"",10639)
	return end
		Say(10637,2,
		"Gia nhËp Kim qu©n/gianhapkim",
		"Rêi khái/out")
		-------------------------------------------------
end;

function gianhaptong()
	local nSubWorldId = SubWorldID2Idx(380)
	if nSubWorldId < 0 then
	return end
	SubWorld = nSubWorldId;
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	if(nPlayerDataIdx > 0) then	--neu da gia nhap roi
		SetPMParam(1,nPlayerDataIdx,0,1) --set online
		tongcommon(nPlayerDataIdx) --xu ly chi tiet
		return
	end
	
	--du cap, du tien moi duoc vao
	if(GetCash() < NEEDMONEY or GetLevel() < NEEDLEVEL) then
		local szCheck = format("B¹n kh«ng ®ñ <color=yellow>%d<color> cÊp hoÆc kh«ng ®ñ <color=yellow>%d<color> l­îng.", NEEDLEVEL, NEEDMONEY);
		Talk(1,"",szCheck)
	return end
	
	nPlayerDataIdx = AddMSPlayer(1,0); --chua gia nhap, add vao` nhom' 0
	if( nPlayerDataIdx > 0) then
		Pay(NEEDMONEY)
		Talk(1,"",10655) --hoan nghenh
		tongcommon(nPlayerDataIdx) --xu ly chi tiet
	end
end;

function gianhapkim()
	local nSubWorldId = SubWorldID2Idx(380)
		if nSubWorldId < 0 then
		return end
		SubWorld = nSubWorldId;
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	if(nPlayerDataIdx > 0) then	--neu da gia nhap roi
		SetPMParam(1,nPlayerDataIdx,0,1) --set online
		kimcommon(nPlayerDataIdx)
		return
	end
	--du cap, du tien moi duoc vao
	if(GetCash() < NEEDMONEY or GetLevel() < NEEDLEVEL) then
		local szCheck = format("B¹n kh«ng ®ñ <color=yellow>%d<color> cÊp hoÆc kh«ng ®ñ <color=yellow>%d<color> l­îng.", NEEDLEVEL, NEEDMONEY);
		Talk(1,"",szCheck)
	return end
	
	nPlayerDataIdx = AddMSPlayer(1,1); --chua gia nhap, add vao` nhom' 1
	if( nPlayerDataIdx > 0) then
		Pay(NEEDMONEY)
		Talk(1,"",10655)
		kimcommon(nPlayerDataIdx)
	end
end;

function tongcommon(nPlayerDataIdx)
	StopTimer()	--ngung hen gio dang chay bat ky
	LeaveTeam()	--roi nhom, giai tan nhom
	SetRevPos(1,325) -- set phuc sinh ngay diem bao danh
	SetTempRevPos(380,1242*32,3549*32) --set ve thanh duong suc ngay doanh trai.
	SetLogoutRV(1)--dung diem phuc sinh dang nhap
	NewWorld(380,1242,3549) --di chuyen vao doanh trai
	SetCurCamp(chinhphai) --set phe phai'
	SetDeathScript("\\script\\player\\death_tongkim.lua") --set script khi chet
	SetRankEx(306) --phong danh hieu binh si~
	SetPMParam(1,nPlayerDataIdx,11,1) --set param 11 - cap bac 1
	SetPunish(1)	--bat tinh nang chet khong mat' gi`
	local RestTK = GetMSRestTime(1,1);
	if (RestTK > 0) then
	SetPKMode(0,1)--ep kieu luyen cong
	else
	SetPKMode(1,1)--ep kieu chien dau
	SetPMParam(1,nPlayerDataIdx,1,1) --set param 1 (dang trong giai doan chien dau)
	end
	Msg2MSAll(1, GetName().." gia nhËp phe Tèng!"); --thong bao gia nhap
	SendReport(1)	--clear
	SendReport(1,nPlayerDataIdx);--update bang xep hang ca nhan
	local nRankAcc,nRankData;
	for i=0,9 do
		nRankAcc = GetMissionV(i)
		if(nRankAcc > 0) then
			nRankData = GetMissionV(i+10)
			if(GetPMParam(1, nRankData, 0) == 1) then
			SendReport(1,nRankData)
			end
		end
	end
	local nTongMem = GetMSGroupCount(1,0);
	local nKimMem  = GetMSGroupCount(1,1);
	for i=1,GetMSPlayerCount(1) do
		if(GetPMParam(1, i, 0) == 1) then
			PlayerIndex = MSDIdx2PIdx(1, i);
			SendReport(1,nTongMem,nKimMem,0);--update bang xep hang
		end
	end
	QueryChannel();
end;

function kimcommon(nPlayerDataIdx)
	StopTimer()
	LeaveTeam()
	SetRevPos(2,325)
	SetTempRevPos(380,1688*32,3072*32)
	SetLogoutRV(1)
	NewWorld(380,1688,3072)
	SetCurCamp(taphai)
	SetDeathScript("\\script\\player\\death_tongkim.lua")
	SetRankEx(311)
	SetPMParam(1,nPlayerDataIdx,11,1) --set param 11 - cap bac 1
	SetPunish(1)
	local RestTK = GetMSRestTime(1,1);
	if (RestTK > 0) then
	SetPKMode(0,1)
	else
	SetPKMode(1,1)
	SetPMParam(1,nPlayerDataIdx,1,1) --set param 1 dang chien dau
	end
	Msg2MSAll(1, GetName().." gia nhËp phe Kim!"); --thong bao gia nhap
	SendReport(1)	--clear
	SendReport(1,nPlayerDataIdx);--update bang xep hang
	local nRankAcc,nRankData;
	for i=0,9 do
		nRankAcc = GetMissionV(i)
		if(nRankAcc > 0) then
			nRankData = GetMissionV(i+10)
			if(GetPMParam(1, nRankData, 0) == 1) then
			SendReport(1,nRankData)
			end
		end
	end
	local nTongMem = GetMSGroupCount(1,0);
	local nKimMem  = GetMSGroupCount(1,1);
	for i=1,GetMSPlayerCount(1) do
		if(GetPMParam(1, i, 0) == 1) then
			PlayerIndex = MSDIdx2PIdx(1, i);
			SendReport(1,nTongMem,nKimMem,0);
		end
	end
	QueryChannel();
end;

function out()
	Talk(1,"",10643)
end;

function no()
end;
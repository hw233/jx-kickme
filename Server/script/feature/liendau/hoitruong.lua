Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\liendau.lua");
-- Ken Nguyen
-- npc quan vien hoi truong vo lam lien dau
--Missionv 0 la nguoi dang ky
function main(NpcIndex)
	if(IsMission(1) == 0) then
	Talk(1,"",10053)
	return end
	Say(10048,2,
	"§¨ng ký tham gia liªn ®Êu/dangky",
	"Ta ch­a muèn/no")
end;

function dangky()
	if(GetTask(TASK_LIENDAU) == 0) then
	return end
	if(IsMission(1) ~= 1) then
	return end
	local nPlayerDataIdx = PIdx2MSDIdx(1,PlayerIndex);
	if(nPlayerDataIdx > 0) then	--da dang ky truoc do roi
		SetPMParam(1,nPlayerDataIdx,0,1)--online
		common()
	return end
	
	local n1,n2,n3,n4,n5,Name1,Name2 = GetDataGr(GetTask(TASK_LIENDAU) - 1);
	local nTotal = GetNumber3(n2,1) + GetNumber3(n2,2) + GetNumber3(n2,3);
	if(nTotal >= LIENDAU_MAX) then
	Talk(1,"",10051)
	return end
	local nFighter = GetMissionV(0);
	if(nFighter >= getn(MAP_LIENDAU)*2) then
	Talk(1,"",10049)
	return end
	SetMissionV(0,nFighter+1)
	AddMSPlayer(1,0)
	common()
end;

function common()
	SetPos(1590,2985)
	StopTimer()	--ngung hen gio dang chay bat ky
	SetRevPos(1,396)
	SetLogoutRV(1)--dung diem phuc sinh dang nhap
	LockMoveItem(1)
	Msg2Player(format("Cßn %d gi©y n÷a trËn ®Êu sÏ b¾t ®Çu!", floor(GetMSRestTime(1,1)/18)))
end;

function no()
end;

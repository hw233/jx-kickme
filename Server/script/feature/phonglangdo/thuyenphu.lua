
-- Ken Nguyen
-- npc thuyenphu phonglang
Include("\\script\\header\\taskid.lua");
END_TALK="L�t n�a quay l�i/no"
function main(NpcIndex)
	local nVal = GetNpcValue(NpcIndex);
	if(nVal == 1) then
		Say(10141,2,
		"��a ta v� b� b�n kia/dive",
			END_TALK)
	return end
	local nSubWorldId = SubWorldID2Idx(337)
	if nSubWorldId < 0 then	--chua mo map, ngung ham`
	return end
	SubWorld = nSubWorldId;
	if(IsMission(1) == 0) then
		Talk(1,"",12637)--chua den gio
		return
	end
	if (GetMSRestTime(1,1) <= 0) then
		Talk(1,"",12672)--het gio bao danh
		return
	end
	Say(12812,2,
	"L�n thuy�n/lenthuyen",
			END_TALK)
end;

function dive()
	NewWorld(336,1166,3043);
	SetTask(TASK_LINHTINH,SetNumber(GetTask(TASK_LINHTINH),2,0));
end

function lenthuyen()
	if(GetLevel() < 90) then
		Talk(1,"",10139)
	end
	if(GetItemCount(34,3) < 1) then
		Talk(1,"",12811)
	return end
	DelItem(34,3)
	NewWorld(337,1616,3204)
	StopTimer()	--ngung hen gio dang chay bat ky
	LeaveTeam()	--roi nhom, giai tan nhom
	SetLogoutRV(1)--dung diem phuc sinh dang nhap
	SetDeathScript("\\script\\player\\death_phonglangdo.lua")
	SetPunish(1)	--bat tinh nang chet khong mat' gi`
	SetFightState(0);
	SetPKMode(0,1);--ep kieu luyen cong
	SubWorld = SubWorldID2Idx(337);
	AddMSPlayer(1,0);
	Msg2MSAll(1, GetName().." �� l�n thuy�n!"); --thong bao gia nhap
end;

function no()
end;
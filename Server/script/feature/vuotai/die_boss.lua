--nguoi choi danh quai' cuoi cung` khi chet
Include("\\script\\header\\taskid.lua");

THANHTHI_RETURN={
{1  ,1510,3188},
{11 ,3214,4986},
{162,1587,3228},
{37 ,1638,3051},
{78 ,1514,3216},
{80 ,1697,2950},
{176,1372,2996}
};

function LastDamage(NpcIndex)
	--tinh kinh nghiem cho toan doi
	local nOldPlayer = PlayerIndex;--nguoi giet quai
	local nCount = GetMSPlayerCount(1);
	local szName = " ";
	for i=1,nCount do
		if(GetPMParam(1, i, 0) == 1) then --dang online thi tinh diem
			PlayerIndex = MSDIdx2PIdx(1, i);
			local id = GetUUID();
			if( id ~= nil) then
				if(id == GetMissionV(0)) then
				szName = GetName();
				end
			end
			if(PlayerIndex == nOldPlayer) then
				AddOwnExp(1600000)
			else
				AddOwnExp(floor(800000*50/100))
			end
			SetCurCamp(GetCamp())
			SetFightState(0)
			SetDeathScript("")
			SetPunish(0)
			local nTask = GetNumber(GetTask(TASK_NVST),9);
			NewWorld(THANHTHI_RETURN[nTask][1],
			THANHTHI_RETURN[nTask][2],THANHTHI_RETURN[nTask][3])
			--AddItem
			AddItem(0,5,26,0,0,5,0,0);
			if(CheckRoom(1,1) == 1) then
			local TTL = ItemSetAdd(0,2,45,0,0,5,0)
			LockItem(TTL)
			AddItemID(TTL)
			end
		end
	end
	--x - floor(x/y)
	if(szName ~= " ") then
	local nRestTime = GetMSRestTime(1,2);
	local nRemainSec = 30*60 - floor(nRestTime/18);
	local nMin = floor(nRemainSec/60);
	nRemainSec = nRemainSec - nMin*60;
	AddCountNews(format("��i ng� %s �� ho�n th�nh nhi�m v� ��ng th�i gian: %d ph�t %d gi�y",szName, nMin,nRemainSec),3);
	end
	SetMissionV(0,0);
	SetMissionV(1,0);
	CloseMission(1)
end

--khi hoi sinh
function Revive(NpcIndex)
	SetNpcSkill(NpcIndex, 165, 20, 1)
	SetNpcSkill(NpcIndex, 165, 20, 2)
	SetNpcSkill(NpcIndex, 165, 20, 3)
	SetNpcSkill(NpcIndex, 165, 20, 4)
	
	SetNpcDmgEx(NpcIndex,0,0,0,0,50,0);
end
--Khi chet
function DeathSelf(NpcIndex)
end;

Include("\\Script\\header\\exp_head.lua")
NPCLIFE = 100
NPCEXP = 150
--nguoi choi danh quai' cuoi cung` khi chet
function LastDamage(NpcIndex)
end;

--khi phuc sinh
function Revive(NpcIndex)
	
	local bBlueBoss = 0;
	if (RANDOM(100) < 2) then		--xac suat 2% ra boss xanh
		bBlueBoss = 1;
	end
	if (bBlueBoss == 1) then	--thiet lap thuoc tinh cho boss xanh
		SetBoss(NpcIndex,1)
		local nLife = floor(NPCLIFE/4);
		if(nLife <= 0) then
			nLife = 1
		end
		SetNpcLife(NpcIndex, nLife);
		SetNpcExp(NpcIndex, NPCEXP*EXP_RATE*4);--kinh nghiem
		SetNpcHitRecover(NpcIndex,12);
		SetNpcSpeed(NpcIndex, 8);
		SetNpcResist(NpcIndex, 75, 75, 75, 75, 75);
		SetNpcDmgEx(NpcIndex,20,0,0,0,0,1);--sat thuong ngoai cong
	else	--thiet lap sat thuong cho npc thuong`
		SetNpcLife(NpcIndex, NPCLIFE);
		SetBoss(NpcIndex,0)
		SetNpcExp(NpcIndex, NPCEXP*EXP_RATE);--set kinh nghiem lai nhu cu
		SetNpcHitRecover(NpcIndex,6); --TGPH quai thuong
	end
end

--Khi chet
function DeathSelf(NpcIndex)
end

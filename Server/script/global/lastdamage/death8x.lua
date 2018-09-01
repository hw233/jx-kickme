Include("\\Script\\header\\exp_head.lua")
NPCLIFE = 24000
NPCEXP = 2000
--nguoi choi danh quai' cuoi cung` khi chet
function LastDamage(NpcIndex)

end

--khi hoi sinh
function Revive(NpcIndex)

	--set skill theo ngu hanh, ap dung cho quai cap cao (co skill)------------
	local Series = GetNpcSer(NpcIndex) --a them tuy y, cong thuc y nhu the nay thoi
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 419, 40, 1);
		SetNpcSkill(NpcIndex, 419, 40, 2);
		SetNpcSkill(NpcIndex, 419, 40, 3);
		SetNpcSkill(NpcIndex, 424, 40, 4);
		nSTVL = 30;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 420, 40, 1);
		SetNpcSkill(NpcIndex, 420, 40, 2);
		SetNpcSkill(NpcIndex, 420, 40, 3);
		SetNpcSkill(NpcIndex, 425, 40, 4);
		nDoc = 10;--doc sat
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 421, 40, 1);
		SetNpcSkill(NpcIndex, 421, 40, 2);
		SetNpcSkill(NpcIndex, 421, 40, 3);
		SetNpcSkill(NpcIndex, 426, 40, 4);
		nBang = 30; --neu quai he thuy thi cho bang sat
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 422, 40, 1);
		SetNpcSkill(NpcIndex, 422, 40, 2);
		SetNpcSkill(NpcIndex, 422, 40, 3);
		SetNpcSkill(NpcIndex, 427, 40, 4);
		nHoa = 30;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 423, 40, 1);
		SetNpcSkill(NpcIndex, 423, 40, 2);
		SetNpcSkill(NpcIndex, 423, 40, 3);
		SetNpcSkill(NpcIndex, 428, 40, 4);
		nLoi = 30;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 418, 40, 1);
		SetNpcSkill(NpcIndex, 418, 40, 2);
		SetNpcSkill(NpcIndex, 418, 40, 3);
		SetNpcSkill(NpcIndex, 418, 40, 4);
		nSTVL = 30;
	end
	--end setskill-----------------------ket thuc phan tinh skill va sat thuong---
	local bBlueBoss = 0;
	if (RANDOM(100) < 2) then		--xac suat 2% ra boss xanh
		bBlueBoss = 1;
	end
	if (bBlueBoss == 1) then	--thiet lap thuoc tinh cho boss xanh
		local nLife = floor(NPCLIFE/4);
		if(nLife <= 0) then
			nLife = 1
		end
		SetBoss(NpcIndex,1) --xac suat boss xanh dung', nen cho no mau xanh
		SetNpcLife(NpcIndex, nLife);--set mau' cho boss xanh
		SetNpcExp(NpcIndex, NPCEXP*EXP_RATE*4);--kinh nghiem
		SetNpcReplenish(NpcIndex,1);--phuc hoi sinh luc
		SetNpcHitRecover(NpcIndex,25);--cao nhat la 100(ko giat) --boss xanh 60 la vua
		SetNpcSpeed(NpcIndex, 10);--toc do di chuyen tang len
		SetNpcResist(NpcIndex, 75, 75, 75, 75, 75);--khang' cac loai
		SetNpcDmgEx(NpcIndex,nSTVL*3, nDoc*3, nBang*3, nHoa*3, nLoi*3,0);--sat thuong noi cong
		SetNpcDmgEx(NpcIndex,nSTVL*3, nDoc*3, nBang*3, nHoa*3, nLoi*3,1);--sat thuong ngoai cong
	else	--thiet lap sat thuong cho npc thuong`, sat thuong y nhu cu~, con boss xanh thi x3, ok??
		SetNpcLife(NpcIndex, NPCLIFE);
		SetBoss(NpcIndex,0)
		SetNpcExp(NpcIndex, NPCEXP*EXP_RATE);--set kinh nghiem lai nhu cu
		SetNpcHitRecover(NpcIndex,16);
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,1);--sat thuong ngoai cong
	end
end

--Khi chet
function DeathSelf(NpcIndex)
end

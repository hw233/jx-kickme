--monster gioi luu phong
Include("\\script\\header\\taskid.lua");

function LastDamage(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nNpcVal = GetNpcValue(NpcIndex);
	if(nNpcVal == 0) then
		if(GetNumber2(nTaskValue,2) == 10) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,2,11));
		AddOwnExp(100000);
		Msg2Player("B�n �� l�y ���c C�u Hi�n Chi Ch�, quay v� ��i L� g�p M�c S�u ph�c m�nh.")
		Talk(1,"",10431);
		end
	elseif(nNpcVal == 1) then
		if(GetNumber2(nTaskValue,3) == 9) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,3,10));
		AddOwnExp(100000);
		Talk(1,"","M�t m�n b�o b�i h�i ng��i, th�t kh�ng ��ng ch�t n�o...");
		Msg2Player("B�n nh�n ���c B�ch Long T�c, quay v� t�m L� Thu Th�y.");
		end
	else	--2
		if(GetNumber2(nTaskValue,4) == 15) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,4,16));
		AddOwnExp(100000);
		Msg2Player("B�n nh�n ���c B�n �� chi�n l��c c�a Trung nguy�n t� Ti�u V� Th��ng!");
		end
	end
end;

function Revive(NpcIndex)
	--set skill theo ngu hanh, ap dung cho quai cap cao (co skill)------------
	local Series = GetNpcSer(NpcIndex)
	local nSTVL, nDoc, nBang, nHoa, nLoi = 0,0,0,0,0;
	if(Series==0) then		--KIM
		SetNpcSkill(NpcIndex, 419, 50, 1);
		SetNpcSkill(NpcIndex, 424, 50, 2);
		SetNpcSkill(NpcIndex, 419, 50, 3);
		SetNpcSkill(NpcIndex, 424, 50, 4);
		nSTVL = 100;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 420, 50, 1);
		SetNpcSkill(NpcIndex, 425, 50, 2);
		SetNpcSkill(NpcIndex, 420, 50, 3);
		SetNpcSkill(NpcIndex, 425, 50, 4);
		nDoc = 30;--doc sat khong giong sat thuong khac, = sat thuong khac chia 5, vi no co rut' doc
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 421, 50, 1);
		SetNpcSkill(NpcIndex, 426, 50, 2);
		SetNpcSkill(NpcIndex, 421, 50, 3);
		SetNpcSkill(NpcIndex, 426, 50, 4);
		nBang = 100; --neu quai he thuy thi cho bang sat
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 422, 50, 1);
		SetNpcSkill(NpcIndex, 427, 50, 2);
		SetNpcSkill(NpcIndex, 422, 50, 3);
		SetNpcSkill(NpcIndex, 427, 50, 4);
		nHoa = 100;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 423, 50, 1);
		SetNpcSkill(NpcIndex, 428, 50, 2);
		SetNpcSkill(NpcIndex, 423, 50, 3);
		SetNpcSkill(NpcIndex, 428, 50, 4);
		nLoi = 100;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 418, 50, 1);
		SetNpcSkill(NpcIndex, 418, 50, 2);
		SetNpcSkill(NpcIndex, 418, 50, 3);
		SetNpcSkill(NpcIndex, 418, 50, 4);
		nSTVL = 100;
	end
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,1);--sat thuong ngoai cong
end

--Khi chet
function DeathSelf(NpcIndex)
end

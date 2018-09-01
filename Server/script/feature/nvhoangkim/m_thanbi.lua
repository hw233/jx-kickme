--monster nguoi than bi
Include("\\script\\header\\taskid.lua");

function LastDamage(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nNpcVal = GetNpcValue(NpcIndex);
	if(nNpcVal == 0) then
		if(GetNumber2(nTaskValue,2) == 17) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,2,18));
		AddOwnExp(500000);
		Msg2Player("Ng��i th�n b� sau khi b� b�n ��nh b�i, b�o b�n ��n ch� M�c S�u � ��i L�, h�n c� chuy�n mu�n n�i v�i b�n.")
		Talk(1,"","��n g�p M�c S�u, ta c� chuy�n mu�n n�i!");
		end
	elseif(nNpcVal == 1) then
		if(GetNumber2(nTaskValue,3) == 18) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,3,19));
		AddOwnExp(500000);
		Talk(1,"","A Di �� ph�t! Th�n kh� � ��y, th� ch� c� l�y �i...");
		Msg2Player("B�n nh�n ���c 2 b� Long Kh�, h�y quay v� t�m Ph� Nam B�ng.");
		end
	else	--2
		if(GetNumber2(nTaskValue,4) == 27) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,4,28));
		AddOwnExp(800000);
		Msg2Player("B�n nh�n ���c 800.000 �i�m kinh nghi�m!");
		Msg2Player("B�n �� ��nh th�ng Li�u ��nh!");
		Say2(11046,1,0,GetName(),
		"K�t th�c ��i tho�i/no");
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
		nSTVL = 150;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 420, 50, 1);
		SetNpcSkill(NpcIndex, 425, 50, 2);
		SetNpcSkill(NpcIndex, 420, 50, 3);
		SetNpcSkill(NpcIndex, 425, 50, 4);
		nDoc = 50;--doc sat khong giong sat thuong khac, = sat thuong khac chia 5, vi no co rut' doc
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 421, 50, 1);
		SetNpcSkill(NpcIndex, 426, 50, 2);
		SetNpcSkill(NpcIndex, 421, 50, 3);
		SetNpcSkill(NpcIndex, 426, 50, 4);
		nBang = 150; --neu quai he thuy thi cho bang sat
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 422, 50, 1);
		SetNpcSkill(NpcIndex, 427, 50, 2);
		SetNpcSkill(NpcIndex, 422, 50, 3);
		SetNpcSkill(NpcIndex, 427, 50, 4);
		nHoa = 150;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 423, 50, 1);
		SetNpcSkill(NpcIndex, 428, 50, 2);
		SetNpcSkill(NpcIndex, 423, 50, 3);
		SetNpcSkill(NpcIndex, 428, 50, 4);
		nLoi = 150;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 418, 50, 1);
		SetNpcSkill(NpcIndex, 418, 50, 2);
		SetNpcSkill(NpcIndex, 418, 50, 3);
		SetNpcSkill(NpcIndex, 418, 50, 4);
		nSTVL = 150;
	end
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,1);--sat thuong ngoai cong
end

--Khi chet
function DeathSelf(NpcIndex)
end

function no()
end;
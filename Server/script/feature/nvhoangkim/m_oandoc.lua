--monster oandoc
Include("\\script\\header\\taskid.lua");

function LastDamage(NpcIndex)
	local nTaskValue = GetTask(TASK_NVST);
	local nNpcVal = GetNpcValue(NpcIndex);
	if(nNpcVal == 0) then
		if(GetNumber2(nTaskValue,2) == 14) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,2,15));
		AddOwnExp(230000);
		Msg2Player("B�n l�y ���c th� c�p O�n ��c.")
		Msg2Player("B�n c� th� v� L�m An g�p M�nh Ph�m.")
		Talk(1,"","��i ng��i ai c�ng m�t l�n ch�t! Nh�ng ch�t nh� th� n�y th�t kh�ng cam t�m!");
		end
	elseif(nNpcVal == 1) then
		if(GetNumber2(nTaskValue,3) == 14) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,3,15));
		AddOwnExp(230000);
		Talk(1,"","Long �o�n � ��y, ng��i l�y �i...");
		Msg2Player("B�n nh�n ���c chi�n th��ng Long �o�n, quay v� g�p Ph� Nam B�ng.");
		end
	elseif(nNpcVal == 2) then
		if(GetNumber2(nTaskValue,4) == 21) then
		SetTask(TASK_NVST, SetNumber2(nTaskValue,4,22));
		AddOwnExp(230000);
		Msg2Player("B�n ��nh th�ng L�c Phi l�y ���c b�nh Lam Hoa!");
		end
	else	--3
		if(GetNumber2(nTaskValue,4) == 23) then	--done50
		SetTask(TASK_NVST, SetNumber2(nTaskValue,4,24));
		AddOwnExp(350000);
		AddSkillState( 509, 1, 180);
		AddItem(0,2,45,0,0,5,0,0);--tien thao lo
		Msg2Player("B�n chi�n th�ng �� ��n ��i nh�n!");
		Msg2Player("B�n nh�n ���c 350.000 �i�m kinh nghi�m");
		Msg2Player("B�n nh�n ���c m�t b�nh Ti�n Th�o L� ");
		Say2(11021,1,0,GetName(),
		"K�t th�c ��i tho�i/no");
		AddNote("Nhi�m v� Ho�ng Kim: ��n Thi�n Nh�n Gi�o t�m �oan M�c Du�.");
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
		nSTVL = 125;
	elseif(Series==1) then	--MOC
		SetNpcSkill(NpcIndex, 420, 50, 1);
		SetNpcSkill(NpcIndex, 425, 50, 2);
		SetNpcSkill(NpcIndex, 420, 50, 3);
		SetNpcSkill(NpcIndex, 425, 50, 4);
		nDoc = 40;--doc sat khong giong sat thuong khac, = sat thuong khac chia 5, vi no co rut' doc
	elseif(Series==2) then	--THUY
		SetNpcSkill(NpcIndex, 421, 50, 1);
		SetNpcSkill(NpcIndex, 426, 50, 2);
		SetNpcSkill(NpcIndex, 421, 50, 3);
		SetNpcSkill(NpcIndex, 426, 50, 4);
		nBang = 125; --neu quai he thuy thi cho bang sat
	elseif(Series==3) then	--HOA
		SetNpcSkill(NpcIndex, 422, 50, 1);
		SetNpcSkill(NpcIndex, 427, 50, 2);
		SetNpcSkill(NpcIndex, 422, 50, 3);
		SetNpcSkill(NpcIndex, 427, 50, 4);
		nHoa = 125;--quai he hoa thi cho hoa sat,tuy theo quai manh hay yeu ma` cho so nay, vi du 8x thi cho 75 chan han ok
	elseif(Series==4) then	--THO
		SetNpcSkill(NpcIndex, 423, 50, 1);
		SetNpcSkill(NpcIndex, 428, 50, 2);
		SetNpcSkill(NpcIndex, 423, 50, 3);
		SetNpcSkill(NpcIndex, 428, 50, 4);
		nLoi = 125;
	else					--KHONG CO HE, truong hop nay la add sai hay sao do
		SetNpcSkill(NpcIndex, 418, 50, 1);
		SetNpcSkill(NpcIndex, 418, 50, 2);
		SetNpcSkill(NpcIndex, 418, 50, 3);
		SetNpcSkill(NpcIndex, 418, 50, 4);
		nSTVL = 125;
	end
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,0);--sat thuong noi cong
		SetNpcDmgEx(NpcIndex,nSTVL, nDoc, nBang, nHoa, nLoi,1);--sat thuong ngoai cong
end

--Khi chet
function DeathSelf(NpcIndex)
end

function no()
end;
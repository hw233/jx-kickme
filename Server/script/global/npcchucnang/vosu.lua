Include("\\script\\header\\taskid.lua");
-- Ken Nguyen
-- npc vo su
NOT_ENOUGH = "Ng��i luy�n t�p v�n ch�a ��. Ti�p theo h�y �i ��nh ";

function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if(w == 20) then
		local nTaskValue = GetTask(TASK_NVDANHVONG);
		local nTask = GetNumber(nTaskValue,9);
		if(nTask == 1) then
		SetTask(TASK_NVDANHVONG, SetNumber(nTaskValue,9,2));
		Talk(1,"",12939)
		Msg2Player("V� s� ��ng � d�y v� mi�n ph� cho H� T�. Mau quay v� b�o cho cha H� T� bi�t.")
		else
		Say(10250,2,"Ta mu�n h�c khinh c�ng/kcong","��ng/no")
		end
	else
		Say(10250,2,"Ta mu�n h�c khinh c�ng/kcong","��ng/no")
	end
end;

function kcong()
	local nTaskValue = GetTask(TASK_LINHTINH);
	local nTask = GetNumber(nTaskValue,7);
	local nTime = GetNumber2(nTaskValue,3);
	if(nTask == 0) then
		if(GetCash() < 100) then
		Talk(1,"",10259)
		else
		Pay(100)
		nTaskValue = SetNumber(nTaskValue,7,1)
		nTaskValue = SetNumber2(nTaskValue,3,0)
		SetTask(TASK_LINHTINH, nTaskValue)
		Talk(1,"",10258)
		end
	elseif(nTask == 1) then	--coc go
		if(nTime < 50) then
		Talk(1,"",NOT_ENOUGH..(50-nTime).." c�c g� �i!")
		else
		nTaskValue = SetNumber(nTaskValue,7,2)
		nTaskValue = SetNumber2(nTaskValue,3,0)
		SetTask(TASK_LINHTINH, nTaskValue)
		Talk(1,"",10253)
		end
	elseif(nTask == 2) then	--bao cat
		if(nTime < 50) then
		Talk(1,"",NOT_ENOUGH..(50-nTime).." bao c�t �i!")
		else
		nTaskValue = SetNumber(nTaskValue,7,3)
		nTaskValue = SetNumber2(nTaskValue,3,0)
		SetTask(TASK_LINHTINH, nTaskValue)
		Talk(1,"",10254)
		end
	elseif(nTask == 3) then	--moc nhan
		if(nTime < 50) then
		Talk(1,"",NOT_ENOUGH..(50-nTime).." m�c nh�n �i!")
		else
		nTaskValue = SetNumber(nTaskValue,7,4)
		nTaskValue = SetNumber2(nTaskValue,3,0)
		SetTask(TASK_LINHTINH, nTaskValue)
		AddMagic(210,1)
		Msg2Player("Ch�c m�ng b�n �� luy�n th�nh Khinh C�ng.")
		Talk(1,"",10255)
		end
	else	--da hoc xong
		Talk(1,"",10256)
	end
end;

function no()
end;
--nguoi choi danh quai' cuoi cung` khi chet
Include("\\script\\header\\taskid.lua");
function LastDamage(NpcIndex)
	local nKind = GetNpcValue(NpcIndex);
	local nTaskValue = GetTask(TASK_LINHTINH);
	local nTask = GetNumber(nTaskValue,7);
	local nTime = GetNumber2(nTaskValue,3);
		if(nKind == nTask) then	--trung khop
			if(nTime < 50) then
			SetTask(TASK_LINHTINH, SetNumber2(nTaskValue,3,nTime+1))
			end
		end
end

--khi hoi sinh
function Revive(NpcIndex)
end

--Khi chet
function DeathSelf(NpcIndex)
end

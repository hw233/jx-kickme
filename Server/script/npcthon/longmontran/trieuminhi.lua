Include("\\script\\header\\taskid.lua");
function main(NpcIndex)
	local nTaskValue = GetTask(TASK_NVDANHVONG);
	local nTask = GetNumber(nTaskValue,8);
	if(nTask == 1) then
	Talk(8,"nvthon",12075,12076,12077,12078,12079,12080,12081,12082)
	else
	Talk(1,"",12083)
	end
end;

function nvthon()
	SetTask(TASK_NVDANHVONG, SetNumber(GetTask(TASK_NVDANHVONG),8,2));
	Talk(1,"",12084)
	Msg2Player("Kh�ng ng� ph�n �ng c�a Tri�u Mi Nhi m�nh m� nh� v�y. Hay l� ta quay l�i h�i l�o �n m�y.")
end;
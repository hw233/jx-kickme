--Script Created by Ken Nguyen
--Long huyet hoan
Include("\\script\\header\\taskid.lua");
function useitem(nItemIndex)
	local nTotalTask = GetTask(TASK_RESET);
	local nTaskValue = GetNumber(nTotalTask,4);
	if(nTaskValue < 9) then
		SetTask(TASK_RESET, SetNumber(nTotalTask, 4, nTaskValue+1))
	end
end;

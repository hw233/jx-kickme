--Scripted Ken Nguyen
--son ha xa tac
Include("\\script\\header\\taskid.lua");
function useitem(nItemIdx)
		local nSHXT = GetTask(TASK_SHXT);
		nSHXT = nSHXT +1000;
		SetTask(TASK_SHXT,nSHXT);
		Msg2Player("B�n nh�n ���c 1000 m�nh s�n h� x� t�c. T�ng c�ng "..nSHXT);
end
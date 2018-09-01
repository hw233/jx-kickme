--Scripted Ken Nguyen
--son ha xa tac
Include("\\script\\header\\taskid.lua");
function useitem(nItemIdx)
		local nSHXT = GetTask(TASK_SHXT);
		nSHXT = nSHXT +100;
		SetTask(TASK_SHXT,nSHXT);
		Msg2Player("B¹n nhËn ®­îc 100 m¶nh s¬n hµ x· t¾c. Tæng céng "..nSHXT);
end
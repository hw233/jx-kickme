Include("\\script\\header\\taskid.lua");

function main(nNpcIdx)
	local nValue = GetTask(TASK_RESET);
	local SoLanHai = GetNumber(nValue,2);
		if (SoLanHai >= 5) then
			Talk(1,"","MÈt ngµy chÿ c„ th” h∏i Æ≠Óc 5 tr∏i.")
		return end
		if (GetLevel() < 80) then
			Talk(1,"","ßºng c p 80 trÎ l™n mÌi h∏i Æ≠Óc Qu∂ Huy Hoµng s¨.")
		return end
		if (GetLevel() >= 100) then
			Talk(1,"","ßºng c p v≠Ót qu∏ giÌi hπn kh´ng th” h∏i Æ≠Óc qu∂ s¨.")
		return end
	
		local nTime = GetRestTime();
		local nShowTime = floor(nTime/18);
	if (nTime > 0) then
		if(nShowTime <= 0) then
		nShowTime = 1
		end
		Msg2Player("Sau "..nShowTime.." gi©y mÌi nh∆t Æ≠Óc qu∂ ti’p theo.")
	return end
	
	SetTask(TASK_RESET,SetNumber(nValue,2,SoLanHai+1))
	SetTimer(180,1)
	local id = 0;
	if(nNpcVar == 1) then
	id = ItemSetAdd(0,5,3,0,0,5,0,0)
	elseif(nNpcVar == 2) then
	id = ItemSetAdd(0,5,4,0,0,5,0,0)
	else
	id = ItemSetAdd(0,5,5,0,0,5,0,0)
	end
    SetItemDate(id,10080) -- 7 ngµy
	AddItemID(id);
	--5 lan hai xoa npc--
	local nNpcVar = GetNpcValue(nNpcIdx);
	nNpcVar = nNpcVar+1;
	if(nNpcVar >= 5) then
	DelNpc(nNpcIdx)
	return end;
	SetNpcValue(nNpcIdx,nNpcVar);
end

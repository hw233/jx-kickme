Include("\\script\\header\\taskid.lua");

function main(nNpcIdx)
	local nValue = GetTask(TASK_RESET);
	local SoLanHai = GetNumber(nValue,2);
		if (SoLanHai >= 5) then
			Talk(1,"","M�t ng�y ch� c� th� h�i ���c 5 tr�i.")
		return end
		if (GetLevel() < 80) then
			Talk(1,"","��ng c�p 80 tr� l�n m�i h�i ���c Qu� Huy Ho�ng s�.")
		return end
		if (GetLevel() >= 100) then
			Talk(1,"","��ng c�p v��t qu� gi�i h�n kh�ng th� h�i ���c qu� s�.")
		return end
	
		local nTime = GetRestTime();
		local nShowTime = floor(nTime/18);
	if (nTime > 0) then
		if(nShowTime <= 0) then
		nShowTime = 1
		end
		Msg2Player("Sau "..nShowTime.." gi�y m�i nh�t ���c qu� ti�p theo.")
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
    SetItemDate(id,10080) -- 7 ng�y
	AddItemID(id);
	--5 lan hai xoa npc--
	local nNpcVar = GetNpcValue(nNpcIdx);
	nNpcVar = nNpcVar+1;
	if(nNpcVar >= 5) then
	DelNpc(nNpcIdx)
	return end;
	SetNpcValue(nNpcIdx,nNpcVar);
end

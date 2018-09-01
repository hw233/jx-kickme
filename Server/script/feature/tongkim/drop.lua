
function DropRate(NpcIndex)
	local nValue = GetNpcValue(NpcIndex);
	if(nValue == 0) then
		if(random(1,10) < 8) then
		return end
		local nItemIdx = ItemSetAdd(0, 2,random(62,81),0,0,5,0);--thuoc lag su dung ngay
		SetItemPickDel(nItemIdx,1)
		DropNpcItemID(NpcIndex, nItemIdx);
	else
		if(random(1,10) < 5) then
		return end
		DropNpcItem(NpcIndex, 0, 5,27,0,0,5,0,0) --tk bao vat
	end
	
end

--Include("\\script\\header\\taskid.lua");

function main(nNpcIdx)
		if (GetLevel() < 120) then
			Talk(1,"","��ng c�p 120 tr� l�n m�i h�i ���c Qu� Ho�ng Kim.")
		return end
	
		local nTime = GetRestTime();
		local nShowTime = floor(nTime/18);
	if (nTime > 0) then
		if(nShowTime <= 0) then
		nShowTime = 1
		end
		Msg2Player("Sau "..nShowTime.." gi�y m�i nh�t ���c qu� ti�p theo.")
	return end
	SetTimer(180,1)
	local id = 0;
	id = ItemSetAdd(0,5,6,0,0,5,0,0)
    SetItemDate(id,10080) -- 7 ng�y
	AddItemID(id);
	AddNews("<color=green>"..GetName().."<color> �� h�i ���c Qu� Ho�ng Kim.");
	DelNpc(nNpcIdx);
end

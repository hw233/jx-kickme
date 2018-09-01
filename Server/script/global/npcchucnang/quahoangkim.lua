--Include("\\script\\header\\taskid.lua");

function main(nNpcIdx)
		if (GetLevel() < 120) then
			Talk(1,"","§¼ng cÊp 120 trë lªn míi h¸i ®­îc Qu¶ Hoµng Kim.")
		return end
	
		local nTime = GetRestTime();
		local nShowTime = floor(nTime/18);
	if (nTime > 0) then
		if(nShowTime <= 0) then
		nShowTime = 1
		end
		Msg2Player("Sau "..nShowTime.." gi©y míi nhÆt ®­îc qu¶ tiÕp theo.")
	return end
	SetTimer(180,1)
	local id = 0;
	id = ItemSetAdd(0,5,6,0,0,5,0,0)
    SetItemDate(id,10080) -- 7 ngµy
	AddItemID(id);
	AddNews("<color=green>"..GetName().."<color> ®· h¸i ®­îc Qu¶ Hoµng Kim.");
	DelNpc(nNpcIdx);
end

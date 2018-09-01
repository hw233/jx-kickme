--script add boss
BOSSTIEU_ARRAY={
{"Di÷u Nh≠ ",513,"222",{1,6}},
{"Li‘u Thanh Thanh",523,"111",{2,5}},
{"Tr≠¨ng T´ng Ch›nh",511,"444",{3,4}}
};

POSITION_ARRAY={
{78,42878,106214},
{37,45312,113152},
{1,53760,88576},
{125,53680,98949},--luutien
{123,51478,102982},--laoho
{9,73241,184375}--truonggiang
};

COMMON_INFO = "<color=green>%s <color>xu t hi÷n tπi <color=green>%s <color>t‰a ÆÈ <color=yellow>(%d,%d)"

function releasebosstieu()
	local nNpcIndex = 0;
	local nPos = 1;
	for i=1,getn(BOSSTIEU_ARRAY) do
		nPos = RANDOM(1,2);
		nPos = BOSSTIEU_ARRAY[i][4][nPos];
		nNpcIndex = AddNpcNew(BOSSTIEU_ARRAY[i][2],100,POSITION_ARRAY[nPos][1],
		POSITION_ARRAY[nPos][2],POSITION_ARRAY[nPos][3],DEATH_BOSSTIEU,
	    5,nil,1,BOSSTIEU_ARRAY[i][3],300000,8000000,5000,8000,nil,nil,nil,nil,nil,80,2,DROP_BOSSTIEU);
		if(nNpcIndex > 0) then
			SetNpcLifeTime(nNpcIndex, 32400);
			Msg2SubWorld(format(COMMON_INFO,BOSSTIEU_ARRAY[i][1],
			GetSubWorldName(POSITION_ARRAY[nPos][1]),
			floor(POSITION_ARRAY[nPos][2]/256),
			floor(POSITION_ARRAY[nPos][3]/512)));
		end
	end
end;
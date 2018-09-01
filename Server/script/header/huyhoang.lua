--hat huy hoang - hoang kim
HUYHOANG_THAP={
{320,43532,94632},
{320,43241,95234},
{320,42979,94646},
{320,42624,94884},
{320,42228,94700},
{320,42054,95334},
{320,41710,94732},
{320,41445,95572},
{320,41141,94742},
{320,40816,95500}
};

HUYHOANG_TRUNG={
{322,54493,113656},
{322,54558,114484},
{322,54812,113986},
{322,55036,114376},
{322,55124,113610},
{322,55381,113936},
{322,55772,113664},
{322,55984,114264},
{322,56159,113692},
{322,56398,113358}
};

HUYHOANG_CAO={
{340,56247,93582},
{340,55963,93236},
{340,55636,92946},
{340,55354,93104},
{340,55046,93204},
{340,54851,92690},
{340,54450,92720},
{340,54664,93406},
{340,54171,93316},
{340,54094,92618}
};

TIME_TOCHANGE = 5400
function releasehhh()
	local nNpcIdx;
	for i=1,getn(HUYHOANG_THAP) do
	nNpcIdx = AddNpcNew(1110,1,HUYHOANG_THAP[i][1],HUYHOANG_THAP[i][2],HUYHOANG_THAP[i][3],HATHH_FILE,6)
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE)
	end
	
	for i=1,getn(HUYHOANG_TRUNG) do
	nNpcIdx = AddNpcNew(1110,1,HUYHOANG_TRUNG[i][1],HUYHOANG_TRUNG[i][2],HUYHOANG_TRUNG[i][3],HATHH_FILE,6)
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE)
	end
	
	for i=1,getn(HUYHOANG_CAO) do
	nNpcIdx = AddNpcNew(1110,1,HUYHOANG_CAO[i][1],HUYHOANG_CAO[i][2],HUYHOANG_CAO[i][3],HATHH_FILE,6)
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE)
	end
	--thong bao--
	local commonstr = "<color=green>Qu∂ huy hoµng sæp ch›n tπi %s (%d/%d). C∏c Æπi hi÷p h∑y chu»n bﬁ thu hoπch!"
	Msg2SubWorld(format(commonstr,GetSubWorldName(HUYHOANG_THAP[1][1]),floor(HUYHOANG_THAP[1][2]/256), floor(HUYHOANG_THAP[1][3]/512)));
	Msg2SubWorld(format(commonstr,GetSubWorldName(HUYHOANG_TRUNG[1][1]),floor(HUYHOANG_TRUNG[1][2]/256), floor(HUYHOANG_TRUNG[1][3]/512)));
	Msg2SubWorld(format(commonstr,GetSubWorldName(HUYHOANG_CAO[1][1]),floor(HUYHOANG_CAO[1][2]/256), floor(HUYHOANG_CAO[1][3]/512)));
end

function releaseqhh()
	local nNpcIdx;
	for i=1,getn(HUYHOANG_THAP) do
	nNpcIdx = AddNpcNew(1111,1,HUYHOANG_THAP[i][1],HUYHOANG_THAP[i][2],HUYHOANG_THAP[i][3],QUAHH_FILE_1,6)
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE);
	end
	
	for i=1,getn(HUYHOANG_TRUNG) do
	nNpcIdx = AddNpcNew(1111,1,HUYHOANG_TRUNG[i][1],HUYHOANG_TRUNG[i][2],HUYHOANG_TRUNG[i][3],QUAHH_FILE_2,6)
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE);
	end
	
	for i=1,getn(HUYHOANG_CAO) do
	nNpcIdx = AddNpcNew(1111,1,HUYHOANG_CAO[i][1],HUYHOANG_CAO[i][2],HUYHOANG_CAO[i][3],QUAHH_FILE_3,6)
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE);
	end
end;

function releasehhk()
	local nNpcIdx = AddNpcNew(1117,1,336,46332,95226,HATHH_FILE,6);
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE);
	Msg2SubWorld("<color=yellow>Qu∂ Hoµng Kim sæp k’t tr∏i tπi Phong L®ng ßÈ (180/185).");
	Msg2SubWorld("<color=yellow>Vﬁ Æπi cao thÒ nµo sœ Æoπt Æ≠Óc Qu∂ Hoµng Kim duy nh t nµy!");
end;

function releaseqhk()
	local nNpcIdx = AddNpcNew(1118,1,336,46332,95226,"\\script\\global\\npcchucnang\\quahoangkim.lua",6);
	SetNpcLifeTime(nNpcIdx, TIME_TOCHANGE);
end;
-- Script by Ken Nguyen
--rect=82x,89y,114x,108y

function addnpcnamnhac()
	local nNpcIdx;
	----NPC Chuc nang-----
	AddNpcNew(239,1,54,1594*32,3093*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	
	nNpcIdx = AddNpcNew(216,1,54,52716,99462,"\\script\\global\\npcchucnang\\taphoa.lua",6,84);SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(202,1,54,53620,101770,"\\script\\global\\npcchucnang\\thoren.lua",6,55);SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,54,52423,100538,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,51);SetNpcValue(nNpcIdx, 24);
	nNpcIdx = AddNpcNew(625,1,54,1632*32,3019*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,17);
	nNpcIdx = AddNpcNew(625,1,54,53269,100482,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,18);
	--Npc nam nhac tran
	AddNpcNew(76,1,54,54053,97758,"\\script\\npcthon\\namnhac\\thamcau.lua",6,205) 
	AddNpcNew(117,1,54,49891,99828,"\\script\\npcthon\\namnhac\\vansuthong.lua",6,208) 
end;

function addtrapnamnhac()
end;

function addobjnamnhac()
end;
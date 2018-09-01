-- Script by Ken Nguyen
--rect=82x,89y,114x,108y

function addnpcbalang()
	local nNpcIdx;
	--Huu dom, heo trang kim mieu 42,43
	AddNpcAuto(3,227,190,{31,42,43},10,53,174,182,DEATHFILE0X,
		5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	AddNpcAuto(3,183,215,{31,42,43},10,53,174,191,DEATHFILE0X,
		5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	AddNpcAuto(3,208,215,{31,42,43},10,53,184,207,DEATHFILE0X,
		5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	AddNpcAuto(3,227,195,{31,42,43},10,53,210,191,DEATHFILE0X,
		5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	AddNpcAuto(3,227,215,{31,42,43},10,53,210,201,DEATHFILE0X,
		5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
--luyen kc
local MOCNHAN = {
{53414,96334},
{53365,95976},
{53530,95766},
{53729,95776},
{53942,95944},
{54108,96264},
{54134,96760},
{54078,97000},
{53456,96826},
{53407,96668}
};
local COCGO = {
{52877,94864},
{53028,94930},
{53169,95064},
{53323,95330},
{53735,95310},
{53866,95248},
{53997,95276},
{54103,95568},
{54089,95832}
};
local BAOCAT = {
{53254,95944},
{53241,95686},
{53129,95420},
{53003,95236},
{52765,95124},
{52497,95196},
{52539,95642},
{52533,95944},
{52647,96268},
{53139,96290}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,53,MOCNHAN[i][1],MOCNHAN[i][2],DEATH_COCGO,
		5,nil,1,"555",1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,53,COCGO[i][1],COCGO[i][2],DEATH_COCGO,
		5,nil,1,"555",1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,53,BAOCAT[i][1],BAOCAT[i][2],DEATH_COCGO,
		5,nil,1,"555",1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai trong thon-----
	AddNpcNew(189,1,53,1592*32,3129*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183)
	AddNpcNew(184,1,53,1610*32,3196*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247)
	AddNpcNew(186,1,53,1621*32,3205*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178)
	AddNpcNew(177,1,53,1613*32,3174*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,246)
	AddNpcNew(83 ,1,53,1636*32,3184*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248)
	AddNpcNew(171,1,53,1581*32,3203*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177)	
	AddNpcNew(103,1,53,1601*32,3124*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194)
	AddNpcNew(181,1,53,1619*32,3163*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240)	
	AddNpcNew(188,1,53,1635*32,3189*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249)
	AddNpcNew(309,1,53,1576*32,3145*32,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181)
	----NPC Chuc nang-----
	nNpcIdx = AddNpcNew(625,1,53,1612*32,3168*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 19);
	nNpcIdx = AddNpcNew(219,1,53,1600*32,3170*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84); SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,53,1586*32,3155*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55); SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,53,1598*32,3209*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,251); SetNpcValue(nNpcIdx, 24);
	AddNpcNew(239,1,53,1578*32,3236*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(108,1,53,1626*32,3172*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
	AddNpcNew(377,1,53, 52150, 102241, "\\script\\global\\npcchucnang\\lequan.lua",6,57) 
	AddNpcNew(663,1,53,1619*32,3169*32,"\\script\\global\\npcchucnang\\longngu.lua",6)--enemy199
	AddNpcNew(373,1,53,1601*32,3188*32,"\\script\\global\\npcchucnang\\cthanhquan.lua",6,186)
	AddNpcNew(311,1,53,53489,95320,"\\script\\global\\npcchucnang\\vosu.lua",6,201)
	AddNpcNew(87,1,53,52189,101738,"\\script\\global\\npcchucnang\\trogiup.lua",6,"T�n Th� S� Gi� ") --308
	--Npc ba lang huyen
	AddNpcNew(362,1,53,1639*32,3210*32,"\\script\\npcthon\\balang\\tieungu.lua",6,252) 
	AddNpcNew(297,1,53,1632*32,3214*32,"\\script\\npcthon\\balang\\ngudan.lua",6,241) 
	AddNpcNew(347,1,53,1621*32,3256*32,"\\script\\npcthon\\balang\\aphuong.lua",6,253) 
	AddNpcNew(323,1,53,1506*32,3173*32,"\\script\\npcthon\\balang\\thamcuu.lua",6,242) 
	AddNpcNew(247,1,53,1632*32,3243*32,"\\script\\npcthon\\balang\\colaothai.lua",6,254) 
	AddNpcNew(359,1,53,57538,98808,"\\script\\npcthon\\balang\\dukhach.lua",6,237) 
	AddNpcNew(360,1,53,1569*32,3151*32,"\\script\\npcthon\\balang\\thuanthuy.lua",6,239)
	AddNpcNew(385,1,53,1564*32,3145*32,"\\script\\npcthon\\balang\\lagiathamtu.lua",6,238) 
	AddNpcNew(246,1,53,1557*32,3196*32,"\\script\\npcthon\\balang\\cuucanlaogia.lua",6,243) 
	AddNpcNew(212,1,53,1605*32,3120*32,"\\script\\npcthon\\balang\\chutuudiem.lua",6,38) 
	AddNpcNew(367,1,53,1551*32,3220*32,"\\script\\npcthon\\balang\\ducuuchau.lua",6,250) 
	AddNpcNew(333,1,53,1568*32,3183*32,"\\script\\npcthon\\balang\\phuongkhavi.lua",6,244) 
	nNpcIdx = AddNpcNew(240,1,53,1801*32,3154*32,"\\script\\npcthon\\balang\\thuyenphu.lua",6,241);SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(242,1,53,1778*32,3176*32,"\\script\\npcthon\\balang\\thuyenphu.lua",6,241);SetNpcValue(nNpcIdx, 2);
	nNpcIdx = AddNpcNew(242,1,53,49385,93542,"\\script\\npcthon\\balang\\thuyenphu.lua",6,31);SetNpcValue(nNpcIdx, 1);
end;

function addtrapbalang()
	AddTrapEx1(53,1648,3244,12,"\\script\\maps\\balang\\trap\\cong4h.lua")
	AddTrapEx2(53,1558,3250,12,"\\script\\maps\\balang\\trap\\cong8h.lua")
	AddTrapEx1(53,1534,3119,12,"\\script\\maps\\balang\\trap\\cong10h.lua")
	AddTrapEx2(53,1624,3093,12,"\\script\\maps\\balang\\trap\\cong2h.lua")
	
end;

function addobjbalang()
	AddObj(6,53,1660*32,3238*32,"\\script\\maps\\balang\\obj\\biada.lua")
	AddObj(6,53,1557*32,3253*32,"\\script\\maps\\balang\\obj\\biada.lua",1)
	AddObj(6,53,1544*32,3108*32,"\\script\\maps\\balang\\obj\\biada.lua")
	AddObj(6,53,1627*32,3092*32,"\\script\\maps\\balang\\obj\\biada.lua",1)
	AddObj(4,53,1620*32,3098*32,"")
	AddObj(3,53,52031,101236,"\\script\\maps\\balang\\obj\\caothi.lua")
	AddObj(303,53,57692,96787,"\\script\\maps\\balang\\obj\\ngocboi.lua")
end;
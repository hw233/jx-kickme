-- Script by Ken Nguyen
--rect=82x,89y,114x,108y
function addnpclongmon()
	--local nNpcIdx;
	--AddNpcAuto(3,272,278,{31,42,43},10,121,257,274,DEATHFILE0X,
	--	--5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	--AddNpcAuto(3,262,295,{31,42,43},10,121,247,291,DEATHFILE0X,
	--	5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	--AddNpcAuto(3,234,288,{31,42,43},10,121,230,286,DEATHFILE0X,
	--	5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	--AddNpcAuto(3,236,274,{31,42,43},10,121,225,269,DEATHFILE0X,
	--	5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	--	
	--AddNpcAuto(2,222,261,{31,42,43},10,121,222,261,DEATHFILE0X,--gan heo rung
	--	5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	--AddNpcAuto(2,272,260,{31,42,43},10,121,272,260,DEATHFILE0X,--gan heo rung
	--	5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
	--AddNpcAuto(2,279,292,{31,42,43},10,121,279,292,DEATHFILE0X,--gan heo rung
	--	5,nil,1,"555",nil,nil,nil,40,5,10,15,nil,600,nil,nil,DROPFILE0X);
--luyen kc
local MOCNHAN = {
{60542,148538},
{60373,148636},
{60272,148886},
{60373,149002},
{60536,148828},
{60738,148928},
{60703,148534},
{60816,148744}
};
local COCGO = {
{60079,148208},
{59963,148436},
{61041,149130},
{60980,149416},
{60713,149558},
{60318,148078}
};
local BAOCAT = {
{60171,148996},
{60102,148774},
{60136,148520},
{60273,148346},
{60436,148284},
{60620,148328},
{60842,149054},
{60975,148822}
};
	for i=1,getn(MOCNHAN) do
	nNpcIdx = AddNpcNew(414,1,121,MOCNHAN[i][1],MOCNHAN[i][2],DEATH_COCGO,
		5,nil,1,"555",1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,3);
	end
	for i=1,getn(COCGO) do
	nNpcIdx = AddNpcNew(413,1,121,COCGO[i][1],COCGO[i][2],DEATH_COCGO,
		5,nil,1,"555",1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,1);
	end
	for i=1,getn(BAOCAT) do
	nNpcIdx = AddNpcNew(415,1,121,BAOCAT[i][1],BAOCAT[i][2],DEATH_COCGO,
		5,nil,1,"555",1,1,nil,nil,1,nil,nil,nil,50,nil,nil,"");
	SetNpcValue(nNpcIdx,2);
	end
	----NPC Mon Phai-----
	AddNpcNew(189,1,121,1949*32,4527*32,"\\script\\npcthon\\npcmonphai\\thieulam.lua",6,183)
	AddNpcNew(184,1,121,1958*32,4559*32,"\\script\\npcthon\\npcmonphai\\thienvuong.lua",6,247)
	AddNpcNew(186,1,121,1896*32,4488*32,"\\script\\npcthon\\npcmonphai\\ngudoc.lua",6,178)
	AddNpcNew(177,1,121,1984*32,4515*32,"\\script\\npcthon\\npcmonphai\\duongmon.lua",6,185)
	AddNpcNew(83 ,1,121,1956*32,4490*32,"\\script\\npcthon\\npcmonphai\\ngami.lua",6,248)
	AddNpcNew(171,1,121,1977*32,4486*32,"\\script\\npcthon\\npcmonphai\\thuyyen.lua",6,177)	
	AddNpcNew(103,1,121,1904*32,4538*32,"\\script\\npcthon\\npcmonphai\\caibang.lua",6,194)
	AddNpcNew(181,1,121,2004*32,4466*32,"\\script\\npcthon\\npcmonphai\\thiennhan.lua",6,240)	
	AddNpcNew(188,1,121,1923*32,4558*32,"\\script\\npcthon\\npcmonphai\\vodang.lua",6,249)
	AddNpcNew(309,1,121,62054,144266,"\\script\\npcthon\\npcmonphai\\conlon.lua",6,181)
	
	----NPC Chuc nang-----
	nNpcIdx = AddNpcNew(243,1,121,1914*32,4525*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84);SetNpcValue(nNpcIdx, 23);
	nNpcIdx = AddNpcNew(198,1,121,2001*32,4512*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55);SetNpcValue(nNpcIdx, 22);
	nNpcIdx = AddNpcNew(203,1,121,1935*32,4553*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,51);SetNpcValue(nNpcIdx, 24);
	nNpcIdx = AddNpcNew(625,1,121,1934*32,4513*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,56);  
	nNpcIdx = AddNpcNew(625,1,121,2000*32,4472*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,55);  	
	AddNpcNew(393,1,121,1980*32,4594*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(237,1,121,1924*32,4426*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(108,1,121,1960*32,4501*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
	AddNpcNew(377,1,121,1959*32,4517*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57)
	AddNpcNew(663,1,121,64360,143524,"\\script\\global\\npcchucnang\\longngu.lua",6)	
	AddNpcNew(373,1,121,1983*32,4498*32,"\\script\\global\\npcchucnang\\cthanhquan.lua",6,186)
	AddNpcNew(52,1,121,1941*32,4504*32,"\\script\\global\\npcchucnang\\nhadich.lua",6,176)
	AddNpcNew(52,1,121,1946*32,4499*32,"\\script\\global\\npcchucnang\\nhadich.lua",6,176)
	AddNpcNew(311,1,121,60948,148258,"\\script\\global\\npcchucnang\\vosu.lua",6,201)
    AddNpcNew(87,1,121,62955,144104,"\\script\\global\\npcchucnang\\trogiup.lua",6,"T©n Thñ Sø Gi¶ ")	
	----NPC longmon----------
    AddNpcNew(89,1,121,2016*32,4491*32,"\\script\\feature\\nvhoangkim\\doanmocthanh.lua",6,"§oan Méc Thanh")--nvhk	
    AddNpcNew(344,1,121,1994*32,4477*32,"\\script\\npcthon\\longmontran\\trieuminhi.lua",6,358)		
    AddNpcNew(318,1,121,1986*32,4479*32,"\\script\\npcthon\\longmontran\\trieubaba.lua",6,359)		
    AddNpcNew(330,1,121,1943*32,4458*32,"\\script\\npcthon\\longmontran\\trinhdaivi.lua",6,357)		
    AddNpcNew(327,1,121,1925*32,4516*32,"\\script\\npcthon\\longmontran\\thuongquanthu.lua",6,360)		
    AddNpcNew(321,1,121,1873*32,4495*32,"\\script\\npcthon\\longmontran\\anmay.lua",6)		
    AddNpcNew(356,1,121,1975*32,4538*32,"\\script\\npcthon\\longmontran\\bachu.lua",6,361)		
    AddNpcNew(338,1,121,1950*32,4565*32,"\\script\\npcthon\\longmontran\\tehuong.lua",6,362)		
    AddNpcNew(355,1,121,1928*32,4583*32,"\\script\\npcthon\\longmontran\\maihuong.lua",6,366)		
    AddNpcNew(311,1,121,2011*32,4552*32,"\\script\\npcthon\\longmontran\\tonnhilang.lua",6,363)	
    AddNpcNew(360,1,121,2019*32,4551*32,"\\script\\npcthon\\longmontran\\tontieutieu.lua",6,364)	
    AddNpcNew(207,1,121,2022*32,4549*32,"\\script\\npcthon\\longmontran\\tongiatau.lua",6,365)		
	
end;

function addtraplongmon()
	AddTrapEx2(121,2033,4480,7,"\\script\\maps\\longmon\\trap\\cong2h.lua")
	AddTrapEx1(121,1975,4625,12,"\\script\\maps\\longmon\\trap\\cong4h.lua")
	AddTrapEx2(121,1887,4555,15,"\\script\\maps\\longmon\\trap\\cong8h.lua")
	AddTrapEx1(121,1900,4422,13,"\\script\\maps\\longmon\\trap\\cong10h.lua")
end;

function addobjlongmon()
end;
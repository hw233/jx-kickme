-- Script by Ken Nguyen
--rect=78,88,117,113

function addnpctuongduong()

	--NPC monster
	AddNpcAuto(3,174,199,{11,33,34,12},20,78,164,192,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(4,178,195,{11,33,34,12},20,78,175,188,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,198,187,{11,33,34,12},20,78,185,182,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(4,218,195,{11,33,34,12},20,78,205,188,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,230,207,{11,33,34,12},20,78,219,196,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,224,216,{11,33,34,12},20,78,207,208,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(4,223,221,{11,33,34,12},20,78,180,217,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
    AddNpcAuto(3,175,221,{11,33,34,12},20,78,161,205,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	----NPC Chuc nang-----
	local nNpcIdx;
	nNpcIdx = AddNpcNew(625,1,78,1575*32,3340*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 30);--passerby198
	nNpcIdx = AddNpcNew(625,1,78,1450*32,3263*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 31);--passerby198
	nNpcIdx = AddNpcNew(625,1,78,1482*32,3164*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 32);--passerby198
	nNpcIdx = AddNpcNew(625,1,78,1563*32,3219*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 29);--passerby198
	nNpcIdx = AddNpcNew(625,1,78,1687*32,3235*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 33);--passerby198
	nNpcIdx = AddNpcNew(384,1,78,1630*32,3261*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,814);SetNpcValue(nNpcIdx, 11);
	nNpcIdx = AddNpcNew(198,1,78,1551*32,3215*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55);SetNpcValue(nNpcIdx, 10);--passerby004
	nNpcIdx = AddNpcNew(203,1,78,1612*32,3244*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,51); SetNpcValue(nNpcIdx, 12);--passerby007
	nNpcIdx = AddNpcNew(230,1,78,1567*32,3194*32,"\\script\\global\\npcchucnang\\banngua.lua",6,64); SetNpcValue(nNpcIdx, 45);--passerby037
	AddNpcNew(237,1,78,1597*32,3376*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)--passerby040-2
	AddNpcNew(237,1,78,1437*32,3211*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)--passerby040-2
	AddNpcNew(393,1,78,1692*32,3232*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)--passerby040-4
	AddNpcNew(393,1,78,1510*32,3139*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)--passerby040-4
	AddNpcNew(108,1,78,1595*32,3288*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)--enemy081
	AddNpcNew(377,1,78,1537*32,3245*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57)--passerby181
	AddNpcNew(377,1,78,1587*32,3368*32,"\\script\\global\\npcchucnang\\dichquan.lua",6,717)--passerby181
	--AddNpcNew(309,1,78,1577*32,3376*32,"\\script\\global\\npcchucnang\\congbinhtu.lua",6,868)--passerby094
	--AddNpcNew(309,1,78,1474*32,3271*32,"\\script\\global\\npcchucnang\\congbinhtu.lua",6,868)--passerby094
	--AddNpcNew(309,1,78,1465*32,3183*32,"\\script\\global\\npcchucnang\\congbinhtu.lua",6,868)--passerby094
	--AddNpcNew(309,1,78,1705*32,3235*32,"\\script\\global\\npcchucnang\\congbinhtu.lua",6,868)--passerby094
	AddNpcNew(259,1,78,1490*32,3266*32,"\\script\\global\\npcchucnang\\hangrong.lua",6,48)--passerby063
	AddNpcNew(391,1,78,1530*32,3224*32,"\\script\\global\\npcchucnang\\tientrang.lua",6,70)
	AddNpcNew(380,1,78,1556*32,3183*32,"\\script\\global\\npcchucnang\\thuongnhan.lua",6,35)
	AddNpcNew(308,1,78,1607*32,3259*32,"\\script\\global\\npcchucnang\\truyennhan.lua",6,65)
	AddNpcNew(308,1,78,1546*32,3117*32,"\\script\\global\\npcchucnang\\sgkietxuat.lua",6,"Sø gi¶ liªn ®Êu")
	--AddNpcNew(87,1,78,1558*32,3116*32,"\\script\\global\\npcchucnang\\sgliendau.lua",6,"Sø gi¶ liªn ®Êu")
	AddNpcNew(769,1,78,1511*32,3204*32,"\\script\\global\\npcchucnang\\nhieptran.lua",6)
	AddNpcNew(62,1,78,1708*32,3217*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1715*32,3224*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1467*32,3162*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1460*32,3169*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1431*32,3305*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1424*32,3298*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1619*32,3421*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(62,1,78,1625*32,3415*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,3);
	AddNpcNew(51,1,78,1593*32,3206*32,"\\script\\global\\npcchucnang\\nhamon.lua",6,532);
	AddNpcNew(51,1,78,1600*32,3214*32,"\\script\\global\\npcchucnang\\nhamon.lua",6,532);
	AddNpcNew(209,1,78,1606*32,3301*32,"\\script\\global\\npcchucnang\\chusongbac.lua",6)
	--Npc tuong duong
	AddNpcNew(244,1,78,1580*32,3327*32,"\\script\\npcthanhthi\\tduong\\qvienngoai.lua",6,804)
	AddNpcNew(374,1,78,1601*32,3314*32,"\\script\\npcthanhthi\\tduong\\conbac.lua",6,62)
	AddNpcNew(321,1,78,1610*32,3340*32,"\\script\\npcthanhthi\\tduong\\anmayd.lua",6)
	AddNpcNew(210,1,78,1612*32,3307*32,"\\script\\npcthanhthi\\tduong\\baokeph.lua",6,61)
	AddNpcNew(211,1,78,1609*32,3306*32,"\\script\\npcthanhthi\\tduong\\baoketr.lua",6,61)
	AddNpcNew(342,1,78,1542*32,3325*32,"\\script\\npcthanhthi\\tduong\\daogia.lua",6,803)
	AddNpcNew(212,1,78,1527*32,3306*32,"\\script\\npcthanhthi\\tduong\\tuulau.lua",6,671)
	AddNpcNew(283,1,78,1506*32,3284*32,"\\script\\npcthanhthi\\tduong\\quaphan.lua",6,800)
	AddNpcNew(195,1,78,1524*32,3270*32,"\\script\\npcthanhthi\\tduong\\luquan.lua",6,88)
	AddNpcNew(356,1,78,1478*32,3257*32,"\\script\\npcthanhthi\\tduong\\huongnhi.lua",6,796)
	AddNpcNew(324,1,78,1473*32,3253*32,"\\script\\npcthanhthi\\tduong\\tuuquy.lua",6,69)
	AddNpcNew(355,1,78,1468*32,3247*32,"\\script\\npcthanhthi\\tduong\\bachvan.lua",6,793)
	AddNpcNew(386,1,78,1471*32,3249*32,"\\script\\npcthanhthi\\tduong\\haco.lua",6,794)
	AddNpcNew(358,1,78,1457*32,3250*32,"\\script\\npcthanhthi\\tduong\\luuhang.lua",6,795)
	AddNpcNew(247,1,78,1453*32,3224*32,"\\script\\npcthanhthi\\tduong\\laothai.lua",6,791)
	AddNpcNew(218,1,78,1450*32,3198*32,"\\script\\npcthanhthi\\tduong\\cogiats.lua",6)
	AddNpcNew(217,1,78,1458*32,3193*32,"\\script\\npcthanhthi\\tduong\\camdo.lua",6)
	AddNpcNew(219,1,78,1460*32,3188*32,"\\script\\npcthanhthi\\tduong\\thutiencd.lua",6,41)
	AddNpcNew(224,1,78,1485*32,3163*32,"\\script\\npcthanhthi\\tduong\\tiemtra.lua",6)
	AddNpcNew(348,1,78,1491*32,3178*32,"\\script\\npcthanhthi\\tduong\\daodao.lua",6,788)
	AddNpcNew(371,1,78,1501*32,3197*32,"\\script\\npcthanhthi\\tduong\\daicuong.lua",6,789)
	AddNpcNew(225,1,78,1491*32,3156*32,"\\script\\npcthanhthi\\tduong\\bacsi.lua",6)
	AddNpcNew(359,1,78,1544*32,3228*32,"\\script\\npcthanhthi\\tduong\\doantutai.lua",6,792)
	AddNpcNew(361,1,78,1538*32,3264*32,"\\script\\npcthanhthi\\tduong\\tieudang.lua",6,797)
	AddNpcNew(296,1,78,1540*32,3257*32,"\\script\\npcthanhthi\\tduong\\beophung.lua",6,798)
	AddNpcNew(378,1,78,1561*32,3266*32,"\\script\\npcthanhthi\\tduong\\ongchuha.lua",6,801)
	AddNpcNew(205,1,78,1583*32,3279*32,"\\script\\npcthanhthi\\tduong\\doco.lua",6,99)
	AddNpcNew(334,1,78,1594*32,3303*32,"\\script\\npcthanhthi\\tduong\\conbac.lua",6,62)
	AddNpcNew(286,1,78,1586*32,3251*32,"\\script\\npcthanhthi\\tduong\\thantoan.lua",6,799)
	AddNpcNew(379,1,78,1549*32,3195*32,"\\script\\npcthanhthi\\tduong\\anguu.lua",6,790)
	AddNpcNew(265,1,78,1538*32,3164*32,"\\script\\npcthanhthi\\tduong\\laodau.lua",6,787)
	AddNpcNew(246,1,78,1537*32,3131*32,"\\script\\npcthanhthi\\tduong\\dada.lua",6,783)
	AddNpcNew(308,1,78,1552*32,3152*32,"\\script\\npcthanhthi\\tduong\\tieudau.lua",6,731)
	AddNpcNew(381,1,78,1553*32,3105*32,"\\script\\npcthanhthi\\tduong\\nhixuan.lua",6,784)
	AddNpcNew(286,1,78,1545*32,3095*32,"\\script\\npcthanhthi\\tduong\\thietchuy.lua",6,36)
	AddNpcNew(321,1,78,1532*32,3102*32,"\\script\\npcthanhthi\\tduong\\anmayt.lua",6)
	AddNpcNew(698,1,78,1614*32,3185*32,"\\script\\npcthanhthi\\tduong\\uanco.lua",6)
	AddNpcNew(1843,1,78,1616*32,3200*32,"\\script\\npcthanhthi\\tduong\\doanvan.lua",6)
	AddNpcNew(351,1,78,1648*32,3274*32,"\\script\\npcthanhthi\\tduong\\danggia.lua",6,802)
	AddNpcNew(323,1,78,1668*32,3251*32,"\\script\\npcthanhthi\\tduong\\dukhach.lua",6,237)
	AddNpcNew(64,1,78,1520*32,3077*32,"\\script\\npcthanhthi\\tduong\\tuvu.lua",6,782)
	AddNpcNew(242,1,78,41477,111362,"\\script\\npcthanhthi\\tduong\\thuyenphu.lua",6,31);
end;

function addtraptuongduong()
	AddTrapEx2(78,1426,3294,10,"\\script\\maps\\tuongduong\\trap\\cong8h.lua")
	AddTrapEx1(78,1457,3165,10,"\\script\\maps\\tuongduong\\trap\\cong10h.lua")
	AddTrapEx2(78,1710,3213,10,"\\script\\maps\\tuongduong\\trap\\cong2h.lua")
	AddTrapEx1(78,1615,3417,10,"\\script\\maps\\tuongduong\\trap\\cong4h.lua")
	
end;

function addobjtuongduong()
	AddObj(3,78,1466*32,3180*32,"\\script\\maps\\tuongduong\\obj\\caothi.lua")
	AddObj(3,78,1586*32,3386*32,"\\script\\maps\\tuongduong\\obj\\caothi.lua")
	AddObj(3,78,1607*32,3219*32,"\\script\\maps\\tuongduong\\obj\\caothi.lua",2)
	AddObj(4,78,1702*32,3241*32,"\\script\\maps\\tuongduong\\obj\\caothi.lua")
	--khoang thach nhiem vu
	AddObj(283,78,41867,100257,"\\script\\maps\\tuongduong\\obj\\luongngan.lua")
	AddObj(283,78,43520,101888,"\\script\\maps\\tuongduong\\obj\\luongngan.lua")
	AddObj(283,78,44938,97549,"\\script\\maps\\tuongduong\\obj\\luongngan.lua")
	AddObj(284,78,42496,103424,"\\script\\maps\\tuongduong\\obj\\xichdong.lua")
	AddObj(284,78,44357,100865,"\\script\\maps\\tuongduong\\obj\\xichdong.lua")
	AddObj(284,78,47004,95133,"\\script\\maps\\tuongduong\\obj\\xichdong.lua")
	AddObj(285,78,41728,100864,"\\script\\maps\\tuongduong\\obj\\tuthiet.lua")
	AddObj(285,78,43298,98633,"\\script\\maps\\tuongduong\\obj\\tuthiet.lua")
	AddObj(285,78,45554,95514,"\\script\\maps\\tuongduong\\obj\\tuthiet.lua")
end;
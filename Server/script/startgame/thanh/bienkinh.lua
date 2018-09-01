-- Script by Ken Nguyen

function addnpcbienkinh()--191,201
	local nNpcIdx;
	-----NPC monster---
	AddNpcAuto(3,199,222,{11,33,34,12},20,37,174,206,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(4,195,183,{11,33,34,12},20,37,177,180,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,222,212,{11,33,34,12},20,37,218,204,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(4,249,177,{11,33,34,12},20,37,239,172,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,257,171,{11,33,34,12},20,37,251,160,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
		
	----NPC Chuc nang-----
	nNpcIdx = AddNpcNew(387,1,37,1747*32,3049*32,"\\script\\global\\npcchucnang\\thoren.lua",6,667);SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(216,1,37,1787*32,3100*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84);SetNpcValue(nNpcIdx, 8);
	nNpcIdx = AddNpcNew(202,1,37,1713*32,3100*32,"\\script\\global\\npcchucnang\\thoren.lua",6,672);SetNpcValue(nNpcIdx, 7);
	nNpcIdx = AddNpcNew(203,1,37,1778*32,3090*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,51);SetNpcValue(nNpcIdx, 12);
	nNpcIdx = AddNpcNew(230,1,37,1714*32,3029*32,"\\script\\global\\npcchucnang\\banngua.lua",6,64);SetNpcValue(nNpcIdx, 44);
	nNpcIdx = AddNpcNew(625,1,37,1854*32,2955*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,26); --bac
	nNpcIdx = AddNpcNew(625,1,37,1723*32,3081*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,23); --giua
	nNpcIdx = AddNpcNew(625,1,37,1614*32,3013*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,25); --tay
	nNpcIdx = AddNpcNew(625,1,37,1694*32,3207*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,24); --dong
    nNpcIdx = AddNpcNew(377,1,37,1602*32,3001*32,"\\script\\global\\npcchucnang\\dichquan.lua",6,47);--SetNpcValue(nNpcIndex,50);                                                                                              
	
	AddNpcNew(236,1,37,1595*32,2993*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(237,1,37,1630*32,3185*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(236,1,37,1705*32,3221*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(237,1,37,1861*32,2925*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(108,1,37,1736*32,3101*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
	AddNpcNew(377,1,37,1806*32,3097*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57)
    AddNpcNew(49,1,37,1784*32,3036*32,"\\script\\global\\npcchucnang\\nhadich.lua",6,96)
	AddNpcNew(769,1,37,1647*32,3050*32,"\\script\\global\\npcchucnang\\nhieptran.lua",6)
	AddNpcNew(308,1,37,1755*32,3043*32,"\\script\\global\\npcchucnang\\truyennhan.lua",6,65)
	--AddNpcNew(87,1,37,1760*32,3086*32,"\\script\\global\\npcchucnang\\sgliendau.lua",6,"S� gi� li�n ��u")
	AddNpcNew(308,1,37,56870,98014,"\\script\\global\\npcchucnang\\sgkietxuat.lua",6,"S� gi� li�n ��u")
	AddNpcNew(61,1,37,1730*32,3254*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbdong
	AddNpcNew(61,1,37,1725*32,3258*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbdong
	AddNpcNew(61,1,37,1586*32,2991*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbtay
	AddNpcNew(61,1,37,1580*32,2994*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbtay
	AddNpcNew(61,1,37,1607*32,3221*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbnam
	AddNpcNew(61,1,37,1611*32,3224*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbnam
	AddNpcNew(61,1,37,1884*32,2907*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbbac
	AddNpcNew(61,1,37,1889*32,2912*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbbac
	AddNpcNew(61,1,37,1787*32,3031*32,"\\script\\global\\npcchucnang\\nhamon.lua",6,532)
	AddNpcNew(61,1,37,1792*32,3035*32,"\\script\\global\\npcchucnang\\nhamon.lua",6,532)
    AddNpcNew(260,1,37,1590*32,3092*32,"\\script\\global\\npcchucnang\\hangrong.lua",6,48)     
    AddNpcNew(209,1,37,1609*32,3108*32,"\\script\\global\\npcchucnang\\chusongbac.lua",6,63)   
	AddNpcNew(391,1,37,1667*32,3207*32,"\\script\\global\\npcchucnang\\tientrang.lua",6,70)
	 --=====NPC bienkinh========================
    AddNpcNew(221,1,37,1679*32,3140*32,"\\script\\feature\\nvhoangkim\\nhungoc.lua",6,678)--nvhk
	AddNpcNew(376,1,37,1704*32,3160*32,"\\script\\feature\\nvhoangkim\\phonambang.lua",6,680)--nvhk
	AddNpcNew(400,1,37,1755*32,2992*32,"\\script\\feature\\nvhoangkim\\trantambao.lua",6,660)--nvhk
	AddNpcNew(325,1,37,1596*32,3103*32,"\\script\\npcthanhthi\\bienkinh\\conbac1.lua",6,62)
    AddNpcNew(210,1,37,1604*32,3108*32,"\\script\\npcthanhthi\\bienkinh\\baoke.lua",6,61)        
    AddNpcNew(334,1,37,1610*32,3117*32,"\\script\\npcthanhthi\\bienkinh\\conbac.lua",6,62)	     
    AddNpcNew(195,1,37,1628*32,3128*32,"\\script\\npcthanhthi\\bienkinh\\chuluquan.lua",6,88)   
    AddNpcNew(321,1,37,1635*32,3135*32,"\\script\\npcthanhthi\\bienkinh\\anmay.lua",6)       	
	AddNpcNew(321,1,37,1683*32,2999*32,"\\script\\npcthanhthi\\bienkinh\\anmay2.lua",6)       	 
    AddNpcNew(383,1,37,1673*32,3138*32,"\\script\\npcthanhthi\\bienkinh\\vuongphunhan.lua",6,676)		
    AddNpcNew(223,1,37,1673*32,3144*32,"\\script\\npcthanhthi\\bienkinh\\xuanhoa.lua",6,677)     
    AddNpcNew(324,1,37,1678*32,3145*32,"\\script\\npcthanhthi\\bienkinh\\daithieu.lua",6,679)    		
    AddNpcNew(205,1,37,1690*32,3121*32,"\\script\\npcthanhthi\\bienkinh\\chucamdo.lua",6,40)     
    AddNpcNew(214,1,37,1686*32,3089*32,"\\script\\npcthanhthi\\bienkinh\\tuubao.lua",6,37)       	
    AddNpcNew(365,1,37,1689*32,3093*32,"\\script\\npcthanhthi\\bienkinh\\chutuulau.lua",6,671) 
    AddNpcNew(306,1,37,1752*32,3067*32,"\\script\\npcthanhthi\\bienkinh\\keoholo.lua",6,668)        
	AddNpcNew(363,1,37,1808*32,3120*32,"\\script\\npcthanhthi\\bienkinh\\anhtu.lua",6,674)           
	AddNpcNew(404,1,37,1668*32,2990*32,"\\script\\npcthanhthi\\bienkinh\\thietchuy.lua",6,36)
	AddNpcNew(308,1,37,1599*32,3076*32,"\\script\\npcthanhthi\\bienkinh\\tieudau.lua",6,379)
	AddNpcNew(64,1,37,1715*32,2974*32,"\\script\\npcthanhthi\\bienkinh\\thiensu.lua",6,658)
	AddNpcNew(336,1,37,1810*32,2940*32,"\\script\\npcthanhthi\\bienkinh\\toduc.lua",6,657)
	AddNpcNew(329,1,37,1812*32,2938*32,"\\script\\npcthanhthi\\bienkinh\\manhhuc.lua",6,656)	
	AddNpcNew(359,1,37,1836*32,2953*32,"\\script\\npcthanhthi\\bienkinh\\tontutai.lua",6,659)
	AddNpcNew(247,1,37,1872*32,2988*32,"\\script\\npcthanhthi\\bienkinh\\laothai.lua",6,661)
	AddNpcNew(372,1,37,1870*32,3031*32,"\\script\\npcthanhthi\\bienkinh\\khongtoan.lua",6,663)
	AddNpcNew(351,1,37,1840*32,3055*32,"\\script\\npcthanhthi\\bienkinh\\dongmai.lua",6,669)
	AddNpcNew(313,1,37,1845*32,3110*32,"\\script\\npcthanhthi\\bienkinh\\vienngoai.lua",6,675)
	AddNpcNew(224,1,37,1721*32,3128*32,"\\script\\npcthanhthi\\bienkinh\\chutiemtra.lua",6)
	AddNpcNew(335,1,37,1743*32,3147*32,"\\script\\npcthanhthi\\bienkinh\\daulytu.lua",6,681)
	AddNpcNew(357,1,37,1705*32,3197*32,"\\script\\npcthanhthi\\bienkinh\\truongquaphu.lua",6,682)
	AddNpcNew(311,1,37,1676*32,3223*32,"\\script\\npcthanhthi\\bienkinh\\kimquocvosi.lua",6,683)
	AddNpcNew(217,1,37,1660*32,3194*32,"\\script\\npcthanhthi\\bienkinh\\chutiemcamdo.lua",6)
	AddNpcNew(245,1,37,1667*32,3102*32,"\\script\\npcthanhthi\\bienkinh\\trinhdaigia.lua",6,670)
	AddNpcNew(327,1,37,1660*32,3066*32,"\\script\\npcthanhthi\\bienkinh\\bachcongtu.lua",6,665)
	AddNpcNew(378,1,37,1732*32,3057*32,"\\script\\npcthanhthi\\bienkinh\\ongchuco.lua",6,666)
	AddNpcNew(697,1,37,1679*32,3045*32,"\\script\\npcthanhthi\\bienkinh\\hoaixuyen.lua",6)
	AddNpcNew(357,1,37,1692*32,2917*32,"\\script\\npcthanhthi\\bienkinh\\phongthailinh.lua",6,"Phong Th�i Linh")		
	AddNpcNew(359,1,37,1760*32,3010*32,"\\script\\npcthanhthi\\bienkinh\\tankhoitat.lua",6,"T�n Kh�i T�t")
	AddNpcNew(329,1,37,1697*32,3117*32,"\\script\\npcthanhthi\\bienkinh\\tetuu.lua",6,"T� T�u")
    AddNpcNew(305,1,37,1640*32,3043*32,"\\script\\npcthanhthi\\bienkinh\\trandaico.lua",6,"T�n ��i C�")
	
end;

function addtrapbienkinh()
	AddTrapEx2(37,1606,3216,8,"\\script\\maps\\bienkinh\\trap\\cong8h.lua")
	AddTrapEx1(37,1577,2993,8,"\\script\\maps\\bienkinh\\trap\\cong10h.lua")
	AddTrapEx2(37,1885,2902,8,"\\script\\maps\\bienkinh\\trap\\cong2h.lua")
	AddTrapEx1(37,1721,3254,8,"\\script\\maps\\bienkinh\\trap\\cong4h.lua")
		
end;

function addobjbienkinh()
	AddObj(39,38,1710*32,3130*32,"\\script\\maps\\bienkinh\\obj\\thietthaptang1.lua")
	AddObj(39,39,1673*32,3124*32,"\\script\\maps\\bienkinh\\obj\\thietthaptang2.lua")
	AddObj(39,39,1687*32,3025*32,"\\script\\maps\\bienkinh\\obj\\thietthaptang2a.lua")
	AddObj(39,40,1675*32,3125*32,"\\script\\maps\\bienkinh\\obj\\thietthaptang3.lua")
	AddObj(295,37,1134*32,3222*32,"\\script\\maps\\bienkinh\\obj\\bienkinh.lua",2)
	AddObj(297,41,2067*32,2801*32,"\\script\\maps\\bienkinh\\obj\\phucnguutay.lua",2)
	AddObj(3,37,1590*32,2994*32,"\\script\\maps\\bienkinh\\obj\\caothi.lua")
	AddObj(4,37,1879*32,2911*32,"\\script\\maps\\bienkinh\\obj\\caothi.lua",2)
end;

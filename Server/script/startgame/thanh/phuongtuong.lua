-- Script by Ken Nguyen

function addnpcphuongtuong()
	local nNpcIdx;
	--NPC monster
	AddNpcAuto(3,220,213,{11,33,34,12},20,1,206,209,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,187,211,{11,33,34,12},20,1,177,205,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,187,192,{11,33,34,12},20,1,178,187,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
	AddNpcAuto(3,223,196,{11,33,34,12},20,1,213,192,DEATHFILE1X,
		5,nil,1,"555",nil,nil,nil,50,10,15,20,nil,600,nil,nil,DROPFILE1X);
		
	----NPC Chuc nang-----
	nNpcIdx = AddNpcNew(216,1,1,1561*32,3204*32,"\\script\\global\\npcchucnang\\taphoa.lua",6,84);SetNpcValue(nNpcIdx, 20);
	nNpcIdx = AddNpcNew(199,1,1,1617*32,3194*32,"\\script\\global\\npcchucnang\\thoren.lua",6,55);SetNpcValue(nNpcIdx, 19);
	nNpcIdx = AddNpcNew(203,1,1,1604*32,3191*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,51);SetNpcValue(nNpcIdx, 12);
	nNpcIdx = AddNpcNew(233,1,1,1638*32,3193*32,"\\script\\global\\npcchucnang\\banngua.lua",6,64);SetNpcValue(nNpcIdx, 44);
	nNpcIdx = AddNpcNew(625,1,1,1592*32,3170*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,5); --giua
	nNpcIdx = AddNpcNew(625,1,1,1544*32,3220*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,3); --nam
	nNpcIdx = AddNpcNew(625,1,1,53057,100976,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,4); --bac
	nNpcIdx = AddNpcNew(625,1,1,1632*32,3261*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,1); --dong	
	nNpcIdx = AddNpcNew(625,1,1,50301,99776,"\\script\\global\\npcchucnang\\ruongchua.lua",6);SetNpcValue(nNpcIdx,2); --tay	
	nNpcIdx = AddNpcNew(377,1,1,1566*32,3115*32,"\\script\\global\\npcchucnang\\dichquan.lua",6,47);--SetNpcValue(nNpcIdx,50);--passerby181 
	
	AddNpcNew(239,1,1,1519*32,3228*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(239,1,1,1559*32,3108*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(239,1,1,1646*32,3273*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(239,1,1,1648*32,3165*32,"\\script\\global\\npcchucnang\\xaphu.lua",6,42)
	AddNpcNew(108,1,1,1620*32,3089*32,"\\script\\global\\npcchucnang\\datau.lua",6,59)
	AddNpcNew(377,1,1,1614*32,3151*32,"\\script\\global\\npcchucnang\\lequan.lua",6,57)
	AddNpcNew(769,1,1,1506*32,3198*32,"\\script\\global\\npcchucnang\\nhieptran.lua",6)	
	AddNpcNew(308,1,1,1625*32,3206*32,"\\script\\global\\npcchucnang\\truyennhan.lua",6,65)
	AddNpcNew(62,1,1,1670*32,3310*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbdong
	AddNpcNew(62,1,1,1665*32,3315*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbdong
	AddNpcNew(62,1,1,1543*32,3095*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbtay
	AddNpcNew(62,1,1,1537*32,3101*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbtay
	AddNpcNew(62,1,1,1508*32,3261*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbnam
	AddNpcNew(62,1,1,1513*32,3265*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbnam
	AddNpcNew(62,1,1,1675*32,3151*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbbac
	AddNpcNew(62,1,1,1670*32,3146*32,"\\script\\global\\npcchucnang\\vebinh.lua",6,4)-- vbbac	
	AddNpcNew(1645,1,1,1575*32,3184*32,"\\script\\global\\npcchucnang\\nhamon.lua",6,380)	
	AddNpcNew(1645,1,1,1579*32,3180*32,"\\script\\global\\npcchucnang\\nhamon.lua",6,380)
    AddNpcNew(259,1,1,1619*32,3101*32,"\\script\\global\\npcchucnang\\hangrong.lua",6,48)	
	AddNpcNew(391,1,1,1555*32,3242*32,"\\script\\global\\npcchucnang\\tientrang.lua",6,70)
	AddNpcNew(308,1,1,53537,102990,"\\script\\global\\npcchucnang\\sgkietxuat.lua",6,"S� gi� li�n ��u")
	--AddNpcNew(87,1,1,53859,103676,"\\script\\global\\npcchucnang\\sgliendau.lua",6,"S� gi� li�n ��u")
    AddNpcNew(209,1,1,1593*32,3143*32,"\\script\\global\\npcchucnang\\chusongbac.lua",6,63)   -- chusongbac
	--=====NPC phuongtuong======
	AddNpcNew(660,1,1,1587*32,3302*32,"\\script\\npcthanhthi\\phuongtuong\\vantong.lua",6)--nvhk
	AddNpcNew(205,1,1,1626*32,3169*32,"\\script\\npcthanhthi\\phuongtuong\\chucamdo.lua",6,99)
	AddNpcNew(195,1,1,1610*32,3238*32,"\\script\\npcthanhthi\\phuongtuong\\chuluquan.lua",6,88)
    AddNpcNew(325,1,1,1588*32,3138*32,"\\script\\npcthanhthi\\phuongtuong\\conbac.lua",6,62)  	-- conbac
	AddNpcNew(210,1,1,1591*32,3141*32,"\\script\\npcthanhthi\\phuongtuong\\baoke1.lua",6,61)       -- baoke
    AddNpcNew(334,1,1,1603*32,3154*32,"\\script\\npcthanhthi\\phuongtuong\\conbac1.lua",6,62)	  -- conbac	
    AddNpcNew(335,1,1,1586*32,3134*32,"\\script\\npcthanhthi\\phuongtuong\\conbac2.lua",6,62)       -- conbac
    AddNpcNew(358,1,1,1590*32,3150*32,"\\script\\npcthanhthi\\phuongtuong\\conbac3.lua",6,62)       -- conbac	
	AddNpcNew(295,1,1,1608*32,3156*32,"\\script\\npcthanhthi\\phuongtuong\\thitheo.lua",6,377)
	AddNpcNew(223,1,1,1579*32,3235*32,"\\script\\npcthanhthi\\phuongtuong\\akieu.lua",6,388)
	AddNpcNew(220,1,1,1577*32,3237*32,"\\script\\npcthanhthi\\phuongtuong\\dutau.lua",6,387)	
	AddNpcNew(222,1,1,1575*32,3239*32,"\\script\\npcthanhthi\\phuongtuong\\maudon.lua",6,389)
	AddNpcNew(304,1,1,1580*32,3129*32,"\\script\\npcthanhthi\\phuongtuong\\banrau.lua",6,370)	
	AddNpcNew(263,1,1,1599*32,3166*32,"\\script\\npcthanhthi\\phuongtuong\\tannhica.lua",6,376)
	AddNpcNew(359,1,1,1587*32,3174*32,"\\script\\npcthanhthi\\phuongtuong\\thusinh.lua",6,381)
	AddNpcNew(324,1,1,1597*32,3231*32,"\\script\\npcthanhthi\\phuongtuong\\duvu.lua",6,385)
	AddNpcNew(323,1,1,1570*32,3257*32,"\\script\\npcthanhthi\\phuongtuong\\anguu.lua",6,390)
	AddNpcNew(329,1,1,1562*32,3252*32,"\\script\\npcthanhthi\\phuongtuong\\tetuu.lua",6,"T� T�u")
	AddNpcNew(326,1,1,1586*32,3294*32,"\\script\\npcthanhthi\\phuongtuong\\truongtuthien.lua",6,391)
	AddNpcNew(364,1,1,1627*32,3277*32,"\\script\\npcthanhthi\\phuongtuong\\thuythuy.lua",6,392)
	AddNpcNew(217,1,1,1627*32,3240*32,"\\script\\npcthanhthi\\phuongtuong\\chutiemcamdo.lua",6)
	AddNpcNew(219,1,1,1629*32,3241*32,"\\script\\npcthanhthi\\phuongtuong\\nguoithutien.lua",6,41)	
	AddNpcNew(382,1,1,1652*32,3216*32,"\\script\\npcthanhthi\\phuongtuong\\medaudau.lua",6,810)
	AddNpcNew(384,1,1,1653*32,3215*32,"\\script\\npcthanhthi\\phuongtuong\\thaitham.lua",6,386)
	AddNpcNew(212,1,1,1625*32,3135*32,"\\script\\npcthanhthi\\phuongtuong\\chutuudiem.lua",6,38)	
	AddNpcNew(370,1,1,1636*32,3122*32,"\\script\\npcthanhthi\\phuongtuong\\thaidaithuc.lua",6,372)		
	AddNpcNew(321,1,1,1609*32,3084*32,"\\script\\npcthanhthi\\phuongtuong\\anmay.lua",6)	
	AddNpcNew(321,1,1,50666,97812,"\\script\\npcthanhthi\\phuongtuong\\anmay.lua",6)	
	AddNpcNew(318,1,1,1599*32,3107*32,"\\script\\npcthanhthi\\phuongtuong\\giangbaba.lua",6,371)	
	AddNpcNew(381,1,1,1563*32,3129*32,"\\script\\npcthanhthi\\phuongtuong\\tungvananh.lua",6,369)	
	AddNpcNew(372,1,1,1545*32,3147*32,"\\script\\npcthanhthi\\phuongtuong\\banhtieude.lua",6,375)	
	AddNpcNew(245,1,1,1529*32,3158*32,"\\script\\npcthanhthi\\phuongtuong\\lulaohan.lua",6,374)
	AddNpcNew(308,1,1,1543*32,3187*32,"\\script\\npcthanhthi\\phuongtuong\\tieudau.lua",6,379)
	AddNpcNew(327,1,1,1537*32,3214*32,"\\script\\npcthanhthi\\phuongtuong\\samhung.lua",6,384)	
	AddNpcNew(302,1,1,1512*32,3179*32,"\\script\\npcthanhthi\\phuongtuong\\baotu.lua",6,378)	
	AddNpcNew(360,1,1,1519*32,3141*32,"\\script\\npcthanhthi\\phuongtuong\\daudau.lua",6,373)
	AddNpcNew(64,1,1,1630*32,3063*32,"\\script\\npcthanhthi\\phuongtuong\\trutri.lua",6,368)
	AddNpcNew(224,1,1,1601*32,3260*32,"\\script\\npcthanhthi\\phuongtuong\\chutiemtra.lua",6)
	AddNpcNew(404,1,1,51907,96482,"\\script\\npcthanhthi\\phuongtuong\\thietchuy.lua",6,36)
	AddNpcNew(243,1,1,53862,102208,"\\script\\npcthanhthi\\phuongtuong\\vienngoai.lua",6,383);
end;

function addtrapphuongtuong()
	AddTrapEx2(1,1510,3257,8,"\\script\\maps\\phuongtuong\\trap\\cong8h.lua")
	AddTrapEx1(1,1535,3097,8,"\\script\\maps\\phuongtuong\\trap\\cong10h.lua")
	AddTrapEx2(1,1671,3143,8,"\\script\\maps\\phuongtuong\\trap\\cong2h.lua")
	AddTrapEx1(1,1662,3311,8,"\\script\\maps\\phuongtuong\\trap\\cong4h.lua")

end;

function addobjphuongtuong()
	AddObj(4,1,1663*32,3150*32,"\\script\\maps\\phuongtuong\\obj\\caothi.lua")	
	AddObj(4,1,1533*32,3249*32,"\\script\\maps\\phuongtuong\\obj\\caothi.lua")
	AddObj(3,1,1648*32,3292*32,"\\script\\maps\\phuongtuong\\obj\\caothi.lua")
	AddObj(3,1,1543*32,3108*32,"\\script\\maps\\phuongtuong\\obj\\caothi.lua")
end;

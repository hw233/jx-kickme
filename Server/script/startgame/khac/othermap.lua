-- Script by Ken Nguyen

function addnpcother()
	
	--============Npc Hoa s¬n ==================
	local nNpcIdx;
    AddNpcNew(238,1,2,2616*32,3586*32,"\\script\\npckhac\\hoason\\xaphuhoason.lua",6,"DÞch Tr¹m Xa Phu")
    AddNpcNew(245,1,2,2602*32,3591*32,"\\script\\npckhac\\hoason\\laotau.lua",6,"Hoa S¬n L·o TÈu")
	AddNpcNew(189,1,2,2616*32,3593*32,"\\script\\npckhac\\hoason\\thuongbachly.lua",6,"ThiÕu L©m §Ö Tö Th­êng B¸ch Lý ")
	AddNpcNew(189,1,2,2618*32,3597*32,"\\script\\npckhac\\hoason\\thuongbachly.lua",6,"ThiÕu L©m §Ö Tö Lý §Þch Phong")
    AddNpcNew(117,1,2,2351*32,3495*32,"\\script\\npckhac\\hoason\\kimson.lua",6,"Kim S¬n ch­ëng m«n")
	
	AddNpcNew(240,1,336,1147*32,3017*32,"\\script\\feature\\phonglangdo\\thuyenphu.lua",6,826)
	AddNpcNew(240,1,336,1282*32,2905*32,"\\script\\feature\\phonglangdo\\thuyenphu.lua",6,864)
	AddNpcNew(240,1,336,1537*32,2809*32,"\\script\\feature\\phonglangdo\\thuyenphu.lua",6,825)
	nNpcIdx = AddNpcNew(240,1,336,42358,92367,"\\script\\feature\\phonglangdo\\thuyenphu.lua",6,31); SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(240,1,336,47894,89992,"\\script\\feature\\phonglangdo\\thuyenphu.lua",6,31); SetNpcValue(nNpcIdx, 1);
	nNpcIdx = AddNpcNew(240,1,336,37730,95297,"\\script\\feature\\phonglangdo\\thuyenphu.lua",6,31); SetNpcValue(nNpcIdx, 1);
	
	AddNpcNew(242,1,337,51537,101312,"\\script\\feature\\phonglangdo\\thuyentruong.lua",6,867)
	AddNpcNew(240,1,337,53313,103058,"\\script\\feature\\phonglangdo\\thuyenvien.lua",6,866)
	AddTrapEx2(2,2592,3599,25,"\\script\\maps\\hoason\\trap\\hoason6h.lua")
	AddTrapEx1(2,2554,3494,15,"\\script\\maps\\hoason\\trap\\hoason10h.lua")
	--hoi truong lien dau--
	nNpcIdx = AddNpcNew(203,1,396,1550*32,3060*32,"\\script\\global\\npcchucnang\\hieuthuoc.lua",6,"HiÖu thuèc liªn ®Êu"); SetNpcValue(nNpcIdx, 12);
	nNpcIdx = AddNpcNew(625,1,396,1538*32,3094*32,"\\script\\global\\npcchucnang\\ruongchua.lua",6); SetNpcValue(nNpcIdx, 1);
	AddNpcNew(308,1,396,1534*32,3044*32,"\\script\\feature\\liendau\\hoitruong.lua",6,"Quan viªn héi tr­êng");
	nNpcIdx = AddNpcNew(308,1,396,1594*32,2971*32,"\\script\\feature\\liendau\\xaphu.lua",6,"Quan viªn ®Êu tr­êng"); SetNpcValue(nNpcIdx, 1);
	AddNpcNew(237,1,396,1459*32,3003*32,"\\script\\feature\\liendau\\xaphu.lua",6,42);
	AddNpcNew(188,1,140,76927,116846,"\\script\\npckhac\\duocvuong\\daonhanque.lua",6,339);
	local NPC_LUYEN120={
	{2147,2463,3669},
	{2143,2348,3643},
	{2136,2330,3586},
	{2148,2368,3519},
	{2137,2443,3585},
	{2139,2474,3604},
	{2146,2458,3459},
	{2138,2464,3347},
	{2140,2408,3409},
	{2141,2351,3350},
	{2149,2362,3602},
	{2145,2375,3252},
	{2142,2462,3181},
	{2150,2444,3229},
	{2144,2517,3233},
	{2151,2487,3290}
	};
	for i=1,getn(NPC_LUYEN120) do
		AddNpcNew(NPC_LUYEN120[i][1],100,140,NPC_LUYEN120[i][2]*32,NPC_LUYEN120[i][3]*32,"\\script\\global\\lastdamage\\luyenskill120.lua",
		5,nil,1,"555",0,500000,100,1000,nil,1,1,nil,1000,30,2,nil)
	end
end;

function addtrapother()
	local Count = 0;
--=====================Cac trap di ban do luyen cong===============================
	Count = getn(PHUONGTUONG_KIEMCACBAC)
	for i=1,Count do
	AddTrap(PHUONGTUONG_KIEMCACBAC[i][1],PHUONGTUONG_KIEMCACBAC[i][2]*32,PHUONGTUONG_KIEMCACBAC[i][3]*32,"\\script\\maps\\khac\\trap\\phuongtuong-kiemcacbac.lua")
	end	

	Count = getn(KIEMCACBAC_PHUONGTUONG)
	for i=1,Count do
	AddTrap(KIEMCACBAC_PHUONGTUONG[i][1],KIEMCACBAC_PHUONGTUONG[i][2]*32,KIEMCACBAC_PHUONGTUONG[i][3]*32,"\\script\\maps\\khac\\trap\\kiemcacbac-phuongtuong.lua")
	end		
	
	Count = getn(BALANGHUYEN_VULANGSON)
	for i=1,Count do
	AddTrap(BALANGHUYEN_VULANGSON[i][1],BALANGHUYEN_VULANGSON[i][2]*32,BALANGHUYEN_VULANGSON[i][3]*32,"\\script\\maps\\khac\\trap\\balanghuyen-vulangson.lua")
	end

	Count = getn(VULANGSON_BALANGHUYEN)
	for i=1,Count do
	AddTrap(VULANGSON_BALANGHUYEN[i][1],VULANGSON_BALANGHUYEN[i][2]*32,VULANGSON_BALANGHUYEN[i][3]*32,"\\script\\maps\\khac\\trap\\vulangson-balanghuyen.lua")
	end
	
	Count = getn(PHUCNGUUDONG_TUONGDUONG)
	for i=1,Count do
	AddTrap(PHUCNGUUDONG_TUONGDUONG[i][1],PHUCNGUUDONG_TUONGDUONG[i][2]*32,PHUCNGUUDONG_TUONGDUONG[i][3]*32,"\\script\\maps\\khac\\trap\\phucnguudong-tuongduong.lua")
	end

	Count = getn(TUONGDUONG_PHUCNGUUDONG)
	for i=1,Count do
	AddTrap(TUONGDUONG_PHUCNGUUDONG[i][1],TUONGDUONG_PHUCNGUUDONG[i][2]*32,TUONGDUONG_PHUCNGUUDONG[i][3]*32,"\\script\\maps\\khac\\trap\\tuongduong-phucnguudong.lua")
	end
	
	Count = getn(DUONGCHAU_THUCCUONG)
	for i=1,Count do
	AddTrap(DUONGCHAU_THUCCUONG[i][1],DUONGCHAU_THUCCUONG[i][2]*32,DUONGCHAU_THUCCUONG[i][3]*32,"\\script\\maps\\khac\\trap\\duongchau-thuccuong.lua")
	end	

	Count = getn(THUCCUONG_DUONGCHAU)
	for i=1,Count do
	AddTrap(THUCCUONG_DUONGCHAU[i][1],THUCCUONG_DUONGCHAU[i][2]*32,THUCCUONG_DUONGCHAU[i][3]*32,"\\script\\maps\\khac\\trap\\thuccuong-duongchau.lua")
	end	
	
	Count = getn(BIENKINH_PHUCNGUUTAY)
	for i=1,Count do
	AddTrap(BIENKINH_PHUCNGUUTAY[i][1],BIENKINH_PHUCNGUUTAY[i][2]*32,BIENKINH_PHUCNGUUTAY[i][3]*32,"\\script\\maps\\khac\\trap\\bienkinh-phucnguutay.lua")
	end

	Count = getn(PHUCNGUUTAY_BIENKINH)
	for i=1,Count do
	AddTrap(PHUCNGUUTAY_BIENKINH[i][1],PHUCNGUUTAY_BIENKINH[i][2]*32,PHUCNGUUTAY_BIENKINH[i][3]*32,"\\script\\maps\\khac\\trap\\phucnguutay-bienkinh.lua")
	end
	
	Count = getn(HOANGHA_LONGMON)
	for i=1,Count do
	AddTrap(HOANGHA_LONGMON[i][1],HOANGHA_LONGMON[i][2]*32,HOANGHA_LONGMON[i][3]*32,"\\script\\maps\\khac\\trap\\hoangha-longmon.lua")
	end	

	Count = getn(LONGMON_HOANGHA)
	for i=1,Count do
	AddTrap(LONGMON_HOANGHA[i][1],LONGMON_HOANGHA[i][2]*32,LONGMON_HOANGHA[i][3]*32,"\\script\\maps\\khac\\trap\\longmon-hoangha.lua")
	end
	
	Count = getn(HOANGHA_LUUTEN)
	for i=1,Count do
	AddTrap(HOANGHA_LUUTEN[i][1],HOANGHA_LUUTEN[i][2]*32,HOANGHA_LUUTEN[i][3]*32,"\\script\\maps\\khac\\trap\\hoangha-luutien.lua")
	end	

	Count = getn(LUUTEN_HOANGHA)
	for i=1,Count do
	AddTrap(LUUTEN_HOANGHA[i][1],LUUTEN_HOANGHA[i][2]*32,LUUTEN_HOANGHA[i][3]*32,"\\script\\maps\\khac\\trap\\luutien-hoangha.lua")
	end
	
	Count = getn(DAILY_ACBADIADAO)
	for i=1,Count do
	AddTrap(DAILY_ACBADIADAO[i][1],DAILY_ACBADIADAO[i][2]*32,DAILY_ACBADIADAO[i][3]*32,"\\script\\maps\\khac\\trap\\daily-acbadiadao.lua")
	end	

	Count = getn(ACBADIADAO_DAILY)
	for i=1,Count do
	AddTrap(ACBADIADAO_DAILY[i][1],ACBADIADAO_DAILY[i][2]*32,ACBADIADAO_DAILY[i][3]*32,"\\script\\maps\\khac\\trap\\acbadiadao-daily.lua")
	end		
	
	Count = getn(TRUONGGIANG_THANHDO)
	for i=1,Count do
	AddTrap(TRUONGGIANG_THANHDO[i][1],TRUONGGIANG_THANHDO[i][2]*32,TRUONGGIANG_THANHDO[i][3]*32,"\\script\\maps\\khac\\trap\\truonggiang-thanhdo.lua")
	end	

	Count = getn(THANHDO_TRUONGGIANG)
	for i=1,Count do
	AddTrap(THANHDO_TRUONGGIANG[i][1],THANHDO_TRUONGGIANG[i][2]*32,THANHDO_TRUONGGIANG[i][3]*32,"\\script\\maps\\khac\\trap\\thanhdo-truonggiang.lua")
	end	
	
	Count = getn(HOANHSON_NAMNHAC)
	for i=1,Count do
	AddTrap(HOANHSON_NAMNHAC[i][1],HOANHSON_NAMNHAC[i][2]*32,HOANHSON_NAMNHAC[i][3]*32,"\\script\\maps\\khac\\trap\\hoanhson-namnhac.lua")
	end	

	Count = getn(NAMNHAC_HOANHSON)
	for i=1,Count do
	AddTrap(NAMNHAC_HOANHSON[i][1],NAMNHAC_HOANHSON[i][2]*32,NAMNHAC_HOANHSON[i][3]*32,"\\script\\maps\\khac\\trap\\namnhac-hoanhson.lua")
	end	
	
	Count = getn(BIENKINH_LAMDUQUAN)
	for i=1,Count do
	AddTrap(BIENKINH_LAMDUQUAN[i][1],BIENKINH_LAMDUQUAN[i][2]*32,BIENKINH_LAMDUQUAN[i][3]*32,"\\script\\maps\\khac\\trap\\bienkinh-lamduquan.lua")
	end
	
	Count = getn(LAMDUQUAN_BIENKINH)
	for i=1,Count do
	AddTrap(LAMDUQUAN_BIENKINH[i][1],LAMDUQUAN_BIENKINH[i][2]*32,LAMDUQUAN_BIENKINH[i][3]*32,"\\script\\maps\\khac\\trap\\lamduquan-bienkinh.lua")
	end
	
	Count = getn(LAOHODONG_HOANGHANGUYENDAU)
	for i=1,Count do
	AddTrap(LAOHODONG_HOANGHANGUYENDAU[i][1],LAOHODONG_HOANGHANGUYENDAU[i][2]*32,LAOHODONG_HOANGHANGUYENDAU[i][3]*32,"\\script\\maps\\khac\\trap\\laohodong-hoanghanguyendau.lua")
	end	
	
	Count = getn(HOANGHANGUYENDAU_LAOHODONG)
	for i=1,Count do
	AddTrap(HOANGHANGUYENDAU_LAOHODONG[i][1],HOANGHANGUYENDAU_LAOHODONG[i][2]*32,HOANGHANGUYENDAU_LAOHODONG[i][3]*32,"\\script\\maps\\khac\\trap\\hoanghanguyendau-laohodong.lua")
	end	
	
	Count = getn(LAMDUQUAN_TRUONGBACH)
	for i=1,Count do
	AddTrap(LAMDUQUAN_TRUONGBACH[i][1],LAMDUQUAN_TRUONGBACH[i][2]*32,LAMDUQUAN_TRUONGBACH[i][3]*32,"\\script\\maps\\khac\\trap\\lamduquan-truongbach.lua")
	end

	Count = getn(TRUONGBACH_LAMDUQUAN)
	for i=1,Count do
	AddTrap(TRUONGBACH_LAMDUQUAN[i][1],TRUONGBACH_LAMDUQUAN[i][2]*32,TRUONGBACH_LAMDUQUAN[i][3]*32,"\\script\\maps\\khac\\trap\\truongbach-lamduquan.lua")
	end
	
	Count = getn(LONGMON_CONLON)	--loi di tat' den samacdiabieu
	for i=1,Count do
	AddTrap(LONGMON_CONLON[i][1],LONGMON_CONLON[i][2]*32,LONGMON_CONLON[i][3]*32,"\\script\\maps\\khac\\trap\\longmon-conlon.lua")
	end	
	
	Count = getn(DIABIEU_KHOAIHOATLAM)	--loi di tat' den longmontran
	for i=1,Count do
	AddTrap(DIABIEU_KHOAIHOATLAM[i][1],DIABIEU_KHOAIHOATLAM[i][2]*32,DIABIEU_KHOAIHOATLAM[i][3]*32,"\\script\\maps\\khac\\trap\\diabieu-khoaihoatlam.lua")
	end
	
	Count = getn(PHONGLANGDO_LONGMONTRAN)
	for i=1,Count do
	AddTrap(PHONGLANGDO_LONGMONTRAN[i][1],PHONGLANGDO_LONGMONTRAN[i][2]*32,PHONGLANGDO_LONGMONTRAN[i][3]*32,"\\script\\maps\\khac\\trap\\phonglangdo-longmontran.lua")
	end	

	Count = getn(LONGMONTRAN_PHONGLANGDO)
	for i=1,Count do
	AddTrap(LONGMONTRAN_PHONGLANGDO[i][1],LONGMONTRAN_PHONGLANGDO[i][2]*32,LONGMONTRAN_PHONGLANGDO[i][3]*32,"\\script\\maps\\khac\\trap\\longmontran-phonglangdo.lua")
	end	

	Count = getn(LONGMONTRAN_MACCAOQUAT)
	for i=1,Count do
	AddTrap(LONGMONTRAN_MACCAOQUAT[i][1],LONGMONTRAN_MACCAOQUAT[i][2]*32,LONGMONTRAN_MACCAOQUAT[i][3]*32,"\\script\\maps\\khac\\trap\\longmontran-maccaoquat.lua")
	end	

	Count = getn(MACCAOQUAT_LONGMONTRAN)
	for i=1,Count do
	AddTrap(MACCAOQUAT_LONGMONTRAN[i][1],MACCAOQUAT_LONGMONTRAN[i][2]*32,MACCAOQUAT_LONGMONTRAN[i][3]*32,"\\script\\maps\\khac\\trap\\maccaoquat-longmontran.lua")
	end
	
	Count = getn(TRUONGBACH_TRUONGBACHNAM)
	for i=1,Count do
	AddTrap(TRUONGBACH_TRUONGBACHNAM[i][1],TRUONGBACH_TRUONGBACHNAM[i][2]*32,TRUONGBACH_TRUONGBACHNAM[i][3]*32,"\\script\\maps\\khac\\trap\\truongbach-truongbachnam.lua")
	end	
	
	Count = getn(TRUONGBACHNAM_TRUONGBACH)
	for i=1,Count do
	AddTrap(TRUONGBACHNAM_TRUONGBACH[i][1],TRUONGBACHNAM_TRUONGBACH[i][2]*32,TRUONGBACHNAM_TRUONGBACH[i][3]*32,"\\script\\maps\\khac\\trap\\truongbachnam-truongbach.lua")
	end	

    Count = getn(TRUONGBACH_TRUONGBACHNAM1)
	for i=1,Count do
	AddTrap(TRUONGBACH_TRUONGBACHNAM1[i][1],TRUONGBACH_TRUONGBACHNAM1[i][2]*32,TRUONGBACH_TRUONGBACHNAM1[i][3]*32,"\\script\\maps\\khac\\trap\\truongbach-truongbachnam1.lua")
	end	
	
	Count = getn(TRUONGBACHNAM_CNTRUONGBACH)
	for i=1,Count do
	AddTrap(TRUONGBACHNAM_CNTRUONGBACH[i][1],TRUONGBACHNAM_CNTRUONGBACH[i][2]*32,TRUONGBACHNAM_CNTRUONGBACH[i][3]*32,"\\script\\maps\\khac\\trap\\truongbachnam-channuitruongbach.lua")
	end	
	
	Count = getn(CNTRUONGBACH_TBSONBAC)
	for i=1,Count do
	AddTrap(CNTRUONGBACH_TBSONBAC[i][1],CNTRUONGBACH_TBSONBAC[i][2]*32,CNTRUONGBACH_TBSONBAC[i][3]*32,"\\script\\maps\\khac\\trap\\cntruongbach-tbsonbac.lua")
	end		
	
	Count = getn(TBSONBAC_CNTRUONGBACH)
	for i=1,Count do
	AddTrap(TBSONBAC_CNTRUONGBACH[i][1],TBSONBAC_CNTRUONGBACH[i][2]*32,TBSONBAC_CNTRUONGBACH[i][3]*32,"\\script\\maps\\khac\\trap\\tbsonbac-cntruongbach.lua")
	end	
	
	Count = getn(CNTRUONGBACH1_TBSONBAC1)
	for i=1,Count do
	AddTrap(CNTRUONGBACH1_TBSONBAC1[i][1],CNTRUONGBACH1_TBSONBAC1[i][2]*32,CNTRUONGBACH1_TBSONBAC1[i][3]*32,"\\script\\maps\\khac\\trap\\cntruongbach-tbsonbac1.lua")
	end		
	
	Count = getn(TBSONBAC1_CNTRUONGBACH1)
	for i=1,Count do
	AddTrap(TBSONBAC1_CNTRUONGBACH1[i][1],TBSONBAC1_CNTRUONGBACH1[i][2]*32,TBSONBAC1_CNTRUONGBACH1[i][3]*32,"\\script\\maps\\khac\\trap\\tbsonbac-cntruongbach1.lua")
	end	
	
	Count = getn(SAMACDIABIEU_SAMACSONDONG)
	for i=1,Count do
	AddTrap(SAMACDIABIEU_SAMACSONDONG[i][1],SAMACDIABIEU_SAMACSONDONG[i][2]*32,SAMACDIABIEU_SAMACSONDONG[i][3]*32,"\\script\\maps\\khac\\trap\\samacdiabieu-samacsondong.lua")
	end	

	Count = getn(SAMACSONDONG_SAMACDIABIEU)
	for i=1,Count do
	AddTrap(SAMACSONDONG_SAMACDIABIEU[i][1],SAMACSONDONG_SAMACDIABIEU[i][2]*32,SAMACSONDONG_SAMACDIABIEU[i][3]*32,"\\script\\maps\\khac\\trap\\samacsondong-samacdiabieu.lua")
	end	
	
	Count = getn(CANVIENDONG_HOANGHANGUYENDAU)
	for i=1,Count do
	AddTrap(CANVIENDONG_HOANGHANGUYENDAU[i][1],CANVIENDONG_HOANGHANGUYENDAU[i][2]*32,CANVIENDONG_HOANGHANGUYENDAU[i][3]*32,"\\script\\maps\\khac\\trap\\canviendong-hoanghanguyendau.lua")
	end	
	
	Count = getn(HOANGHANGUYENDAU_CANVIENDONG)
	for i=1,Count do
	AddTrap(HOANGHANGUYENDAU_CANVIENDONG[i][1],HOANGHANGUYENDAU_CANVIENDONG[i][2]*32,HOANGHANGUYENDAU_CANVIENDONG[i][3]*32,"\\script\\maps\\khac\\trap\\hoanghanguyendau-canviendong.lua")
	end	
	
	Count = getn(LAOHODONG_CANVIENDONG)
	for i=1,Count do
	AddTrap(LAOHODONG_CANVIENDONG[i][1],LAOHODONG_CANVIENDONG[i][2]*32,LAOHODONG_CANVIENDONG[i][3]*32,"\\script\\maps\\khac\\trap\\laohodong-canviendong.lua")
	end	

	Count = getn(CANVIENDONG_LAOHODONG)
	for i=1,Count do
	AddTrap(CANVIENDONG_LAOHODONG[i][1],CANVIENDONG_LAOHODONG[i][2]*32,CANVIENDONG_LAOHODONG[i][3]*32,"\\script\\maps\\khac\\trap\\canviendong-laohodong.lua")
	end	
	
	Count = getn(THUCCUONG_TIENCUCDONG1)
	for i=1,Count do
	AddTrap(THUCCUONG_TIENCUCDONG1[i][1],THUCCUONG_TIENCUCDONG1[i][2]*32,THUCCUONG_TIENCUCDONG1[i][3]*32,"\\script\\maps\\khac\\trap\\thuccuong-tiencucdong1.lua")
	end	

	Count = getn(THUCCUONG_TIENCUCDONG2)
	for i=1,Count do
	AddTrap(THUCCUONG_TIENCUCDONG2[i][1],THUCCUONG_TIENCUCDONG2[i][2]*32,THUCCUONG_TIENCUCDONG2[i][3]*32,"\\script\\maps\\khac\\trap\\thuccuong-tiencucdong2.lua")
	end	
	
	Count = getn(THUCCUONG_TIENCUCDONG3)
	for i=1,Count do
	AddTrap(THUCCUONG_TIENCUCDONG3[i][1],THUCCUONG_TIENCUCDONG3[i][2]*32,THUCCUONG_TIENCUCDONG3[i][3]*32,"\\script\\maps\\khac\\trap\\thuccuong-tiencucdong3.lua")
	end	

	Count = getn(TIENCUCDONG_THUCCUONG1)
	for i=1,Count do
	AddTrap(TIENCUCDONG_THUCCUONG1[i][1],TIENCUCDONG_THUCCUONG1[i][2]*32,TIENCUCDONG_THUCCUONG1[i][3]*32,"\\script\\maps\\khac\\trap\\tiencucdong-thuccuong1.lua")
	end	

	Count = getn(TIENCUCDONG_THUCCUONG2)
	for i=1,Count do
	AddTrap(TIENCUCDONG_THUCCUONG2[i][1],TIENCUCDONG_THUCCUONG2[i][2]*32,TIENCUCDONG_THUCCUONG2[i][3]*32,"\\script\\maps\\khac\\trap\\tiencucdong-thuccuong2.lua")
	end
	
	Count = getn(TIENCUCDONG_THUCCUONG3)
	for i=1,Count do
	AddTrap(TIENCUCDONG_THUCCUONG3[i][1],TIENCUCDONG_THUCCUONG3[i][2]*32,TIENCUCDONG_THUCCUONG3[i][3]*32,"\\script\\maps\\khac\\trap\\tiencucdong-thuccuong3.lua")
	end
	
--===============================================================	
	
	Count = getn(GIANGTANTHON_THANHDO)
	for i=1,Count do
	AddTrap(GIANGTANTHON_THANHDO[i][1],GIANGTANTHON_THANHDO[i][2]*32,GIANGTANTHON_THANHDO[i][3]*32,"\\script\\maps\\khac\\trap\\giangtan-thanhdo.lua")
	end
	
	Count = getn(THANHDO_GIANGTAN)
	for i=1,Count do
	AddTrap(THANHDO_GIANGTAN[i][1],THANHDO_GIANGTAN[i][2]*32,THANHDO_GIANGTAN[i][3]*32,"\\script\\maps\\khac\\trap\\thanhdo-giangtan.lua")
	end
	
	Count = getn(BALANGHUYEN_NAMNHACTRAN)
	for i=1,Count do
	AddTrap(BALANGHUYEN_NAMNHACTRAN[i][1],BALANGHUYEN_NAMNHACTRAN[i][2]*32,BALANGHUYEN_NAMNHACTRAN[i][3]*32,"\\script\\maps\\khac\\trap\\balang-namnhac.lua")
	end

	Count = getn(NAMNHAC_BALANG)
	for i=1,Count do
	AddTrap(NAMNHAC_BALANG[i][1],NAMNHAC_BALANG[i][2]*32,NAMNHAC_BALANG[i][3]*32,"\\script\\maps\\khac\\trap\\namnhac-balang.lua")
	end

	Count = getn(TONGKIM_TUONGDUONG)
	for i=1,Count do
	AddTrap(TONGKIM_TUONGDUONG[i][1],TONGKIM_TUONGDUONG[i][2]*32,TONGKIM_TUONGDUONG[i][3]*32,"\\script\\maps\\khac\\trap\\tongkim-tuongduong.lua")
	end

	Count = getn(TUONGDUONG_TONGKIM)
	for i=1,Count do
	AddTrap(TUONGDUONG_TONGKIM[i][1],TUONGDUONG_TONGKIM[i][2]*32,TUONGDUONG_TONGKIM[i][3]*32,"\\script\\maps\\khac\\trap\\tuongduong-tongkim.lua")
	end

	Count = getn(DUOCVUONG_LONGMON)
	for i=1,Count do
	AddTrap(DUOCVUONG_LONGMON[i][1],DUOCVUONG_LONGMON[i][2]*32,DUOCVUONG_LONGMON[i][3]*32,"\\script\\maps\\khac\\trap\\duocvuong-longmon.lua")
	end	

	Count = getn(LONGMON_DUOCVUONG)
	for i=1,Count do
	AddTrap(LONGMON_DUOCVUONG[i][1],LONGMON_DUOCVUONG[i][2]*32,LONGMON_DUOCVUONG[i][3]*32,"\\script\\maps\\khac\\trap\\longmon-duocvuong.lua")
	end	
	
end

function addobjother()
	AddObj(294,53,1347*32,3301*32,"\\script\\maps\\khac\\obj\\vulangson.lua",1)
    AddObj(296,70,1589*32,3202*32,"\\script\\maps\\khac\\obj\\balanghuyen.lua",1)
	AddObj(294,121,1720*32,4264*32,"\\script\\maps\\khac\\obj\\longmon.lua",1)
	AddObj(296,340,1864*32,3446*32,"\\script\\maps\\khac\\obj\\macaoquat.lua",1)
	AddObj(296,90,1652*32,3556*32,"\\script\\maps\\khac\\obj\\phucnguu.lua",1)
	AddObj(297,78,1644*32,2999*32,"\\script\\maps\\khac\\obj\\tuongduong.lua",1)
	AddObj(294,174,1716*32,2949*32,"\\script\\maps\\khac\\obj\\dauhieulongtuyen.lua",1)
	AddObj(295,121,1709*32,4379*32,"\\script\\maps\\khac\\obj\\dauhieu.lua",1)
	AddObj(294,162,1281*32,3259*32,"\\script\\maps\\khac\\obj\\cotdaily.lua",1)
	AddObj(297,167,1598*32,3216*32,"\\script\\maps\\khac\\obj\\cotdiemthuong.lua",4)
	AddObj(8,56,1506*32,3448*32,"\\script\\maps\\khac\\obj\\dauhieuhoanhson.lua",2)
	AddObj(295,56,1488*32,3534*32,"\\script\\maps\\khac\\obj\\dauhieuhoanhson.lua",1)
	AddObj(297,54,1618*32,2965*32,"\\script\\maps\\khac\\obj\\dauhieuhoanhson.lua",1)
	AddObj(295,11,2721*32,5315*32,"\\script\\maps\\khac\\obj\\dauhieuthanhdo.lua",1)
    AddObj(297,9,2408*32,5532*32,"\\script\\maps\\khac\\obj\\dauhieutruonggiang.lua")
	AddObj(295,7,2252*32,2840*32,"\\script\\maps\\khac\\obj\\tanlang.lua",1)
    AddObj(296,1,1893*32,3219*32,"\\script\\maps\\khac\\obj\\phuongtuong.lua")	
	AddObj(295,319,1610*32,3597*32,"\\script\\maps\\khac\\obj\\dauhieulamduquan.lua",1)	
	AddObj(297,131,1404*32,2993*32,"\\script\\maps\\khac\\obj\\dauhieukhoailam.lua",1)
	AddObj(295,136,1539*32,3287*32,"\\script\\maps\\khac\\obj\\dauhieukhoailam.lua",1)
	AddObj(294,320,1398*32,2254*32,"\\script\\maps\\khac\\obj\\channuitruongbach.lua",1)
	AddObj(294,322,1581*32,3136*32,"\\script\\maps\\khac\\obj\\truongbachsonbac.lua",1)
	AddObj(296,322,2050*32,4104*32,"\\script\\maps\\khac\\obj\\channuitruongbach1.lua",1)
	AddObj(297,320,1574*32,2323*32,"\\script\\maps\\khac\\obj\\truongbachsonbac1.lua",1)
	AddObj(294,121,1720*32,4264*32,"\\script\\maps\\khac\\obj\\longmon.lua",1)
	AddObj(296,340,1864*32,3446*32,"\\script\\maps\\khac\\obj\\macaoquat.lua",1)
	
end
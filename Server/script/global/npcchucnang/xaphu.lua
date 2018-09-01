--Xa phu dich tram
--Author: Ken Nguyen 2013
--DMEM TEAM

Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
STATION_ARRAY = {
{1 ,1  ,10072},
{2 ,11 ,15647},
{3 ,162,15648},
{4 ,37 ,10072},
{5 ,78 ,15646},
{6 ,80 ,15649},
{7 ,176,10072},
{8 ,20 ,10072},
{9 ,121,10072},
{10,53 ,15652},
{11,54 ,10072},
{12,174,15650},
{13,101,10072},
{14,99 ,10072},
{15,100,10072},
{16,153,15651}
};

GO_DIADOCHI={
{3, 1159, 3715},
{19, 3084, 3975},
{90, 1649, 3567},
{41, 2078, 2804},
{70, 1608, 3230},
{193, 1937, 2851},
{122, 1612, 3328},
{179, 1738, 2559},
{140, 2429, 3731},
{145,1613,3313},
{125,1809,3217},
{9, 2404, 5539},
{56, 1491, 3534},
{7, 2235, 2847},
{224,1628,3211},
{319, 1612, 3612},
{123, 1698, 3363},
{340, 1853, 3446},
{320, 1137, 3151},
{321, 966, 2296},
{322, 2048,4120},
{336, 1112, 3189},
{75, 1671, 3345},
{225,1472,3264},
{226,1557,3177},
{227,1522,3275},
{124, 1672, 3420}
};

TRAIN_ARRAY= {
{3,1129,3718,"KiÕm C¸c [20->30]/selluyen1"},
{70,1608,3230,"Vò L¨ng S¬n [20->30]/selluyen1"},
{90, 1651,3571,"Phôc Ng­u §«ng [30->40]/selluyen1"},
{92,1632,3290,"Thôc C­¬ng S¬n [30->40]/selluyen1"},
{41,2078,2805,"Phôc Ng­u T©y [40->50]/selluyen1"},
{122,1612,3323,"Hoµng Hµ Nguyªn §Çu [40->50]/selluyen1"},
{125,1809,3208,"L­u Tiªn §éng [50->60]/selluyen2"},
{163,1558,3199,"¸c b¸ ®Þa ®¹o [50->60]/selluyen2"},
{9,2405,5540,"Tr­êng Giang [60->70]/selluyen2"},
{56,1493,3530,"Hoµnh S¬n ph¸i [60->70]/selluyen2"},
{319,1630,3592,"L©m Du Quan [70->80]/selluyen3"},
{123,1698,3374,"L·o Hæ §éng [70->80]/selluyen3"},
{224,1621,3214,"Sa M¹c §Þa BiÓu [80->90]/selluyen3"},
{320, 1146,3130,"Ch©n nói Tr­êng B¹ch [80->90]/selluyen3"}
};

NO_PLACE = "Ng­¬i hiÖn kh«ng cã nhiÖm vô nµo cÇn ph¶i ®i!"
function main()
	local curstationid = 0; --id Ba Lang Huyen = 10
	SetTaskTemp(SEL_MOVEARRAY, 0);
	local w,x,y = GetWorldPos();
	for i=1,getn(STATION_ARRAY) do
		if(w == STATION_ARRAY[i][2]) then
		curstationid = i;
		SetTaskTemp(SEL_MOVEARRAY, i);
		end
	end
	
	if(curstationid == 0) then
	return end
	
	if(curstationid < 8) then
	Say(STATION_ARRAY[curstationid][3],7,
	"Nh÷ng n¬i ®· ®i qua/noidiqua",
	"Nh÷ng thµnh thÞ ®· ®i qua/thanhthidiqua",
	"Trë l¹i ®Þa ®iÓm cò /diadiemcu",
	"Khu vùc luyÖn c«ng/khac",
	"§i TÈy Tñy ®¶o/taytuydao",
	"§i ®Õn n¬i lµm nhiÖm vô d· tÈu/datau",
	"Ta kh«ng muèn ®i/out")
	else
	Say(STATION_ARRAY[curstationid][3],6,
	"Nh÷ng n¬i ®· ®i qua/noidiqua",
	"Nh÷ng thµnh thÞ ®· ®i qua/thanhthidiqua",
	"Trë l¹i ®Þa ®iÓm cò /diadiemcu",
	"Khu vùc luyÖn c«ng/khac1",
	"§i ®Õn n¬i lµm nhiÖm vô d· tÈu/datau",
	"Ta kh«ng muèn ®i/out")
	end
end;

function khac()
	Say(10072,9,
	"§i Hoa s¬n c¶nh kü tr­êng/hoason",
	TRAIN_ARRAY[1][4],
	TRAIN_ARRAY[2][4],
	TRAIN_ARRAY[3][4],
	TRAIN_ARRAY[4][4],
	TRAIN_ARRAY[5][4],
	TRAIN_ARRAY[6][4],
	"KÕ /luyencong2",
	"Tho¸t/no")
end;

function luyencong2()
	Say(10072,6,
	TRAIN_ARRAY[7][4],
	TRAIN_ARRAY[8][4],
	TRAIN_ARRAY[9][4],
	TRAIN_ARRAY[10][4],
	"KÕ /luyencong3",
	"Tho¸t/no")
end;

function luyencong3()
	Say(10072,6,
	TRAIN_ARRAY[11][4],
	TRAIN_ARRAY[12][4],
	TRAIN_ARRAY[13][4],
	TRAIN_ARRAY[14][4],
	"Kháa Lang §éng [cÊp 90]/khoalang",
	"Tho¸t/no")
end;

function selluyen1(sel)
	if(GetLevel() < 10) then
	Talk(1,"",15645)--phia truoc nguy hiem
	return end
	local nSel = sel;
	if(NewWorld(TRAIN_ARRAY[nSel][1],TRAIN_ARRAY[nSel][2],
	TRAIN_ARRAY[nSel][3]) == 1) then
		SetFightState(1)
	end
end;

function selluyen2(sel)
	if(GetLevel() < 10) then
	Talk(1,"",15645)--phia truoc nguy hiem
	return end
	local nSel = sel + 7;
	if(NewWorld(TRAIN_ARRAY[nSel][1],TRAIN_ARRAY[nSel][2],
	TRAIN_ARRAY[nSel][3]) == 1) then
		SetFightState(1)
	end
end;

function selluyen3(sel)
	if(GetLevel() < 70) then
	Talk(1,"",15645)--phia truoc nguy hiem
	return end
	local nSel = sel + 11;
	if(NewWorld(TRAIN_ARRAY[nSel][1],TRAIN_ARRAY[nSel][2],
	TRAIN_ARRAY[nSel][3]) == 1) then
		SetFightState(1)
	end
end;

function khoalang()
	if (GetLevel() < 70) then
		Talk(1,"",15645)--phia truoc nguy hiem
	return end
	local w,x,y = GetWayPointPos(74);
	if(NewWorld(w,x,y) == 1) then
		SetFightState(1)
		AddWayPoint(74)
	end
end;

function datau()
	local nTaskValue = GetTask(TASK_DATAU_ACCEPT);
	local bAccept = GetNumber(nTaskValue, 1);--[1]
	local nKind = GetNumber2(nTaskValue, 4);
	if(bAccept == 0) then
		Talk(1,"",NO_PLACE);
	return end
	
	if(nKind ~= 6 and nKind ~= 7) then
		Talk(1,"",NO_PLACE);
	return end
	
	local nMap = GetNumber3(GetTask(TASK_DIADOCHI),1);
	for i=1,getn(GO_DIADOCHI) do
		if(GO_DIADOCHI[i][1] == nMap) then
			if(NewWorld(nMap, GO_DIADOCHI[i][2], GO_DIADOCHI[i][3])) then
				SetFightState(1)
			end
		return end
	end
	
end;

function hoason()
	NewWorld(2,2609,3590) 
end

function thanhthidiqua()
	local count = 0;
	local StationTab = {};
	
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY)
	if(nMoveAR == 0) then
	return end
	
	local price = -1;
	for i=1,getn(STATION_ARRAY) do
		price = GetPriceStation(nMoveAR, i);
		if(price > 0) then
		StationTab[count+1] = GetStationName(i) .. " [" .. price .. " l­îng]" .. "/SelStation";
		SetTaskTemp(SEL_MOVEBEGIN+count,i);
		count = count + 1;
		end
	end
	
	if(count == 0) then
	return end
	
	StationTab[count+1] = "Kh«ng ®i ®©u c¶ /out";
	Say("§¹i hiÖp muèn ®i ®©u:",count+1,StationTab)
end;

function noidiqua()
	p1 = GetWayPoint(1);
	p2 = GetWayPoint(2);
	p3 = GetWayPoint(3);
	WAYPOINT={};
	local i = 1;
	if (p1 ~= 0)  then
	name = GetWayPointName(p1);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	if (p2 ~= 0)  then
	name = GetWayPointName(p2);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	if (p3 ~= 0)  then
	name = GetWayPointName(p3);
	name = name .."/SelWayPoint";
	WAYPOINT[i]= name;
	i = i + 1;
	end;
	
	WAYPOINT[i] = "Kh«ng ®i ®©u c¶ /no";
	if (i == 1) then 
	Talk(1,"",10071);
	else
	Say("H·y lùa chän:", i, WAYPOINT);
	end;
end;

function SelWayPoint(nSel)
	local nWayPoint = GetWayPoint(nSel + 1);
	if (nWayPoint ~= 0) then
	local nW, nX, nY = GetWayPointPos(nWayPoint)
	nFightState = GetWayPointFight(nWayPoint)
	nResult = NewWorld(nW, nX, nY)
	if (nResult == 1) then
	SetFightState(nFightState)
	end
	end
end;

function SelStation(nSel)
	local nMoveAR = GetTaskTemp(SEL_MOVEARRAY);
	local nMoveSel = GetTaskTemp(SEL_MOVEBEGIN+nSel);
	local nPrice = GetPriceStation(nMoveAR, nMoveSel);
	local nMoney = GetCash();
	if(nMoney < nPrice) then
	Talk(1,"",10076);
	else
	local nW , nX, nY = GetStationPos(nMoveSel);
		if(NewWorld(nW, nX , nY ) == 1) then
			Pay(nPrice);
			Msg2Player("Ngåi yªn! Chóng ta ®i "..GetStationName(nMoveSel).."!");
		else --chua mo map
			PutMessage("§­êng ®i phÝa tr­íc kh«ng th«ng")
		end
	end
end;

function diadiemcu()
	BackOldPlace()
end;

function taytuydao()
	if(GetLevel() < 50) then
		Talk(1,"","§¼ng cÊp 50 trë lªn míi ®­îc ®Õn TÈy Tñy ®¶o!")
	return end
	local nValue = GetNumber(GetTask(TASK_DAOTAYTUY),4);
	if(nValue == 0) then
		Say(12243,2,
		"§­a ta ®Õn TÈy Tñy ®¶o/taymienphi",
		"Tho¸t/no")
	return end
	
	Say(12917,4,
	"TÈy ®iÓm kü n¨ng/taykynang",
	"TÈy ®iÓm tiÒm n¨ng/taytiemnang",
	"TÈy ®iÓm kü n¨ng lÉn tiÒm n¨ng/tayall",
	"Tho¸t/no")
	
end;

function taykynang()
	local nTT1 = GetItemCount(13,3)
	local nTT2 = GetItemCount(14,3)
	local nTT3 = GetItemCount(15,3)
	local nTotal = nTT1 + nTT2 + nTT3
	if(nTotal < 3) then
		Talk(1,"","CÇn 3 viªn Thñy Tinh. Ng­¬i kh«ng mang ®ñ råi!")
	return end
	local w,x,y = GetWorldPos()
	nTotal = 3;
	if(NewWorld(242,1613,3197) == 1) then
		for i=1,3 do
			if(nTotal > 0 and nTT1 > 0) then
			DelItem(13,3)
			nTotal = nTotal - 1
			nTT1 = nTT1 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT2 > 0) then
			DelItem(14,3)
			nTotal = nTotal - 1
			nTT2 = nTT2 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT3 > 0) then
			DelItem(15,3)
			nTotal = nTotal - 1
			nTT3 = nTT3 - 1
			end
		end
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),7,1);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function taytiemnang()
	if(GetItemCount(20,3) < 6) then
		Talk(1,"","CÇn 6 viªn Tinh Hång b¶o th¹ch. Ng­¬i kh«ng mang ®ñ råi!")
	return end
	local w,x,y = GetWorldPos()
	if(NewWorld(242,1613,3197) == 1) then
		DelItem(20,3,6)
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),7,2);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function tayall()
	local nTT1 = GetItemCount(13,3)
	local nTT2 = GetItemCount(14,3)
	local nTT3 = GetItemCount(15,3)
	local nTotal = nTT1 + nTT2 + nTT3
	local nTHBT = GetItemCount(20,3)
	if(nTotal < 3 or nTHBT < 6) then
		Talk(1,"","CÇn 3 Thñy tinh vµ 6 Tinh Hång b¶o th¹ch. Ng­¬i kh«ng mang ®ñ råi!")
	return end
	local w,x,y = GetWorldPos()
	nTotal = 3
	if(NewWorld(242,1613,3197) == 1) then
		DelItem(20,3,6)
		for i=1,3 do
			if(nTotal > 0 and nTT1 > 0) then
			DelItem(13,3)
			nTotal = nTotal - 1
			nTT1 = nTT1 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT2 > 0) then
			DelItem(14,3)
			nTotal = nTotal - 1
			nTT2 = nTT2 - 1
			end
		end
		for i=1,3 do
			if(nTotal > 0 and nTT3 > 0) then
			DelItem(15,3)
			nTotal = nTotal - 1
			nTT3 = nTT3 - 1
			end
		end
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),7,0);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function taymienphi()
	local w,x,y = GetWorldPos()
	if(NewWorld(242,1613,3197) == 1) then
		local nValue = SetNumber(GetTask(TASK_DAOTAYTUY),4,1);
		nValue = SetNumber(nValue,7,0);
		nValue = SetNumber2(nValue,3,GetCurRevID());
		nValue = SetNumber3(nValue,1,w);
		SetTask(TASK_DAOTAYTUY, nValue);
		SetRevPos(1,242) --diem phuc sinh tren dao tay tuy
		Msg2Player("Ngåi yªn. Chóng ta ®i TÈy Tñy ®¶o!");
	end
end

function out()
	Talk(1,"",10084)
end;

function khac1()
  Talk(1, "", "T­¬ng D­¬ng vµ BiÖn Kinh luyÖn cÊp[10->20].")
end
function no()
end;
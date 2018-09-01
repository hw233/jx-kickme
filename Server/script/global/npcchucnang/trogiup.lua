
--||Author:	Ken Nguyen
Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\testgame.lua");
Include("\\script\\header\\nhanhotro.lua");
Include("\\script\\item\\\\tools\\tool0059.lua");
Include("\\script\\global\\npcchucnang\\phantang.lua");--cong tiem nang

NOT_LEVEL = "B¹n cÇn ph¶i ®¹t %d cÊp ®Ó nhËn th­ëng!"
--NEED_EMPTY = "Xin s¾p xÕp hµnh trang 6x6 « trèng"
ALREADY = "B¹n ®· nhËn tr­íc ®©y råi."

function main()
	Say2(15277,4,1,"",
	--"NhËn hç trî t©n thñ./hotronew",
	--"NhËn th­ëng ®ua top/duatop",
	"Chøc n¨ng Admin/chucnangadm",
	--"NhËn hç trî /test",
	"NhËn trang bÞ xanh/xanhtest",
	--"Th­ëng cÊp 30/selthuong",
	--"Th­ëng cÊp 50/selthuong",
	--"Th­ëng cÊp 70/selthuong",
	--"Th­ëng cÊp 90/selthuong",
	--"Th­ëng cÊp 90/selthuong",
	"NhËn th­ëng cÊp 130/thuongvkhk",
	"KÕt thóc ®èi tho¹i/no")
end

function chucnangadm()
	Say2(15277,3,1,"",
	"NhËn §iÓm/nhandiem",
	"Mäi Thø Kh¸c/layvatphamkhac",
	"KÕt thóc ®æi tho¹i/no")
end

function layvatphamkhac()
	Say2(15277,4,1,"",
	"NhËn THBH-TT/thuytinh",
	"NhËn kü n¨ng/kynangtest",
	"NhËn nguyªn liÖu/khamtest",
	"KÕt thóc ®æi tho¹i/no")
end

function nhandiem()
	Say2(15277,3,1,"",
		"TiÒn/loaimoney",
		"T¨ng kinh nghiÖm/addexp",
		"KÕt thóc ®æi tho¹i/no")
end

function loaimoney()
	Say2(15277,3,1,"",
		"TiÒn V¹n/money",	
		"TiÒn Xu/xu",
		"KÕt thóc ®æi tho¹i/no")
end

function money()
	Earn(900000000)
	Msg2Player("B¹n nhËn ®­îc <color=green>90.000 v¹n l­îng.")
end

function xu()
	AddCoin(500000)
	Msg2Player("B¹n nhËn ®­îc <color=green>500000 xu.")
end

function addexp()
	SetLevel(200)
end

function kynangtest()
	local f = GetFactionNo();
	if(f < 0 or f > 9) then
	Msg2Player("B¹n ch­a gia nhËp m«n ph¸i!")
	return end
	f = f +1;
	for i =1,getn(SKILL90_ARRAY[f]) do
		if(SKILL90_ARRAY[f][i][3] > 0) then
		AddMagic(SKILL90_ARRAY[f][i][2],20);
		else
		AddMagic(SKILL90_ARRAY[f][i][2],0);
		end
	end
	AddMagic(SKILL120AR[f],20);
	Talk(1,"","B¹n ®· cã ®­îc tÊt c¶ kü n¨ng m«n ph¸i!");
end;

function test()
	local nTaskValue = GetTask(TASK_TANTHU);
	if(GetNumber(nTaskValue,4) > 0) then
		Talk(1, "", ALREADY)
	return end
	if(CheckRoom(6,9) == 0) then
		Talk(1, "", 12266)
	return end
	SetTask(TASK_TANTHU, SetNumber(nTaskValue,4,1));
	if(GetSex() == 0) then
	AddItem(0,5,2,0,0,5,0,0)--hiepcot
	else
	AddItem(0,5,25,0,0,5,0,0)--nhutinh
	end
	for i=16,24 do
	AddItem(0,5,i,0,0,5,0,0)--abdq
	end
	
	AddItem(0,5,13,0,0,5,0,0)--bontieu
	AddItem(0,2,9,0,0,5,0,0)--tdp
	AddItem(0,2,10,0,0,5,0,0)--thp
	
	AddItem(0,2,2,0,0,5,50,0)--phuc duyen
	AddItem(0,2,2,0,0,5,50,0)--phuc duyen
	Earn(10000000);
	AddRepute(500);
	AddLeadExp(5200000)
	SetLevel(150);
	AddQuestKey(1)
end;

function duatop()
	if(GetLevel() < 120) then
		Talk(1, "", format(NOT_LEVEL,120))
	return end
	local nTaskValue = GetTask(TASK_TANTHU);
	if(GetNumber(nTaskValue,3) > 0) then
		Talk(1, "", ALREADY)
	return end
	local nDone = GetDataInt(DATA_DUATOP);
	if(nDone >= 10) then
		Talk(1, "", 10288)
	return end
	if(CheckRoom(6,9) == 0) then
		Talk(1, "", 12266)
	return end
	nDone = nDone+1
	SetDataInt(DATA_DUATOP, nDone);
	SetTask(TASK_TANTHU, SetNumber(nTaskValue,3,1));
	Talk(1, "", 10289)
	Msg2SubWorld(format("<color=green>%s <color>nhËn th­ëng h¹ng <color=yellow>%d",GetName(), nDone));
	nhanvatpham(nDone);
	SaveDataFile();
end;

function nhanvatpham(nNo)
	if(nNo > 0 and nNo < 11) then
		for i=1,getn(ITEM_AWARDS[nNo]) do
		local nId = ItemSetAdd(
							ITEM_AWARDS[nNo][i][1],
							ITEM_AWARDS[nNo][i][2],
							ITEM_AWARDS[nNo][i][3],
							ITEM_AWARDS[nNo][i][4],
							ITEM_AWARDS[nNo][i][5],
							ITEM_AWARDS[nNo][i][6],
							ITEM_AWARDS[nNo][i][7]
		);
			if(ITEM_AWARDS[nNo][i][8] > 0) then
			LockItem(nId,ITEM_AWARDS[nNo][i][8]);
			end
			if(ITEM_AWARDS[nNo][i][9] > 0) then
			SetItemDate(nId,ITEM_AWARDS[nNo][i][9]);
			end
			AddItemID(nId);
		end
		SetRankEx(RANK_AWARDS[nNo],1);
		SetTask(TASK_THOIGIAN4,GetTimeMin()+21600);
	end
end;

function hotronew()
	--if(GetLevel() < 10) then
	--	Talk(1, "", "B¹n luyÖn ®Õn cÊp 10 h·y quay l¹i nhËn.")
	--return end
	local nSel = GetFactionNo()
	if(nSel < 0 or nSel > 9) then
		Talk(1, "", "B¹n ch­a gia nhËp m«n ph¸i.")
	return end
	if(CheckRoom(6,9) == 0) then
		Talk(1, "", 12266)
	return end
	nSel = nSel + 1;
	local nValue = GetTask(TASK_TANTHU)
	if(GetNumber(nValue,1) > 0) then
		Talk(1, "", ALREADY)
	return end
	SetTask(TASK_TANTHU, SetNumber(nValue,1,1));
	local nIndex = ItemSetAdd(0,2,10,0,0,5,0);--than hanh phu
	if(nIndex > 0) then
		LockItem(nIndex)--khoa bao hiem vinh vien
		SetItemDate(nIndex,43200)--30 ngay
		AddItemID(nIndex)
    end
	nIndex = ItemSetAdd(0,2,9,0,0,5,0);--tho dia phu
	if(nIndex > 0) then
		LockItem(nIndex)--khoa bao hiem vinh vien
		SetItemDate(nIndex,43200)
		AddItemID(nIndex)
    end
	for i=1,12 do
		nIndex = ItemSetAdd(0,2,45,0,0,5,0);--tien thao lo
		if(nIndex > 0) then
			LockItem(nIndex)--khoa bao hiem vinh vien
			AddItemID(nIndex)
		end
	end
	nIndex = ItemSetAdd(0,0,10,6,10,0,0);--bontieu
		LockItem(nIndex)--khoa bao hiem vinh vien
		SetItemDate(nIndex,43200)
		AddItemID(nIndex)
	nIndex = ItemSetAdd(2,0,163,0,0,0,8);--an bang
		LockItem(nIndex)--khoa bao hiem vinh vien
		AddItemID(nIndex)
	nIndex = ItemSetAdd(2,0,164,0,0,0,8);--an bang
		LockItem(nIndex)--khoa bao hiem vinh vien
		AddItemID(nIndex)
	nIndex = ItemSetAdd(2,0,165,0,0,0,8);--an bang
		LockItem(nIndex)--khoa bao hiem vinh vien
		AddItemID(nIndex)
	nIndex = ItemSetAdd(2,0,166,0,0,0,8);--an bang
		LockItem(nIndex)--khoa bao hiem vinh vien
		AddItemID(nIndex)
	for i =1,getn(SKILL90_ARRAY[nSel]) do
		if(GetMagicLevel(SKILL90_ARRAY[nSel][i][2]) < 0) then
		AddMagic(SKILL90_ARRAY[nSel][i][2],SKILL90_ARRAY[nSel][i][3]);
		end
	end
	if(GetMagicLevel(SKILL120_ARRAY[nSel][2]) < 0) then
	AddMagic(SKILL120_ARRAY[nSel][2],1);
	end
	if(GetLevel() < 120) then
	SetLevel(120);
	end
end;

NEED_6X5 = "Hµnh trang ph¶i cã 6x5 « trèng (5 hµng)"

function selthuong(sel)
	local nTaskVal = GetTask(TASK_TANTHU);
	if(sel == 2) then
		if(GetLevel() < 30) then
		Talk(1, "", format(NOT_LEVEL,30))
		return end
		if(GetNumber(nTaskVal,5) > 0) then
		Talk(1, "", ALREADY)
		return end
		if(CheckRoom(6,5) == 0) then
		Talk(1, "", NEED_6X5);
		return end
		SetTask(TASK_TANTHU, SetNumber(nTaskVal,5,1));
		AddItem(2,0,176,0,0,0,5,0);
		AddItem(2,0,177,0,0,0,5,0);
		AddItem(0,0,10,2,3,0,0,0);
	elseif(sel == 3) then
		if(GetLevel() < 50) then
		Talk(1, "", format(NOT_LEVEL,50))
		return end
		if(GetNumber(nTaskVal,6) > 0) then
		Talk(1, "", ALREADY)
		return end
		if(CheckRoom(6,5) == 0) then
		Talk(1, "", NEED_6X5);
		return end
		SetTask(TASK_TANTHU, SetNumber(nTaskVal,6,1));
		AddItem(2,0,181,0,0,0,5,0);
		AddItem(2,0,182,0,0,0,5,0);
		AddItem(2,0,183,0,0,0,5,0);
		AddItem(2,0,184,0,0,0,5,0);
	elseif(sel == 4) then
		if(GetLevel() < 70) then
		Talk(1, "", format(NOT_LEVEL,70))
		return end
		if(GetNumber(nTaskVal,7) > 0) then
		Talk(1, "", ALREADY)
		return end
		if(CheckRoom(6,5) == 0) then
		Talk(1, "", NEED_6X5);
		return end
		SetTask(TASK_TANTHU, SetNumber(nTaskVal,7,1));
		AddItem(2,0,178,0,0,0,5,0);
		AddItem(2,0,179,0,0,0,5,0);
		AddItem(2,0,180,0,0,0,5,0);
		for i=1,20 do
		local id = ItemSetAdd(0,2,3,0,0,5,0);
		LockItem(id);
		AddItemID(id);
		end
	elseif(sel == 5) then
		if(GetLevel() < 90) then
		Talk(1, "", format(NOT_LEVEL,90))
		return end
		if(GetNumber(nTaskVal,8) > 0) then
		Talk(1, "", ALREADY)
		return end
		if(CheckRoom(6,5) == 0) then
		Talk(1, "", NEED_6X5);
		return end
		SetTask(TASK_TANTHU, SetNumber(nTaskVal,8,1));
		for i=1,12 do
		local id = ItemSetAdd(0,2,45,0,0,5,0);--tien thao lo
		LockItem(id)--khoa bao hiem vinh vien
		AddItemID(id)
		end
	end
end;

function thuongvkhk()
	local nSel = GetFactionNo()
	if(nSel < 0 or nSel > 9) then
		Talk(1, "", "B¹n ch­a gia nhËp m«n ph¸i.")
	return end
	if(GetLevel() < 130) then
		Talk(1, "", format(NOT_LEVEL,130))
	return end
	if(CheckRoom(6,5) == 0) then
		Talk(1, "", 12266)
	return end
	nSel = nSel + 1;
	local nValue = GetTask(TASK_TANTHU)
	if(GetNumber(nValue,9) > 0) then
		Talk(1, "", ALREADY)
	return end
	SetTask(TASK_TANTHU, SetNumber(nValue,9,1));
	local id;
	for i=1,getn(ITEM_FAC[nSel]) do
		id = ItemSetAdd(	ITEM_FAC[nSel][i][1],
									ITEM_FAC[nSel][i][2],
									ITEM_FAC[nSel][i][3],
									ITEM_FAC[nSel][i][4],
									ITEM_FAC[nSel][i][5],
									ITEM_FAC[nSel][i][6],
									ITEM_FAC[nSel][i][7]);
		LockItem(id)--khoa bao hiem vinh vien
		AddItemID(id)
	end
end;

function thuytinh()
AddItem(0,3,13,0,0,5,0,0)
AddItem(0,3,14,0,0,5,0,0)
AddItem(0,3,15,0,0,5,0,0)
AddItem(0,3,20,0,0,5,0,0)
AddItem(0,3,20,0,0,5,0,0)
AddItem(0,3,20,0,0,5,0,0)
AddItem(0,3,20,0,0,5,0,0)
AddItem(0,3,20,0,0,5,0,0)
AddItem(0,3,20,0,0,5,0,0)
end
 
function no()
end;

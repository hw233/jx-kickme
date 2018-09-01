Include("\\script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
SKILLNORMAL = {
[1]={--thieu lam
	{14	, 0}, ---Han Long Bat Vu
    {10	, 0}, --- Kim Cang Phuc Ma
    {4		, 0}, --- Thieu Lam Con Phap
    {6		, 0}, --- Thieu Lam Dao Phap
    {8		, 0}, --- Thieu Lam Quyen Phap
    {15	, 0}, --- Bat Dong Minh Vuong
    {16	, 0}, --- La Han Tran
    {20	, 0}, --- Su Tu Hong
    {271	, 0}, --- Long Trao ho trao
    {11	, 0}, --- Hoanh Tao Luc Hop
    {19	, 0}, --- Ma Ha Vo Luong
    {21	, 0}, --- Dich Can Kinh
    {273	, 0} --- Nhu Lai Thien Diep-Tran phai
},
[2]={--thien vuong
    {34, 0}, --- Kinh loi Tram
    {30, 0}, --- Hoi Phong Lac Nhan
    {29, 0}, --- Tram Long Quyet
    {24, 0}, --- Thien Vuong Dao phap
    {23, 0}, --- Thien Vuong Thuong phap
    {26, 0}, ---Thien Vuong Chuy phap
    {33, 0}, ---Tinh Tam Quyet
    {37, 0}, ---Bat Phong Tram
    {35, 0}, ---Duong Quang Tam Diep
    {31, 0}, ---Hang Van Quyet
    {40, 0}, ---Doan Hon Thich
    {42, 0}, ---Kim Chung Trao
    {32, 0}, --- Vo Tam Tram
    {41, 0}, --- Huyet Chien Bat Phuong
    {324, 0}, ---Thua Long Quyet
    {36	, 0} ---Thien Vuong Chien Y -Tran phai
},
[3]={--duong mon
    {45	, 0}, ---Phich Lich Don
    {347	, 0}, ---Dia Diem Hoa
    {43	, 0}, ---Duong Mon Am Khi
    {303	, 0}, ---Doc Thich Cot
    {50	, 0}, ---Truy Tam Tien
    {47	, 0}, ---Doat Hon Tieu
    {54	, 0}, ---Man Thien Hoa Vu
    {343	, 0}, ---Xuyen Tam Thich
    {345	, 0}, ---Han Bang Thich
    {349	, 0}, ---Loi Kich Thuat
    {249	, 0}, ---Tieu Ly Phi Dao
    {341	, 0}, ---Tan Hoa Tieu
    {58	, 0}, ---Thien La Dia Vong
    {48	, 0} ---Tam Nhan - tran phai
},
[4]={--ngu doc
    {63, 0}, ---Doc Sa Chuong
    {65, 0}, ---Huyet Dao Doc Sat
    {62, 0}, ---Ngu Doc Chuong Phap
    {60, 0}, ---Ngu Doc Dao phap
    {67, 0}, ---Cuu Thien Cuong Loi
    {70, 0}, ---Xich Diem Thuc Thien
    {66, 0}, ---Tap Nan Duoc kinh
    {68, 0}, ---U Minh Kho Lau
    {384,0}, ---Bach Doc Xuyen Tam
    {64	, 0}, ---Bang Lam Huyen Tinh
    {69	, 0}, ---Vo Hinh Doc
    {356	, 0}, ---Xuyen Y Pha Giap
    {73	, 0}, ---Van Co Thuc Tam
    {72	, 0}, ---Xuyen Tam Doc Thich
    {71	, 0}, ---Thien Cuong Dia Sat
    {74	, 0}, ---Chu Cap Thanh Minh
    {75	, 0} ---Ngu Doc Ky Kinh - tran phai
},
[5]={--nga my
    {85, 0}, ---Nhat Diep Tri Thu
    {80, 0}, --- Phieu Tuyet Xuyen Van
    {77, 0}, ---Nga My Kiem Phap
    {79, 0}, ---Nga My Chuong Phap
    {93, 0}, ---Tu Hang Pho Do
    {385,0}, ---Thoi Song Vong Nguyet
    {82, 0}, ---Tu Tuong Dong Quy
    {89, 0}, ---Mong Diep
    {86, 0}, ---Luu Thuy
    {92, 0}, ---Phat Tam Tu Huu
    {88, 0}, --- Bat Diet Bat Tuyet
    {91, 0}, --- Phat Quang Pho Chieu
    {282,0}, ---Thanh Am Phan Xuong
    {252,0} ---Phat Phap Vo Bien - tran phai
},
[6]={--thuy yen
    {99	, 0}, -- Phong Hoa Tuyet Nguyet
    {102	, 0}, -- Phong Quyen Tan Tuyet
    {95	, 0}, -- Thuy Yen Dao Phap
    {97	, 0}, -- Thuy Yen Song Dao
    {269	, 0}, -- Bang Tam Trai Anh
    {105	, 0}, -- Vu Da Le Hoa
    {113	, 0}, -- Phu Van Tan Tuyet
    {100	, 0},	-- Ho The Han Bang
    {109	, 0}, -- Tuyet Anh
    {108	, 0},	-- Muc Da Luu Tinh
    {111	, 0}, -- Bich Hai Trieu Sinh
    {114	, 0} -- Bang Cot Tuyet Tam - tran phai
},
[7]={--cai bang
    {122,0}, ---Kien Nhan Than Thu
    {119,0}, ---Dieu mon Thac Bat
    {116,0}, ---Cai Bang Chuong Phap
    {115,0}, ---Cai Bang Bong Phap
    {129,0}, ---Hoa Hiem Vi Di
    {274,0}, ---Giang Long Chuong
    {124,0}, ---Da Cau Tran (Da cau bong phap)
    {277,0}, ---Hoat Bat Luu Thu
    {128,0}, ---Khang Long Huu Hoi
    {125,0}, ---Bong Da Ac Cau
    {360,0}, ---Tieu Dieu Cong
    {130,0} ---Tuy Diep Cuong Vu -tran phai
},
[8]={--thien nhan
    {135,0}, ---Tan Duong Nhu Huyet
    {145,0}, ---Don Chi Liet Diem
    {132,0}, ---Thien Nhan Mau Phap
	{131,0}, ---Thien Nhan Dao Phap
	{136,0}, ---Hoa lien Phan Hoa
	{137,0}, ---Ao Anh Phi Ho
	{141,0}, ---Liet Hoa Tinh Thien
	{138,0}, ---Thoi Son Dien Hai
	{140,0}, ---Phi Hong Vo Tich
	{364,0}, ---Bi To Thanh Phong
	{143,0}, ---Lich Ma Doat Hon
	{142,0}, ---Thau Thien Hoan Nhat
	{148,0}, ---Ma Diem That Sat
	{150,0} ---Thien Ma Giai The -tran phai
},
[9]={--vo dang
	{153,0}, ---No Loi Chi
	{155,0}, ---Thuong Hai Minh Nguyet
	{152,0}, ---Vo Dang Quyen Phap
	{151,0},---Vo Dang Kiem Phap
	{159,0},---That Tinh Tran
	{164,0},---Bac Cap Nhi Phuc
	{158,0},---Kiem Phi Kinh Thien
	{160,0},---The Van Tung
	{157,0},---Toa Vong Vo Nga
	{165,0},---Vo Nga Vo Kiem
	{267,0},---Tam Hoan Thao Nguyet
	{166,0}---Thai Cuc Than Cong - tran phai
},
[10]={--con lon
	{169,0}, ---Ho Phong Phap
	{179,0},---Cuong Loi Chan Dia
	{167,0},---Con Lon Dao Phap
	{168,0},---Con Lon Kiem Phap
	{392,0},---Thuc Phuoc Chu
	{171,0},---Thanh Phong Phu
	{174,0},---Ki Ban Phu
	{178,0},---Nhat Khi Tam Thanh
	{172,0},---Thien Te Tan Loi
	{393,0},---Bac Minh Dao Hai
	{173,0},---Thien Thanh Dia Troc
	{175,0},---Khi Han Ngao Tuyet
	{181,0},---Khi Tam Phu
	{176,0},---Cuong Phong Sau Dien
	{90,  0},---Me Tung Ao Anh
	{182,0},---Ngu Loi Chanh Phap
	{275,0},---Suong Ngao Con Luan - tran phai
	{630,0}---Huyen Thien Vo cuc
}
};

SKILL90_ARRAY={
[1]={
	{"§¹t Ma §é Giang",318,1},
	{"Hoµnh T¶o Thiªn Qu©n",319,1},
	{"V« T­íng Tr¶m",321,1}
},
[2]={
	{"Ph¸ Thiªn Tr¶m",322,1},
	{"Truy Tinh Trôc NguyÖt",323,1},
	{"Truy Phong QuyÕt",325,1}
},
[3]={
	{"NhiÕp Hån NguyÖt ¶nh",339,1},
	{"Cöu Cung Phi Tinh",342,1},
	{"B¹o Vò Lª Hoa",302,1},
	{"Lo¹n Hoµn KÝch",351,0}
},
[4]={
	{"¢m Phong Thùc Cèt",353,1},
	{"HuyÒn ¢m Tr¶m",355,1},
	{"§o¹n C©n Hñ Cèt",390,0}
},
[5]={
	{"Tam Nga TÒ TuyÕt",328,1},
	{"Phong S­¬ng To¸i ¶nh",380,1},
	{"Phæ §é Chóng Sinh",332,0}
},
[6]={
	{"B¨ng Tung V« ¶nh",336,1},
	{"B¨ng T©m Tiªn Tö ",337,1}
},
[7]={
	{"Phi Long T¹i Thiªn",357,1},
	{"Thiªn H¹ V« CÈu",359,1}
},
[8]={
	{"V©n Long KÝch",361,1},
	{"Thiªn Ngo¹i L­u Tinh",362,1},
	{"NhiÕp Hån Lo¹n T©m",391,0}
},
[9]={
	{"Thiªn §Þa V« Cùc",365,1},
	{"Nh©n KiÕm Hîp NhÊt",368,1}
},
[10]={
	{"Ng¹o TuyÕt Tiªu Phong",372,1},
	{"L«i §éng Cöu Thiªn",375,1},
	{"Tóy Tiªn T¸ Cèt",394,0}
}
};

SKILL120AR=
{
	709,708,710,711,712,713,714,715,716,717
};

FACTION_PROP={
{35,25,25,15},
{20,35,20,25},
{25,25,25,25},
{30,20,30,20},
{20,15,25,40}
};

SERIES_BASE={
{16,204,100},
{77,103,100},
{77,153,100},
{41,213,100},
{163,76,100}
};

COMMON_XUATSU="§¼ng cÊp cña ng­¬i ch­a ®¹t 50. Ch­a ®ñ søc ra giang hå ®©u..."
WANNA_GO = "Ta muèn xuÊt s­ /xuongnui"
WANNA_90 = "Häc kü n¨ng cÊp 90/kynang90"
WANNA_JOIN = "ChuyÓn ®æi m«n ph¸i/checknhap"
WANNA_CHANGE = "ChuyÓn ®æi m«n ph¸i kh¸c/checkthoat"
ENDTALK = "KÕt thóc ®èi tho¹i/no"
THINK = "§Ó ta suy nghÜ l¹i/no"
function xuongnui()
	if(GetLevel() < 50) then
	Talk(1,"",COMMON_XUATSU)
	return end
	LeaveTeam()
	SetCamp(xuatsu)
	SetCurCamp(xuatsu)
	local str = GetName().." xuÊt s­ thµnh c«ng, b¸i biÖt ch­ vÞ ®ång m«n phiªu b¹t giang hå!";
	Msg2Player(str);
end;

function addskill_thuong(nNo)
    --AddMagic(210,1);
	for i=1,getn(SKILLNORMAL[nNo]) do
    AddMagic(SKILLNORMAL[nNo][i][1],SKILLNORMAL[nNo][i][2])
	end
end;

function show_kynang90(nNo)
	if(GetNumber(GetTask(TASK_TANTHU),2) > 0) then
		Talk(1,"",14747)
	return end
	local nskillcount = getn(SKILL90_ARRAY[nNo])
	if(GetLevel() < 80) then
		Talk(1,"",14576)
	return end
	local skilltab = {};
	local count = 1;
	for i=1,nskillcount do
		skilltab[count] = SKILL90_ARRAY[nNo][i][1].."/selskill";
		count = count + 1;
	end
	if(count == 1) then
	return end
	skilltab[count] = "§ãng/no";
	SetTaskTemp(SELSKILLNO, nNo);
	Say("Ng­¬i muèn häc kü n¨ng nµo:",count,skilltab);
	
end;

function selskill(sel)
	local nSel = sel + 1;
	local nNo = GetTaskTemp(SELSKILLNO);
	if(GetMagicLevel(SKILL90_ARRAY[nNo][nSel][2]) >= 0) then
			Talk(1,"",15467)
	return end
	SetTask(TASK_TANTHU,SetNumber(GetTask(TASK_TANTHU),2,1));
	AddMagic(SKILL90_ARRAY[nNo][nSel][2],SKILL90_ARRAY[nNo][nSel][3]);
	local str = "B¹n ®· häc ®­îc kü n¨ng "..SKILL90_ARRAY[nNo][nSel][1];
	Msg2Player(str);
end;

function checknhap()
	if(GetNumber(GetTask(TASK_TAYTUYKINH),7) < 1) then
	Talk(1,"",11440)
	return end
	Say(11561,2,"Ta chÊp nhËn/chuyenphai",THINK)
end;

function checkthoat()
	if(GetNumber(GetTask(TASK_TAYTUYKINH),7) < 1) then
	Say(12914,2,"Giao tÝn vËt/giaotinvat",THINK)
	return end
	Talk(1,"",12995)
end;

function giaotinvat()
	PutItem("Trao cho ta tÝn vËt ®Ó ®em vÒ b¸o l¹i ch­ëng m«n","y/checktinvat","n/no")
end;

function checktinvat()
	local i,j, nIndex,kind,genre,detail,parti,level,series,row;
	local nRealIndex = 0;
	local count = 0;
	for i=0,5 do
		for j=0,3 do
		nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
		if (nIndex > 0) then
			count = count + 1;
			if( genre == 4 and detail == 63) then
				nRealIndex = nIndex;
			end
		end
		end
	end
	if(count > 1) then
		Talk(1,"",13010)	--dat vao qua nhieu thu
	return end
	if(nRealIndex <= 0) then
		Talk(1,"",13012)	--ko co tin vat
	return end
	RemoveItem(nRealIndex,1);
	SetTask(TASK_TAYTUYKINH, SetNumber(GetTask(TASK_TAYTUYKINH),7,1));
	Msg2Player("Trao tÝn vËt m«n ph¸i. B¹n ®· cã thÓ chuyÓn ®æi m«n ph¸i mµ m×nh lùa chän.")
end;

function common_change(newseries,newfac,rank,camp,curfac)
	if(GetTongName() ~= "") then
	return end
	if(CheckRoom(2,2) == 0) then
	Talk(1,"",12265)
	return end
	if(GetLevel() < 80) then
	Talk(1,"",13013)
	return end
	for i=0,14 do
		local nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(2,i,0);
		if(nIndex > 0) then
		Talk(1,"",13014)
		return end
	end
	SetTask(TASK_TAYTUYKINH,SetNumber(GetTask(TASK_TAYTUYKINH),7,0));
	local kc = GetMagicLevel(210);
	local lv = GetLevel();
	local ex = GetExp();
	local nNo = curfac+1;
	local nNewNo = newfac+1;
	local lv120 = GetMagicLevel(SKILL120AR[nNo]);
	local total9x = getn(SKILL90_ARRAY[nNo]);
	for i=1,total9x do
		local templv = GetMagicLevel(SKILL90_ARRAY[nNo][i][2])
		if(SKILL90_ARRAY[nNo][i][3] > 0 and templv > 1) then
		local nid = ItemSetAdd(0,2,84,0,templv,5,0)
		SetItemDate(nid,1440);
		LockItem(nid)
		AddItemID(nid)
		end
	end
	local nArray = newseries+1;
	ResetProp(0);
	ResetMagicPoint(0);
	SetFactionNo(newfac);
	SetCamp(camp);
	SetRank(rank);
	SetLevel(1,0);
	SetSeries(newseries);
	SetStrg(FACTION_PROP[nArray][1])
	SetDex(FACTION_PROP[nArray][2])
	SetVit(FACTION_PROP[nArray][3])
	SetEng(FACTION_PROP[nArray][4])
	SetMana(SERIES_BASE[nArray][1])
	SetLife(SERIES_BASE[nArray][2])
	SetStamina(SERIES_BASE[nArray][3])
	SetLevel(lv,0);
	AddProp(-(lv-1)*5);
	AddMagicPoint(-(lv-1));
	AddOwnExp(ex);
	ClearSkill();
	AddMagic(53,1)
	AddMagic(1,1)
	AddMagic(2,1)
	if(kc > 0) then
	AddMagic(210,1)
	end
	addskill_thuong(nNewNo)
	for i=1,getn(SKILL90_ARRAY[nNewNo]) do
	AddMagic(SKILL90_ARRAY[nNewNo][i][2],SKILL90_ARRAY[nNewNo][i][3]);
	end
	if(lv120 > 0) then
	AddMagic(SKILL120AR[nNewNo],lv120);
	end
	SetTimer(60,5)
	KickOutSelf()
end;

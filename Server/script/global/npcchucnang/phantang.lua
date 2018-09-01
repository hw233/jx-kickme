--Include("\\Script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
ALL_POINT_NO_LONGER = "Ng­¬i ®· céng hÕt ®iÓm tiÒm n¨ng råi!"
COMMON_SAY = "ThÝch Minh: Ng­¬i cã muèn tÈy tñy kh«ng?"
STATION_OLD = {
{1 ,1},
{2 ,11 },
{3 ,162},
{4 ,37 },
{5 ,78 },
{6 ,80 },
{7 ,176}
};

TIEMNAMG_ARRAY ={
10,
20,
50,
100,
150,
200,
300,
500
};

function main()
	local nValue = GetNumber(GetTask(TASK_DAOTAYTUY),7);
	if(nValue == 1) then
	Say(COMMON_SAY,5,
	"TÈy ®iÓm kü n¨ng/taykynang",
	"Céng ®iÓm tiÒm n¨ng/cong",
	"Kh«ng tÈy/no",
	"VÒ viÖc tÈy tñy/timhieu",
	"Rêi khái ®¶o tÈy tñy/roikhoi")
	elseif (nValue == 2) then
	Say(COMMON_SAY,5,
	"TÈy ®iÓm tiÒm n¨ng/taytiemnang",
	"Céng ®iÓm tiÒm n¨ng/cong",
	"Kh«ng tÈy/no",
	"VÒ viÖc tÈy tñy/timhieu",
	"Rêi khái ®¶o tÈy tñy/roikhoi")
	else
	Say(COMMON_SAY,6,
	"TÈy ®iÓm kü n¨ng/taykynang",
	"TÈy ®iÓm tiÒm n¨ng/taytiemnang",
	"Céng ®iÓm tiÒm n¨ng/cong",
	"Kh«ng tÈy/no",
	"VÒ viÖc tÈy tñy/timhieu",
	"Rêi khái ®¶o tÈy tñy/roikhoi")
	end
	
end

function taykynang()
	ResetMagicPoint(0)
	Talk(1,"kickout",10061)
end

function kickout()
	KickOutSelf()
end

function taytiemnang()
	ResetProp()
end

function timhieu()
	Talk(3,"",13021,10511,10512)
end

function roikhoi()
	Say("ThÝch Minh: Ng­¬i thËt sù muèn rêi khái ®©y?",2,
"§óng ta muèn rêi khái ®¶o tÈy tñy/venha",
"§Ó ta suy nghÜ l¹i xem/no")
end

function venha()
    local nWorld = GetNumber3(GetTask(TASK_DAOTAYTUY),1);
	local nRevID = GetNumber2(GetTask(TASK_DAOTAYTUY),3);
	for i=1,getn(STATION_OLD) do
		if(nWorld == STATION_OLD[i][2]) then
			local nW , nX, nY = GetStationPos(STATION_OLD[i][1]);
			if(NewWorld(nW, nX , nY ) == 1) then
			SetFightState(0)
			SetRevPos(nRevID,nWorld)
			end
		return end
	end
end

function cong()
	Say("Ng­¬i muèn t¨ng ®iÓm lo¹i nµo?",5,"Søc m¹nh/sucmanh","Th©n ph¸p/thanphap","Sinh khÝ /sinhkhi","Néi c«ng/noicong","Tho¸t/no")
end;

function sucmanh()
	local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selsucmanh";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l¹i/cong";
	Say("Ng­¬i muèn céng thªm søc m¹nh bao nhiªu?",count,StrTab)
end;

function selsucmanh(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	IncPoint(1,n); cong();
	return end
	IncPoint(1,TIEMNAMG_ARRAY[nSel]); cong();
end;

function thanphap()
local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selthanphap";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l¹i/cong";
	Say("Ng­¬i muèn céng thªm th©n ph¸p bao nhiªu?",count,StrTab)
end;

function selthanphap(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	IncPoint(2,n); cong();
	return end
	IncPoint(2,TIEMNAMG_ARRAY[nSel]); cong();
end;

function sinhkhi()
local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selsinhkhi";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l¹i/cong";
	Say("Ng­¬i muèn céng thªm sinh khÝ bao nhiªu?",count,StrTab)
end;

function selsinhkhi(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	IncPoint(3,n); cong();
	return end
	IncPoint(3,TIEMNAMG_ARRAY[nSel]); cong();
end;

function noicong()
local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." ®iÓm".. "/selnoicong";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l¹i/cong";
	Say("Ng­¬i muèn céng thªm néi c«ng bao nhiªu?",count,StrTab)
end;

function selnoicong(sel)
	local nSel = sel +1;
	local n = GetRestAP()
	if n == 0 then Talk(1,"",ALL_POINT_NO_LONGER); return end
	if n < TIEMNAMG_ARRAY[nSel] then
	IncPoint(4,n); cong();
	return end
	IncPoint(4,TIEMNAMG_ARRAY[nSel]); cong();
end;

function no()
end;

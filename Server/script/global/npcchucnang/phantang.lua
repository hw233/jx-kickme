--Include("\\Script\\library\\worldlibrary.lua");
Include("\\script\\header\\taskid.lua");
ALL_POINT_NO_LONGER = "Ng��i �� c�ng h�t �i�m ti�m n�ng r�i!"
COMMON_SAY = "Th�ch Minh: Ng��i c� mu�n t�y t�y kh�ng?"
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
	"T�y �i�m k� n�ng/taykynang",
	"C�ng �i�m ti�m n�ng/cong",
	"Kh�ng t�y/no",
	"V� vi�c t�y t�y/timhieu",
	"R�i kh�i ��o t�y t�y/roikhoi")
	elseif (nValue == 2) then
	Say(COMMON_SAY,5,
	"T�y �i�m ti�m n�ng/taytiemnang",
	"C�ng �i�m ti�m n�ng/cong",
	"Kh�ng t�y/no",
	"V� vi�c t�y t�y/timhieu",
	"R�i kh�i ��o t�y t�y/roikhoi")
	else
	Say(COMMON_SAY,6,
	"T�y �i�m k� n�ng/taykynang",
	"T�y �i�m ti�m n�ng/taytiemnang",
	"C�ng �i�m ti�m n�ng/cong",
	"Kh�ng t�y/no",
	"V� vi�c t�y t�y/timhieu",
	"R�i kh�i ��o t�y t�y/roikhoi")
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
	Say("Th�ch Minh: Ng��i th�t s� mu�n r�i kh�i ��y?",2,
"��ng ta mu�n r�i kh�i ��o t�y t�y/venha",
"�� ta suy ngh� l�i xem/no")
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
	Say("Ng��i mu�n t�ng �i�m lo�i n�o?",5,"S�c m�nh/sucmanh","Th�n ph�p/thanphap","Sinh kh� /sinhkhi","N�i c�ng/noicong","Tho�t/no")
end;

function sucmanh()
	local count = 1;
	local StrTab = {};
	
	for i=1,getn(TIEMNAMG_ARRAY) do
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selsucmanh";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	Say("Ng��i mu�n c�ng th�m s�c m�nh bao nhi�u?",count,StrTab)
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
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selthanphap";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	Say("Ng��i mu�n c�ng th�m th�n ph�p bao nhi�u?",count,StrTab)
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
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selsinhkhi";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	Say("Ng��i mu�n c�ng th�m sinh kh� bao nhi�u?",count,StrTab)
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
		StrTab[count] = TIEMNAMG_ARRAY[i].." �i�m".. "/selnoicong";
		count = count + 1;
	end
	
	if(count == 1) then
	return end
	
	StrTab[count] = "Quay l�i/cong";
	Say("Ng��i mu�n c�ng th�m n�i c�ng bao nhi�u?",count,StrTab)
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

--Trinh sat tien tuyen tong kim
--Author: Ken Nguyen 2013
--DMEM TEAM

--Include("\\script\\library\\worldlibrary.lua");
RANDOM_TONG_TT={
{1437,3298},
{1449,3310},
{1459,3324},
{1470,3334},
{1460,3297},
{1497,3307}
};

RANDOM_KIM_TT={
{1397,3332},
{1410,3336},
{1426,3342},
{1439,3360},
{1424,3384},
{1388,3314}
};

function main(NpcIndex)
	local bTong = GetNpcValue(NpcIndex);
	if(bTong == nil ) then
	return end
	local RestTK = GetMSRestTime(1,1);
	if (RestTK > 0) then
	Talk(1,"",10653)
	return end
	if(bTong == 0) then
		Say2("T��ng qu�n c� c�n ta ��a ra ngo�i tr�n ��a kh�ng?",2,1,"",
		"Ra ti�n tuy�n/tong_tientuyen",
		"Kh�ng c�n ��u/no")
	else
		Say2("Chi�n tr�n �ang h�n lo�n, ng�i c�n g�?",2,1,"",
		"Mau ��a ta ra ti�n tuy�n/kim_tientuyen",
		"R�i kh�i/no")
	end
end;

function tong_tientuyen()
	local nRanNum = RANDOM(1,getn(RANDOM_TONG_TT));
	SetPos(RANDOM_TONG_TT[nRanNum][1],RANDOM_TONG_TT[nRanNum][2]);
	SetFightState(1)
	StopTimer()
end;

function kim_tientuyen()
	local nRanNum = RANDOM(1,getn(RANDOM_KIM_TT));
	SetPos(RANDOM_KIM_TT[nRanNum][1],RANDOM_KIM_TT[nRanNum][2]);
	SetFightState(1)
	StopTimer()
end;

function no()
end;
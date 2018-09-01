--Xa phu hoa son
--Author: Ken Nguyen 2013
--DMEM TEAM

STATION_ARRAY = {
{1  		,300},
{11 		,200},
{162	,500},
{37 		,300},
{78 		,300},
{80 		,400},
{176	,500}
};

function main(NpcIndex)
	Say(12325,4,
	"Nh�ng n�i �� �i qua/noidiqua",
	"Nh�ng th�nh th� �� �i qua/thanhthidiqua",
	"Tr� l�i ��a �i�m c� /diadiemcu",
	"Kh�ng c�n ��u/out")
end;

function thanhthidiqua()
	local count = 1;
	local StationTab = {};
	
	local price = -1;
	for i=1,getn(STATION_ARRAY) do
		price = STATION_ARRAY[ i][2];
		if(price > 0) then
		StationTab[count] = GetStationName(i) .. " [" .. price .. " l��ng]" .. "/SelStation";
		count = count + 1;
		end
	end
	
	if(count == 1) then
	return end
	
	StationTab[count] = "Kh�ng �i ��u c� /out";
	Say("��i hi�p mu�n �i ��u:",count,StationTab)
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
	
	WAYPOINT[i] = "Kh�ng �i ��u c� /out";
	if (i == 1) then 
	Talk(1,"",10071);
	else
	Say("H�y l�a ch�n:", i, WAYPOINT);
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
	local nPrice = STATION_ARRAY[nSel+1][2];
	local nMoney = GetCash();
	if(nMoney < nPrice) then
	Talk(1,"",10076);
	else
	local nW , nX, nY = GetStationPos(nSel+1);
	if(NewWorld(nW, nX , nY ) == 1) then
	Msg2Player("Ng�i y�n! Ch�ng ta �i "..GetStationName(nSel+1).."!");
	Pay(nPrice);
	SetFightState(0);
	end
	end
end;

function diadiemcu()
	BackOldPlace()
end;

function out()
end;

Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10305) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(2,"xulynguoimoi",10308,10309) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10297,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10296,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	xulymonphai(C)
	return end
	if (F == "ND") then
	Say(10298,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10299,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10300,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10300,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10302,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10303,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10304,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10307,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10293,4,
	WANNA_GO,
	WANNA_90,
	WANNA_CHANGE,
	ENDTALK)
	end
end;

function trungphan()
	local nMoney = GetCash()
	if( nMoney < 60000) then
		Talk(1,"",15464)
	return end
	Pay(60000)
	LeaveTeam()
	SetCamp(trunglap)
	SetCurCamp(trunglap)
	Talk(1,"","Chµo mõng ng­¬i quay trë l¹i bæn m«n!");
end;

function xulynguoimoi()
	local S = GetSeries()
	if( S ~= hemoc) then
	return end
	Say(10311,2,"Gia nhËp §­êng m«n/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10312)
	return end
	SetFactionEx("DM")
	SetCamp(trunglap)
	SetCurCamp(trunglap)
	SetRank(76)
	Msg2Player("B¹n ®· gia nhËp §­êng M«n ")
	addskill_thuong(3)
end;

function kynang90()
	show_kynang90(3)
end;

function khong()
	Talk(1,"",10310)
end;

function chuyenphai()
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 2) then
	return end;
	common_change(1,2,76,trunglap,curfac);
end;

function no()
end;

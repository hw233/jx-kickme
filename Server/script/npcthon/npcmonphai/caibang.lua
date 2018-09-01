Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10445) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10449) --khoe
	return end
	
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10435,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10436,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10437,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10438,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10439,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10440,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10441,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10442,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10443,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	xulymonphai(C)
	return end
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10448,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10444,4,
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
	SetCamp(chinhphai)
	SetCurCamp(chinhphai)
	Talk(1,"","Chµo mõng ng­¬i quay trë l¹i bæn m«n!");
end;

function xulynguoimoi()
	local S = GetSeries()
	if( S ~= hehoa) then
	return end
	Say(10453,2,"Gia nhËp C¸i Bang/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10454)
	return end
	SetFactionEx("CB")
	SetCamp(chinhphai)
	SetCurCamp(chinhphai)
	SetRank(78)
	Msg2Player("B¹n ®· gia nhËp C¸i Bang.")
	addskill_thuong(7)
end;

function kynang90()
	show_kynang90(7)
end;

function khong()
	Talk(1,"",10452)
end;

function chuyenphai()
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 6) then
	return end;
	common_change(3,6,78,chinhphai,curfac);
end;

function no()
end;
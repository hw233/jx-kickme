Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10276) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10277) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10266,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10267,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10268,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10269,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10270,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	xulymonphai(C)
	return end
	if (F == "VD") then
	Say(10272,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10273,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10274,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10275,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10279,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10271,4,
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
	if( S ~= hekim) then
	return end
	Say(10284,2,"Gia nhËp ThiÕu L©m ph¸i/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10285)
	return end
	SetFactionEx("TL")
	SetCamp(chinhphai)
	SetCurCamp(chinhphai)
	SetRank(72)
	Msg2Player("B¹n ®· gia nhËp ThiÕu L©m Ph¸i ")
	addskill_thuong(1)
end;

function kynang90()
	show_kynang90(1)
end;

function khong()
	Talk(1,"",10283)
end;

function chuyenphai()
	if(GetSex() ~= 0) then
	Talk(1,"",13015)
	return end
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 0) then
	return end;
	common_change(0,0,72,chinhphai,curfac);
end;

function no()
end;
Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10209) --bang hoi
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10212) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10200,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	xulymonphai(C)
	return end
	if (F == "DM") then
	Say(10201,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10202,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10203,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10204,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10205,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10206,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10207,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10208,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10211,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10198,4,
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
	if( S ~= hethuy) then
	return end
	Say(10214,2,"Gia nhËp Nga My ph¸i/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10215)
	return end
	SetFactionEx("NM")
	SetCamp(chinhphai)
	SetCurCamp(chinhphai)
	SetRank(74)
	Msg2Player("B¹n ®· gia nhËp Nga My Ph¸i")
	addskill_thuong(5)
end;

function kynang90()
	show_kynang90(5)
end;

function khong()
	Talk(1,"",10213)
end;

function chuyenphai()
	if(GetSex() ~= 1) then
	Talk(1,"",13016)
	return end
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 4) then
	return end;
	common_change(2,4,74,chinhphai,curfac);
end;

function no()
end;

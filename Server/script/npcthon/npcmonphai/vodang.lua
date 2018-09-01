Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10388) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(3,"xulynguoimoi",10391,10392,10393) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10378,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10377,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10379,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10380,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10381,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10382,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	xulymonphai()
	return end
	if (F == "CL") then
	Say(10385,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10386,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10387,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10390,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10383,4,
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
	if( S ~= hetho) then
	return end
	Say(10395,2,"Gia nhËp Vâ §ang ph¸i/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10396)
	return end
	SetFactionEx("VD")
	SetCamp(chinhphai)
	SetCurCamp(chinhphai)
	SetRank(73)
	Msg2Player("B¹n ®· gia nhËp Vâ §ang")
	addskill_thuong(9)
end;

function kynang90()
	show_kynang90(9)
end;

function khong()
	Talk(1,"",10394)
end;

function chuyenphai()
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 8) then
	return end;
	common_change(4,8,73,chinhphai,curfac);
end;

function no()
end;

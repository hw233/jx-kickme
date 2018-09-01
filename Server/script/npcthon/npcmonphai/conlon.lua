Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10234) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10237) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10224,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10225,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10226,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10227,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10228,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10229,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10230,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	xulymonphai(C)
	return end
	if (F == "TN") then
	Say(10232,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10233,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10236,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10231,4,
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
	if( S ~= hetho) then
	return end
	Say(10240,2,"Gia nhËp C«n L«n ph¸i/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10241)
	return end
	SetFactionEx("CL")
	SetCamp(trunglap)
	SetCurCamp(trunglap)
	SetRank(75)
	Msg2Player("B¹n ®· gia nhËp C«n L«n Ph¸i ")
	addskill_thuong(10)
end;

function kynang90()
	show_kynang90(10)
end;

function khong()
	Talk(1,"",10239)
end;

function chuyenphai()
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 9) then
	return end;
	common_change(4,9,75,trunglap,curfac);
end;

function no()
end;

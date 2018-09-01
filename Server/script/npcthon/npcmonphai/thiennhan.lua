Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10332) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10335) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10322,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10321,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10323,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10324,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10325,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10326,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10327,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10328,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	xulymonphai(C)
	return end
	if (F == "CB") then
	Say(10331,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10334,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10320,4,
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
	SetCamp(taphai)
	SetCurCamp(taphai)
	Talk(1,"","Chµo mõng ng­¬i quay trë l¹i bæn m«n!");
end;

function xulynguoimoi()
	local S = GetSeries()
	if( S ~= hehoa) then
	return end
	Say(10337,2,"Gia nhËp Thiªn NhÉn gi¸o/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10338)
	return end
	SetFactionEx("TN")
	SetCamp(taphai)
	SetCurCamp(taphai)
	SetRank(81)
	Msg2Player("B¹n ®· gia nhËp Thiªn NhÉn Gi¸o ")							--ÉèÖÃ³ÆºÅ
	addskill_thuong(8)
end;

function kynang90()
	show_kynang90(8)
end;

function khong()
	Talk(1,"",10336)
end;

function chuyenphai()
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 7) then
	return end;
	common_change(3,7,81,taphai,curfac);
end;

function no()
end;
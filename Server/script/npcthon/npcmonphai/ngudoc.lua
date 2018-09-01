Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10418) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10422) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10408,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10409,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10410,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	xulymonphai(C)
	return end
	if (F == "TV") then
	Say(10412,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10413,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10414,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10415,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10416,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10417,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10421,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10411,4,
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
	if( S ~= hemoc) then
	return end
	Say(10425,2,"Gia nhËp Ngò §éc gi¸o/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10426)
	return end
	SetFactionEx("ND")
	SetCamp(taphai)
	SetCurCamp(taphai)
	SetRank(80)
	Msg2Player("B¹n ®· gia nhËp Ngò §éc Gi¸o")							--ÉèÖÃ³ÆºÅ
	addskill_thuong(4)
end;

function kynang90()
	show_kynang90(4)
end;

function khong()
	Talk(1,"",10424)
end;

function chuyenphai()
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 3) then
	return end;
	common_change(1,3,80,taphai,curfac);
end;

function no()
end;

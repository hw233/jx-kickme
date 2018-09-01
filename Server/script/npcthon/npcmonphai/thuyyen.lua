Include("\\script\\header\\monphaiheader.lua");
function main(sel)
	if(GetTongName() ~= "") then
	Talk(1,"",10181)
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(1,"xulynguoimoi",10185) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	xulymonphai(C)
	return end
	if (F == "NM") then
	Say(10171,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10172,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10173,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	Say(10174,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TL") then
	Say(10175,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10176,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10177,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10178,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10179,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10182,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10170,4,
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
	if( S ~= hethuy) then
	return end
	Say(10188,2,"Gia nhËp Thóy Yªn m«n/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10189)
	return end
	SetFactionEx("TY")
	SetCamp(trunglap)
	SetCurCamp(trunglap)
	SetRank(77)
	Msg2Player("B¹n ®· gia nhËp Thóy Yªn M«n ")
	addskill_thuong(6)
end;

function kynang90()
	show_kynang90(6)
end;

function khong()
	Talk(1,"",10187)
end;

function chuyenphai()
	if(GetSex() ~= 1) then
	Talk(1,"",13017)
	return end
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 5) then
	return end;
	common_change(2,5,77,trunglap,curfac);
end;

function no()
end;
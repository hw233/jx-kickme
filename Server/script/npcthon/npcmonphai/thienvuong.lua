Include("\\script\\header\\monphaiheader.lua");
Include("\\script\\header\\taskid.lua");
function main(sel)
	local w,x,y = GetWorldPos();
	if(w == 53) then
		local nTask = GetNumber(GetTask(TASK_DAOTAYTUY),9);
		if(nTask == 2 and GetItemCount(57) < 1) then
		AddItem(0,4,57,0,0,5,0,0)
		Talk(1,"",11303)
		Msg2Player("B¹n nhËn ®­îc mét viªn Tú Bµ hoµn.")
		return end
	end
	if(GetTongName() ~= "") then
	Talk(1,"",10359) --
	return end
	local C = GetCamp()
	if (C == nguoimoi) then
		Talk(3,"xulynguoimoi",10363,10364,10365) --khoe
	return end
	local F = GetFactionEx()
	if (F == "TY") then
	Say(10349,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "NM") then
	Say(10348,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "DM") then
	Say(10350,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "ND") then
	Say(10351,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TV") then
	xulymonphai(C)
	return end
	if (F == "TL") then
	Say(10352,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "VD") then
	Say(10353,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CL") then
	Say(10354,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "TN") then
	Say(10355,2, WANNA_JOIN, ENDTALK)
	return end
	if (F == "CB") then
	Say(10356,2, WANNA_JOIN, ENDTALK)
	return end
	
end;

function xulymonphai(nCamp)

	if(nCamp == xuatsu) then
	Say(10361,2,
	"Trïng ph¶n s­ m«n/trungphan",
	ENDTALK)
	else
	Say(10357,4,
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
	if( S ~= hekim) then
	return end
	Say(10367,2,"Gia nhËp Thiªn V­¬ng bang/gianhap","Ta ch­a muèn/khong")
end;

function gianhap()
	local L = GetLevel()
	if (L < 10) then
	Talk(1,"",10368)
	return end
	SetFactionEx("TV")
	SetCamp(trunglap)
	SetCurCamp(trunglap)
	SetRank(79)
	Msg2Player("B¹n ®· gia nhËp Thiªn V­¬ng Bang ")
	addskill_thuong(2)
end;

function kynang90()
	show_kynang90(2)
end;

function khong()
	Talk(1,"",10366)
end;

function chuyenphai()
	if(GetSex() ~= 0) then
	Talk(1,"",13018)
	return end
	local curfac = GetFactionNo();
	if(curfac < 0 or curfac > 9 or curfac == 1) then
	return end;
	common_change(0,1,79,trunglap,curfac);
end;

function no()
end;
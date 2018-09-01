Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\openclose.lua");
-- Ken Nguyen
-- npc Su gia kiet xuat vo lam lien dau
LIENDAU_TOURNO = 1	--giai dau thu 1
function main(NpcIndex)
	if(CLOSE_FEATURE == 1) then
	Talk(1,"",TALK_CLOSE)
	return end
	if(GetTask(TASK_LIENDAU_TIME) ~= LIENDAU_TOURNO) then
		SetTask(TASK_LIENDAU_TIME,LIENDAU_TOURNO)
		SetTask(TASK_LIENDAU, 0);
	end
	Say2(14807,7,1,"",
		"Vµo vâ l©m liªn ®Êu héi tr­êng/htruong",
		"Vâ l©m liªn ®Êu nhãm/nhom",
		"KiÓm tra t×nh h×nh thi ®Êu/kiemtra",
		"§æi phÇn th­ëng vinh dù /giaodich",
		"Xem ®iÓm vinh dù /vinhdu",
		"Vâ l©m liªn ®Êu hç trî /hotro",
		"§ãng/no")
end;

function htruong()
	local nTaskValue = GetTask(TASK_LIENDAU)
	if(nTaskValue < 1) then
		Say2(10045,2,1,"",
		"Tham gia liªn ®Êu/lapnhom",
		"Ta kh«ng muèn thi ®Êu/no")
	return end;
	gohoitruong()
end;

function lapnhom()
	if(GetLevel() < 80) then
		Talk(1,"",10047)
	return end
	if(GetFactionNo() < 0) then
		Talk(1,"",10039)
	return end
	local nAdd = AddDataGr(GetName());
	if(nAdd >= 0) then
		SetTask(TASK_LIENDAU, nAdd+1);
		gohoitruong()
	end
end;

function gohoitruong()
	local w,x,y = GetWorldPos();
	local nMapNo = 1;
	if(w == 11) then
	nMapNo = 2;
	elseif(w == 162) then
	nMapNo = 3;
	elseif(w == 37) then
	nMapNo = 4;
	elseif(w == 78) then
	nMapNo = 5;
	elseif(w == 80) then
	nMapNo = 6;
	elseif(w == 176) then
	nMapNo = 7;
	end
	SetTask(TASK_NVST, SetNumber(GetTask(TASK_NVST),9,nMapNo));
	NewWorld(396,1465,3009);
end;

function kiemtra()
	Say2(10046,3,1,"",
	"KiÓm tra chiÕn ®éi cña m×nh/xemminh",
	"Xem 10 chiÕn ®éi dÉn ®Çu/top10",
	"Tho¸t/no")
end;

function xemminh()
	local nTaskValue = GetTask(TASK_LIENDAU)
	if(nTaskValue < 1) then
		Talk(1,"",10038)
	return end;
	showthanhtich(nTaskValue-1)
end;

function top10()
	local nGroup = GetDataInt(1);
	if(nGroup == 0) then
	Talk(1,"",10055)
	return end
	local strTab = {};
	local count = 1;
	local nameid,nValue1,nPoint,nTime,nRank,Name1,Name2;
	for i=1,10 do
	nGroup = GetDataInt(i)
	if(nGroup > 0) then
	nameid,nValue1,nPoint,nTime,nRank,Name1,Name2 = GetDataGr(nGroup-1);
	strTab[count] = format("H¹ng thø %d %s /seltop",i,Name1);
	count = count +1;
	end
	end
	if(count == 1) then
	return end
	strTab[count] = "§ãng/no"
	Say2(10080, count,1,"",strTab)
	
end;

function seltop(sel)
	local nSel = sel + 1
	local nGroup = GetDataInt(nSel)
	showthanhtich(nGroup-1)
end;

function showthanhtich(nGroup)
	local nameid,nValue1,nPoint,nTime,nRank,Name1,Name2 = GetDataGr(nGroup);
	if(nameid == 0) then
	return end;
	
	local nThang = GetNumber3(nValue1,1);
	local nHoa = GetNumber3(nValue1,2);
	local nThua = GetNumber3(nValue1,3);
	local nTotal = nThang+nHoa+nThua
	local nRate;
	if(nTotal > 0) then
		nRate = floor(nThang*100/nTotal);
	else
		nRate = 0;
	end
	local nMem = 1;
	if(Name2 ~= "") then
	nMem = 2;
	end
	local szNo = format("%d",nRank);
	if(szNo == "0") then
	szNo = "?";
	end
	local str = format(
	"ChiÕn ®éi <color=green>%s <color>gåm cã %d thµnh viªn:<enter><color=cyan>%s %s<color>. §· thi ®Êu %d trËn: Th¾ng<color=yellow>%d<color>trËn/Hßa<color=yellow>%d<color>trËn/Thua<color=yellow>%d<color>trËn. TØ lÖ th¾ng: %d%% §iÓm th­ëng: <color=red>%d<color> Thêi gian tÝch lòy: <color=green>%d gi©y<enter>H¹ng thø: %s",
	Name1,nMem,Name1,Name2,nTotal,nThang,nHoa,nThua,nRate,nPoint,nTime,szNo);
	Say2(str,1,1,"","§ãng/no");
end;

function nhom()
	Talk(1,"",10020)
end;

function hotro()
	Say2("Lo¹i h×nh thi ®Êu lÇn nµy lµ <color=red>§¬n ®Êu tù do<color>.",2,1,"",
	"TiÕp tôc t×m hiÓu/tieptuchd",
	"Ta râ råi/no")
end;

function tieptuchd()
	Talk(4,"endhd",10015,10016,10017,10018)
end;

function endhd()
	Say2(10019,1,1,"",
	"Ta ®· râ råi/no")
end;

function giaodich()
	Sale(92,4)
end;


function vinhdu()
	local str = format("Ng­¬i hiÖn cã <color=yellow>%d<color> ®iÓm vinh dù.",GetHonor());
	Talk(1,"",str);
end;

function no()
end;

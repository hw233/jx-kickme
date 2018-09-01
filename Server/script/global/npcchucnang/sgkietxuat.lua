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
		"V�o v� l�m li�n ��u h�i tr��ng/htruong",
		"V� l�m li�n ��u nh�m/nhom",
		"Ki�m tra t�nh h�nh thi ��u/kiemtra",
		"��i ph�n th��ng vinh d� /giaodich",
		"Xem �i�m vinh d� /vinhdu",
		"V� l�m li�n ��u h� tr� /hotro",
		"��ng/no")
end;

function htruong()
	local nTaskValue = GetTask(TASK_LIENDAU)
	if(nTaskValue < 1) then
		Say2(10045,2,1,"",
		"Tham gia li�n ��u/lapnhom",
		"Ta kh�ng mu�n thi ��u/no")
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
	"Ki�m tra chi�n ��i c�a m�nh/xemminh",
	"Xem 10 chi�n ��i d�n ��u/top10",
	"Tho�t/no")
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
	strTab[count] = format("H�ng th� %d %s /seltop",i,Name1);
	count = count +1;
	end
	end
	if(count == 1) then
	return end
	strTab[count] = "��ng/no"
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
	"Chi�n ��i <color=green>%s <color>g�m c� %d th�nh vi�n:<enter><color=cyan>%s %s<color>. �� thi ��u %d tr�n: Th�ng<color=yellow>%d<color>tr�n/H�a<color=yellow>%d<color>tr�n/Thua<color=yellow>%d<color>tr�n. T� l� th�ng: %d%% �i�m th��ng: <color=red>%d<color> Th�i gian t�ch l�y: <color=green>%d gi�y<enter>H�ng th�: %s",
	Name1,nMem,Name1,Name2,nTotal,nThang,nHoa,nThua,nRate,nPoint,nTime,szNo);
	Say2(str,1,1,"","��ng/no");
end;

function nhom()
	Talk(1,"",10020)
end;

function hotro()
	Say2("Lo�i h�nh thi ��u l�n n�y l� <color=red>��n ��u t� do<color>.",2,1,"",
	"Ti�p t�c t�m hi�u/tieptuchd",
	"Ta r� r�i/no")
end;

function tieptuchd()
	Talk(4,"endhd",10015,10016,10017,10018)
end;

function endhd()
	Say2(10019,1,1,"",
	"Ta �� r� r�i/no")
end;

function giaodich()
	Sale(92,4)
end;


function vinhdu()
	local str = format("Ng��i hi�n c� <color=yellow>%d<color> �i�m vinh d�.",GetHonor());
	Talk(1,"",str);
end;

function no()
end;

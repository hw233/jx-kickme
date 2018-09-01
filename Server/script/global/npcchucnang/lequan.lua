---Script by Ken Nguyen
--Le quan
--Include("\\script\\header\\event_endtime.lua");
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\openclose.lua");
END_TALK = "KÕt thóc ®èi tho¹i/no";
function main(NpcIndex)
	if(CLOSE_FEATURE == 1) then
	Talk(1,"",TALK_CLOSE)
	return end
	Say2(11316,2,1,"",
	"Trß ch¬i 'Con sè may m¾n' /doanso",
		END_TALK)
end

function doanso()
	Say2(10144,5,1,"",
	"Xem kÕt qu¶ /ketqua",
	"NhËn th­ëng/thuong",
	"Xem bé sè cña m×nh/kiemtra",
	"Xem kÕt qu¶ ®ît tr­íc/truoc",
		END_TALK)
end

function ketqua()
	reset();
	if(GetDataInt(DATA_DCHAVERES) == 0) then
	Talk(1,"",10153);
	return end;
	local Tab = {};
	local strself = "<color=yellow>";
	for i=1,12 do
	if		(i == 1 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),1);
	elseif(i == 2 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),2);
	elseif(i == 3 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),3);
	elseif(i == 4 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),4);
	elseif(i == 5 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),1);
	elseif(i == 6 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),2);
	elseif(i == 7 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),3);
	elseif(i == 8 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),4);
	elseif(i == 9 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),1);
	elseif(i == 10) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),2);
	elseif(i == 11) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),3);
	elseif(i == 12) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),4);
	end
		if(Tab[i] > 0) then
		strself = strself.."  "..Tab[i];
		end
	end
	strself = strself.."<color>";
	local str = "KÕt qu¶ 10 sè may m¾n:<color=green>"
	local count,bhave = 0,0;
	if(Tab[1] > 0) then
	bhave = 1;
	end
	for i=DATA_DCBEGIN,DATA_DCEND do
		local kqnum = GetDataInt(i);
		str = str.."  "..kqnum;
		if(bhave == 1) then
			for j=1,12 do
				if(Tab[j] == kqnum) then
				count = count + 1;
				end
			end
		end
	end
	str = str.."<color>";
	if(bhave == 1) then
		str = str.." Bé sè cña ng­¬i:"..strself.." Ng­¬i ®· ®o¸n ®óng <color=red>"..count.."<color> lÇn";
	else
		str = str.." RÊt tiÕc vßng thi nµy ng­¬i kh«ng tham gia."
	end
	Talk(1,"",str);
end;

function truoc()
	if(GetDataInt(DATA_DCHAVERES) == 1) then
	Talk(1,"",10157);
	return end;
	local str = "10 sè may m¾n lÇn tr­íc:"
	for i=DATA_DCBEGIN,DATA_DCEND do
			str = str.."  "..GetDataInt(i);
	end
	Talk(1,"",str);
end;

function thuong()
	reset();
	if(GetDataInt(DATA_DCHAVERES) == 0) then
	Talk(1,"",10161);
	return end;
	local Tab = {};
	Tab[1] = GetNumber2(GetTask(TASK_DATCUOC4),1);
	if(Tab[1] < 1) then
	Talk(1,"",10161);
	return end;
	local nTaskGot = GetTask(TASK_RESET2);
	if(GetNumber(nTaskGot,4) > 0) then
	Talk(1,"",15278);--nhan roi
	return end;
	if(CheckRoom(2,3) == 0) then
	Talk(1,"",12265);
	return end
	for i=2,12 do
	if(i == 2 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),2);
	elseif(i == 3 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),3);
	elseif(i == 4 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC4),4);
	elseif(i == 5 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),1);
	elseif(i == 6 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),2);
	elseif(i == 7 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),3);
	elseif(i == 8 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC5),4);
	elseif(i == 9 ) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),1);
	elseif(i == 10) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),2);
	elseif(i == 11) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),3);
	elseif(i == 12) then
		Tab[i] = GetNumber2(GetTask(TASK_DATCUOC6),4);
	end
	end
	local count = 0;
	for i=DATA_DCBEGIN,DATA_DCEND do
		local kqnum = GetDataInt(i);
		for j=1,12 do
				if(Tab[j] == kqnum) then
				count = count + 1;
				end
		end
	end
	if(count == 0) then
	Talk(1,"",10161);
	return end
	local nRand = RANDOM(4);
	if(count < 2) then--1
		if(nRand == 0) then
		AddOwnExp(5000000);
		Msg2Player("B¹n nhËn ®­îc kinh nghiÖm <color=yellow>5.000.000");
		elseif(nRand == 1) then
		AddItem(0,3,0,0,random(5,7),5,1,0);
		elseif(nRand == 2) then
		AddItem(0,2,3,0,0,5,0,0);
		AddItem(0,2,3,0,0,5,0,0);
		elseif(nRand == 3) then
		AddItem(0,3,21,0,0,5,10,0);
		else
		Earn(1000000);
		end
	elseif(count < 4) then--2.3
		if(nRand == 0) then
		AddOwnExp(7000000);
		Msg2Player("B¹n nhËn ®­îc kinh nghiÖm <color=yellow>7.000.000");
		elseif(nRand == 1) then
		AddItem(0,3,0,0,random(8,10),5,1,0);
		elseif(nRand == 2) then
		AddItem(0,3,21,0,0,5,30,0);
		elseif(nRand == 3) then
		Earn(2000000);
		else
		AddItem(0,2,53,0,0,5,0,0);
		AddItem(0,2,53,0,0,5,0,0);
		end
	elseif(count < 6) then--4.5
		if(nRand == 0) then
		AddOwnExp(10000000);
		Msg2Player("B¹n nhËn ®­îc kinh nghiÖm <color=yellow>10.000.000");
		elseif(nRand == 1) then
		AddItem(0,5,1,0,0,5,0,0);
		elseif(nRand == 2) then
		AddItem(0,3,0,0,10,5,1,0);
		AddItem(0,3,0,0,10,5,1,0);
		AddItem(0,3,13,0,0,5,0,0);
		AddItem(0,3,14,0,0,5,0,0);
		elseif(nRand == 3) then
		AddItem(0,3,17,0,0,5,0,0);
		AddItem(0,3,17,0,0,5,0,0);
		else
		AddItem(0,5,16,0,0,5,0,0);
		end
	elseif(count < 8) then--6.7
		if(nRand == 0) then
		AddOwnExp(15000000);
		Msg2Player("B¹n nhËn ®­îc kinh nghiÖm <color=yellow>15.000.000");
		elseif(nRand == 1) then
		Earn(8000000);
		elseif(nRand == 2) then
		AddItem(2,0,185,0,0,0,5,0);
		elseif(nRand == 3) then
		AddItem(0,5,random(8,10),0,0,5,0,0);
		else
		AddItem(0,5,random(22,24),0,0,5,0,0);
		end
	elseif(count < 10) then--8.9
		if(nRand == 0) then
		AddOwnExp(17000000);
		Msg2Player("B¹n nhËn ®­îc kinh nghiÖm <color=yellow>17.000.000");
		elseif(nRand == 1) then
		AddItem(0,5,random(16,18),0,0,5,0,0);
		elseif(nRand == 2) then
		AddItem(0,5,random(8,10),0,0,5,0,0);
		elseif(nRand == 3) then
		AddItem(0,2,59,0,0,5,0,0);
		else
		AddItem(0,5,random(21,24),0,0,5,0,0);
		end
	else--10.11.12
		if(nRand == 0) then
		AddOwnExp(20000000);
		Msg2Player("B¹n nhËn ®­îc kinh nghiÖm <color=yellow>20.000.000");
		elseif(nRand == 1) then
		AddItem(0,5,random(16,19),0,0,5,0,0);
		elseif(nRand == 2) then
		AddItem(0,5,random(11,12),0,0,5,0,0);
		elseif(nRand == 3) then
		AddItem(0,2,59,0,0,5,0,0);
		else
		AddItem(0,5,random(20,24),0,0,5,0,0);
		end
	end
	SetTask(TASK_RESET2, SetNumber(nTaskGot,4,1));
	Talk(1,"","Xin chóc mõng! Ng­¬i cã <color=red>"..count.."<color> lÇn ®o¸n ®óng, ®©y lµ phÇn th­ëng cña ng­¬i.");
end;

function kiemtra()
	reset();
	local nDone = GetNumber2(GetTask(TASK_LINHTINH),2);
	if(nDone == 0) then
	Talk(1,"",10149);
	return end
	local str = "C¸c sè ng­¬i ®· c­îc: <color=yellow>";
	for i=1,nDone do
	if		(i == 1 ) then
	str = str..GetNumber2(GetTask(TASK_DATCUOC1),1);
	elseif(i == 2 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC1),2);
	elseif(i == 3 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC1),3);
	elseif(i == 4 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC1),4);
	elseif(i == 5 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC2),1);
	elseif(i == 6 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC2),2);
	elseif(i == 7 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC2),3);
	elseif(i == 8 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC2),4);
	elseif(i == 9 ) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC3),1);
	elseif(i == 10) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC3),2);
	elseif(i == 11) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC3),3);
	elseif(i == 12) then
	str = str.."  "..GetNumber2(GetTask(TASK_DATCUOC3),4);
	end
	end
	Talk(1,"",str);
end;

function reset()
	local nData = GetDataInt(DATA_DATCUOC);
	local nTime = GetTask(TASK_DATCUOCT);
	if(nData ~= nTime) then
	SetTask(TASK_DATCUOCT, nData);
	SetTask(TASK_LINHTINH,SetNumber2(GetTask(TASK_LINHTINH),2,0));
	nData = nData - nTime;
	if(nData ~= 1) then
	SetTask(TASK_DATCUOC4, 0);
	SetTask(TASK_DATCUOC5, 0);
	SetTask(TASK_DATCUOC6, 0);
	else
	SetTask(TASK_DATCUOC4, GetTask(TASK_DATCUOC1));
	SetTask(TASK_DATCUOC5, GetTask(TASK_DATCUOC2));
	SetTask(TASK_DATCUOC6, GetTask(TASK_DATCUOC3));
	end
	SetTask(TASK_DATCUOC1, 0);
	SetTask(TASK_DATCUOC2, 0);
	SetTask(TASK_DATCUOC3, 0);
	end
end;

function no()
end;

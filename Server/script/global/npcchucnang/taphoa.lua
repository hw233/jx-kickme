
-- Ken Nguyen
Include("\\script\\header\\taskid.lua");
function main(NpcIndex)
	SetTaskTemp(NPCINDEX, NpcIndex)
	local OK_TRADE = "Giao dÞch/giaodich";
	local NOT_TRADE = "Kh«ng giao dÞch/no";
	local NOT_TRADE1 = "Th«i kh«ng cÇn ®©u/no";
	local NOT_TRADE2 = "KÕt thóc ®èi tho¹i/no";
	local w,x,y = GetWorldPos();
	if (w == 53) then--ba lang
	Say(10002,2,
		OK_TRADE,
		NOT_TRADE2)
	return end
	if (w == 20) then--giang tan
	Say(12954,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 99) then--vinh lac
	Say(12409,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 100) then--chu tien
	Say(14592,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 101) then--dao huong
	Say(14901,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 121) then--long mon
	Say(11433,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 153) then--thach co
	Say(13986,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 174) then--long tuyen thon
	Say(10959,2,
		OK_TRADE,
		NOT_TRADE1)
	return end
	if (w == 1) then--phuong tuong
	Say(11433,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	if (w == 11) then--thanh do
	Say(12634,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	if (w == 162) then--dai ly
	Say(13927,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	if (w == 78) then--tuong duong
	Say(15299,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	if (w == 37) then--bien kinh
	Say(14816,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	if (w == 80) then--duong chau
	Say(15469,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	if (w == 176) then--lam an
	Say(10857,2,
		OK_TRADE,
		NOT_TRADE)
	return end
	Say(13986,2,
		OK_TRADE,
		NOT_TRADE)
end;

function giaodich()
	local nParam = GetNpcValue(GetTaskTemp(NPCINDEX))
	if(nParam ~= nil and nParam > 0) then
	Sale(nParam)
	end
end;

function no()
end;

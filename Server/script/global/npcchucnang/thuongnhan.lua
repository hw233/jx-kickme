---Script by Ken Nguyen
--Than bi thuong nhan
--Include("\\script\\header\\taskid.lua");
NEED_ROOM_EMPTY = "Qu� kh�ch h�y s�p x�p l�i h�nh trang."
NOT_TRADE = "��ng/no";
function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 78) then--tuong duong
	Say(12409,2,
		"Giao d�ch/tuongduongsale",
		NOT_TRADE)
	return end
	if (w == 80) then--duong chau
	Say(10949,1,
		NOT_TRADE)
	return end
	if (w == 176) then--lam an
	Say(10852,2,
		"Mua v�t qu� T�y v�c/lamansale",
		NOT_TRADE)
	return end
	Say(12409,1,
		NOT_TRADE)
end;

function lamansale()
	Say(10095,3,
		"Mua B�ng T�m V� c�c t� [30 ti�n ��ng]/bangtam",
		"Mua Nam Minh Chi Tinh [25 ti�n ��ng]/namminh",
		NOT_TRADE)
end;

function bangtam()
	if(CheckRoom(1,1) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	if(GetItemCount(21,3) < 30) then	--tien dong
		Talk(1,"",10248)
	return end;
	AddItem(0,3,32,0,0,5,0,0)
	DelItem(21,3,30);
end;

function namminh()
	if(CheckRoom(1,1) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	if(GetItemCount(21,3) < 25) then	--tien dong
		Talk(1,"",10248)
	return end;
	AddItem(0,3,33,0,0,5,0,0)
	DelItem(21,3,25);
end;

function tuongduongsale()
	Sale(94,1)
end;

function no()
end;

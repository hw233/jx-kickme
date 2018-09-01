--Tho ren
-- Ken Nguyen
Include("\\script\\header\\taskid.lua");
OK_TRADE = "Giao d�ch/giaodich";
OK_ENCHASE = "Ch� t�o v�t ph�m ��c/duc";
NOT_TRADE = "K�t th�c ��i tho�i/no";
OK_TREMBLE = "Kh�m n�m b�ng th�y tinh/thuytinh";
NEED_ROOM_EMPTY = "H�nh trang ph�i c� �� 2x4 � tr�ng.";
SAME_5HANH = "Trang b� �� c� ng� h�nh th�ch h�p. Xin l�a ch�n ng� h�nh kh�c.";
function main(NpcIndex)
	SetTaskTemp(NPCINDEX, NpcIndex)
	local NOT_TRADE1 = "Nh�n ti�n gh� qua th�i/no";
	local w,x,y = GetWorldPos();
	if (w == 53) then--ba lang
	Say2(11304,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 20) then--giang tan
	if(nvgiangtan() == 1) then
	return end;
	Say2(12950,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 99) then--vinh lac
	Say2(12407,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 100) then--chu tien
	Say2(14571,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 101) then--dao huong
	Say2(14865,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 121) then--long mon
	Say2(12101,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 153) then--thach co
	Say2(13979,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 174) then--long tuyen thon
	Say2(10944,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE1)
	return end
	if (w == 1) then--phuong tuong
	Say2(12236,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
	return end
	if (w == 11) then--thanh do
	Say2(12236,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
	return end
	if (w == 162) then--dai ly
	Say2(13901,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
	return end
	if (w == 78) then--tuong duong
	Say2(15275,4,1,"",
		OK_TRADE,
		OK_TREMBLE,
		OK_ENCHASE,
		NOT_TRADE)
	return end
	if (w == 37) then--bien kinh
	Say2(14803,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
	return end
	if (w == 80) then--duong chau
	Say2(15454,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
	return end
	if (w == 176) then--lam an
	Say2(12236,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
	return end
	Say2(15454,2,1,"",
		OK_TRADE,
		--OK_TREMBLE,
		--OK_ENCHASE,
		NOT_TRADE)
end;

function giaodich()
	local nParam = GetNpcValue(GetTaskTemp(NPCINDEX))
	if(nParam ~= nil and nParam > 0) then
	Sale(nParam)
	end
end;

function duc()
	OpenEnchase()
end;

function thuytinh()
	Talk(1,"thuytinh2",10853)
end

function thuytinh2()
	PutTremble("y/okkham","n/no")
end
--So do` dat. thuy tinh va trang bi khung giao
--	.			.			.			.			.			.			.
--	kim		tho					BlueEquip
--	.			.			.			.			.			.			.
--	moc		TuTT				BlueEquip
--	.			.			.			.			.			.			.
--	thuy		LucTT				BlueEquip
--	.			.			.			.			.			.			.
--	hoa								BlueEquip
--	.			.			.			.			.			.			.
function okkham()
	--ton ngan luong
	--if(GetCash() < xxx) then
	--Msg2Player("Ng��i kh�ng mang �� xxx l��ng.")
	--return end;
	if(CheckRoom(2,4) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	local i,j, nIndex,kind,genre,detail,parti,level,series,row;
	for i=2,3 do	--khong cho dat sai cho~
		for j=0,3 do
			nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
			if (nIndex > 0) then
			return end
		end
	end
	local count = 0;
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,0,0);
	local nKim = nIndex;
	if(nKim > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 13)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,0,1);
	local nMoc = nIndex;
	if(nMoc > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 13)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,0,2);
	local nThuy = nIndex;
	if(nThuy > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 13)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,0,3);
	local nHoa = nIndex;
	if(nHoa > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 13)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,1,0);
	local nTho = nIndex;
	if(nTho > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 13)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,1,1);
	local nTu = nIndex;
	if(nTu > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 14)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,1,2);
	local nLuc = nIndex;
	if(nLuc > 0) then
		count = count + 1;
		if(genre ~= 3 or detail ~= 15)	then	--khong cho dat sai cho~
		return end
	end
	nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,1,3);
	if(nIndex > 0) then	--khong cho dat sai cho~
	return end
	
	local Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow;
	local doxanhid = 0;
	for i=4,5 do	--kiem tra trang bi xanh
		for j=0,3 do
			nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
			if (nIndex > 0) then
				count = count + 1;
				doxanhid,Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow = nIndex,kind,genre,detail,parti,level,series,row;
			end
		end
	end
	if(doxanhid == 0 or Rgenre ~= 0 or Rkind ~= 0 or Rdetail > 9) then
	Msg2Player("Xin ��t trang b� xanh ho�c tr�ng v�o m�i c� th� ti�n h�nh.");
	return end
	if(count < 2) then
	Msg2Player("Xin ��t 1 Th�y Tinh � v� tr� c�n kh�m n�m.");
	return end
	if(count > 2) then
	Msg2Player("M�i l�n kh�m ch� ���c ��t v�o 1 Th�y Tinh v� 1 trang b� xanh ho�c tr�ng!");
	return end
	if(nKim > 0) then	--doi sang he Kim
		if(Rseries == 0) then
		Msg2Player(SAME_5HANH);
		return end
	doihe(doxanhid,Rdetail,Rparti,Rlevel,0)
	RemoveItem(nKim,1)
	return end
	if(nMoc > 0) then	--doi sang he Moc
		if(Rseries == 1) then
		Msg2Player(SAME_5HANH);
		return end
	doihe(doxanhid,Rdetail,Rparti,Rlevel,1)
	RemoveItem(nMoc,1)
	return end
	if(nThuy > 0) then	--doi sang he Thuy
		if(Rseries == 2) then
		Msg2Player(SAME_5HANH);
		return end
	doihe(doxanhid,Rdetail,Rparti,Rlevel,2)
	RemoveItem(nThuy,1)
	return end
	if(nHoa > 0) then	--doi sang he Hoa
		if(Rseries == 3) then
		Msg2Player(SAME_5HANH);
		return end
	doihe(doxanhid,Rdetail,Rparti,Rlevel,3)
	RemoveItem(nHoa,1)
	return end
	if(nTho > 0) then	--doi sang he Tho
		if(Rseries == 4) then
		Msg2Player(SAME_5HANH);
		return end
	doihe(doxanhid,Rdetail,Rparti,Rlevel,4)
	RemoveItem(nTho,1)
	return end
	if(nTu > 0) then	--nang 1 cap
		if(Rlevel > 9) then
		Msg2Player("Trang b� �� ��t ��ng c�p t�i �a, kh�ng th� n�ng c�p!")
		return end
		if(random(10) == 9) then
		nangcap(doxanhid,Rdetail,Rparti,Rlevel,Rseries);
		else
		Msg2Player("N�ng c�p trang b� th�t b�i! B�n b� t�n th�t 1 Th�y Tinh.");
		end
	RemoveItem(nTu,1)
	return end
	if(nLuc > 0) then	--doi thuoc tinh random
	AddItem(0,0,Rdetail,Rparti,Rlevel,Rseries,350,10,10,10,10,RANDOM(10),RANDOM(10));
	RemoveItem(doxanhid,1);
	RemoveItem(nLuc,1);
	Msg2Player("Thay ��i thu�c t�nh trang b� th�nh c�ng!");
	thuytinh();
	return end
end;

function doihe(doxanhid,Rdetail,Rparti,Rlevel,Rseries)
	AddItem(0,0,Rdetail,Rparti,Rlevel,Rseries,80,10,RANDOM(7,10),RANDOM(6,10),RANDOM(10),RANDOM(10),RANDOM(10));
	RemoveItem(doxanhid,1);
	Msg2Player("��i ng� h�nh trang b� th�nh c�ng!");
end;

function nangcap(nRealIndex,Rdetail,Rparti,Rlevel,Rseries)
	local nNewItem;
	local bLock,nMin = GetItemLock(nRealIndex);
	
	nNewItem = ItemSetAdd(0,0,Rdetail,Rparti,Rlevel+1,Rseries,0);
	if(nNewItem > 0) then
		if(bLock == 2) then
			LockItem(nNewItem)
		elseif(bLock == 1) then
			LockItem(nNewItem,-1)
		elseif(nMin > 0) then
			LockItem(nNewItem,nMin)
		end
		local	type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
		= GetItemMagic(nRealIndex);
		ChangeItemMagic(nNewItem,
						type1 , value1_1, value1_3,
						type2 , value2_1, value2_3,
						type3 , value3_1, value3_3,
						type4 , value4_1, value4_3,
						type5 , value5_1, value5_3,
						type6 , value6_1, value6_3,
						type7 , value7_1, value7_3,
						type8 , value8_1, value8_3
						);
		AddItemID(nNewItem);
		RemoveItem(nRealIndex, 1);
	Msg2Player("N�ng c�p trang b� th�nh c�ng!");
	end
end;

function nvgiangtan()
	local nTaskValue = GetTask(TASK_TAYTUYKINH);
	local nTask = GetNumber(nTaskValue,6);
	if(nTask == 1) then
	SetTask(TASK_TAYTUYKINH, SetNumber(nTaskValue,6,2));
	Talk(1,"",12946)
	Msg2Player("Th� r�n b�o b�n ra ngo�i th�n t�m ch�c c�y v� da tr�u �� l�m c�y n�.")
	return 1	end
	if(nTask == 2) then
		if(GetItemCount(62) > 0) then
		return 0 end
		if(GetItemCount(60) < 1 or GetItemCount(61) < 1) then
		Say2(12949,4,1,"",
		OK_TRADE,
		OK_ENCHASE,
		NOT_TRADE)
		else
		AddItem(0,4,62,0,0,5,0,0)
		DelItem(60)
		DelItem(61)
		Msg2Player("Nh�n ���c 1 gi�n n�.")
		Talk(2,"",12947,12948)
		end
	return 1	end
	return 0
end;

function no()
end;

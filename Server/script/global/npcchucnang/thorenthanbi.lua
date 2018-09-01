
-- Ken Nguyen
Include("\\Script\\library\\worldlibrary.lua");
NEED_ROOM_EMPTY = "H�nh trang ph�i c� �� 2x4 � tr�ng."
function main()
	Say2(14808,3,1,"",
        "Ph�c h�i trang b� t�n h�i/tonhai",
		"Kh�m b�ng v�t qu� T�y v�c/kham",
		"K�t th�c ��i tho�i!/no")
end

function tonhai()
	PutItem(14809,"y/checkdoi","n/no")
end;

function kham()
	Say2(15459,3,1,"",
        "N�ng c�p trang b� /nangcap",
		"Gi�m ��ng c�p trang b� /giamcap",
		"Tho�t/no")
end

function nangcap()
	PutItem(15455,"y/checknangcap","n/no")
end;

function giamcap()
	PutItem(15458,"y/checkgiamcap","n/no")
end;

function checknangcap()
	if(CheckRoom(2,4) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	local i,j, nIndex,kind,genre,detail,parti,level,series,row;
	local Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow;
	local nRealIndex = 0;
	local count = 0;
	for i=0,5 do
		for j=0,3 do
		nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
		if (nIndex > 0) then
			count = count + 1;
			if( genre == 0) then
				nRealIndex,Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow
				= nIndex,kind,genre,detail,parti,level,series,row;
			end
		end
		end
	end
	if(nRealIndex == 0 or Rdetail > 9) then
		Talk(1,"",15460)--khong co trang bi
	return end
	if(count > 1) then
		Talk(1,"",14813)
	return end
	
	if(GetItemCount(32,3) < 1) then
		Msg2Player("Ng��i kh�ng c� B�ng T�m V� C�c t�. Kh�ng th� ch� t�c.")
	return end;
	
	if(Rkind > 0) then
		Talk(1,"",14814)
	return end;
	if(Rlevel > 9) then
		Talk(1,"","��ng c�p trang b� �� ��t m�c t�i �a r�i!")
	return end;
--phan nang cap trang bi
	local nNewItem;
	local bLock,nMin = GetItemLock(nRealIndex);
	
	nNewItem = ItemSetAdd(Rkind,0,Rdetail,Rparti,Rlevel+1,Rseries,0);
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
		RemoveItem(nRealIndex,1);
		DelItem(32,3,1);
		Msg2Player("T�ng ��ng c�p trang b� th�nh c�ng!")
	end
end;

function checkgiamcap()
	if(CheckRoom(2,4) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	local i,j, nIndex,kind,genre,detail,parti,level,series,row;
	local Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow;
	local nRealIndex = 0;
	local count = 0;
	for i=0,5 do
		for j=0,3 do
		nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
		if (nIndex > 0) then
			count = count + 1;
			if( genre == 0) then
				nRealIndex,Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow
				= nIndex,kind,genre,detail,parti,level,series,row;
			end
		end
		end
	end
	if(nRealIndex == 0 or Rdetail > 9) then
		Talk(1,"",15460)	--khong co trang bi
	return end
	if(count > 1) then
		Talk(1,"",14813)	--dat vao qua nhieu thu
	return end
	
	if(GetItemCount(33,3) < 1) then
		Msg2Player("Ng��i kh�ng c� Nam Minh Chi Tinh. Kh�ng th� ch� t�c.")
	return end;
	
	if(Rkind > 0) then
		Talk(1,"",14814)	--chi co the kham trang bi xanh trang
	return end;
	if(Rlevel < 2) then
		Talk(1,"","��ng c�p trang b� kh�ng th� gi�m ���c n�a!")
	return end;
--phan nang cap trang bi
	local nNewItem;
	local bLock,nMin = GetItemLock(nRealIndex);
	
	nNewItem = ItemSetAdd(Rkind,0,Rdetail,Rparti,Rlevel-1,Rseries,0);
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
		RemoveItem(nRealIndex,1);
		DelItem(33,3,1);
		Msg2Player("Gi�m ��ng c�p trang b� th�nh c�ng!")
	end
end;

function checkdoi()
	if(CheckRoom(2,4) == 0) then
		Msg2Player(NEED_ROOM_EMPTY)
	return end
	local i,j, nIndex,kind,genre,detail,parti,level,series,row;
	local Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow;
	local nRealIndex = 0;
	local count = 0;
	for i=0,5 do
		for j=0,3 do
		nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(10,i,j);
		if (nIndex > 0) then
			count = count + 1;
			if( genre == 6) then
				nRealIndex,Rkind,Rgenre,Rdetail,Rparti,Rlevel,Rseries,Rrow
				= nIndex,kind,genre,detail,parti,level,series,row;
			end
		end
		end
	end
	if(nRealIndex == 0) then
		Talk(1,"",14812)	--ko co trang bi ton hai
	return end
	if(count > 1) then
		Talk(1,"",14813)	--dat vao qua nhieu thu
	return end
	if(GetItemCount(21,3) < 5) then	--tien dong
		Msg2Player("Ng��i kh�ng mang �� 5 ti�n ��ng.")
	return end;
--phan sua trang bi ton hai
	local nNewItem;
	local bLock,nMin = GetItemLock(nRealIndex);
	if (Rkind == 0) then
		nNewItem = ItemSetAdd(Rkind,0,Rdetail,Rparti,Rlevel,Rseries,0);
	else
		nNewItem = ItemSetAdd(Rkind,0,Rrow-2,Rparti,Rlevel,Rseries,0);
	end
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
		RemoveItem(nRealIndex,1);
		DelItem(21,3,5);
		Msg2Player("Trang b� t�n h�i c�a b�n �� ���c ph�c h�i ho�n to�n.")
	end
end;

function no()
end

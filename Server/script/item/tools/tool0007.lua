Include("\\script\\library\\worldlibrary.lua");
--Script Created by Ken Nguyen
--Phi phong
function useitem(nItemIndex)
--Add phi phong vao ao' thuong`
	local nIndex,kind,genre,detail,parti,level,series,row = GetItemParam(POSE,PARTYPHUC,0);
	
	if (kind == 0) then	--trang bi xanh trang
	if(nIndex <= 0 or parti > 13) then
		return
	end
	local	type1 , value1_1, value1_3,
			type2 , value2_1, value2_3,
			type3 , value3_1, value3_3,
			type4 , value4_1, value4_3,
			type5 , value5_1, value5_3,
			type6 , value6_1, value6_3,
			type7 , value7_1, value7_3,
			type8 , value8_1, value8_3
	= GetItemMagic(nIndex);
	RemoveItem(nIndex,1);
	nIndex = ItemSetAdd(kind,genre,detail,parti+14,level,series,0);
	ChangeItemMagic(nIndex,
					type1 , value1_1, value1_3,
					type2 , value2_1, value2_3,
					type3 , value3_1, value3_3,
					type4 , value4_1, value4_3,
					type5 , value5_1, value5_3,
					type6 , value6_1, value6_3,
					type7 , value7_1, value7_3,
					type8 , value8_1, value8_3
					);
	AddItemAt(nIndex,POSE,PARTYPHUC,0);
	RemoveItem(nItemIndex, 1);
	else
	Msg2Player("Phi phong nµy kh«ng cã t¸c dông víi trang bÞ Hoµng Kim!")
	end
end;

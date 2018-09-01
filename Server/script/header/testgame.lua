--Ken Nguyen
--11-7-2014
--chuyen hoa sttnl Thuy-Tho: full		Kim-Hoa: chi trang phuc	Moc:full tru vu khi
Include("\\script\\header\\monphaiheader.lua");
PLEASE = "H∑y l˘a ch‰n:";
function xanhtest()
	Say2(PLEASE,7,1,"",
	"VÚ kh› /vukhit",
	"Y phÙc/aot",
	"Hµi/giayt",
	"Y™u Æ∏i/dait",
	"Kh´i m∑o/nont",
	"HÈ uy”n/baotayt",
	"Tho∏t/no")
end;

function vukhit()
	Say2(PLEASE,6,1,"",
	"VÚ kh› h÷ Kim/selvk",
	"VÚ kh› h÷ MÈc/selvk",
	"VÚ kh› h÷ ThÒy/selvk",
	"VÚ kh› h÷ H·a/selvk",
	"VÚ kh› h÷ ThÊ /selvk",
	"Tho∏t/no")
end;

function aot()
	Say2(PLEASE,6,1,"",
	"∏o h÷ Kim/selao",
	"∏o h÷ MÈc/selao",
	"∏o h÷ ThÒy/selao",
	"∏o h÷ H·a/selao",
	"∏o h÷ ThÊ /selao",
	"Tho∏t/no")
end;

function giayt()
	Say2(PLEASE,6,1,"",
	"Gi«y h÷ Kim/selgiay",
	"Gi«y h÷ MÈc/selgiay",
	"Gi«y h÷ ThÒy/selgiay",
	"Gi«y h÷ H·a/selgiay",
	"Gi«y h÷ ThÊ /selgiay",
	"Tho∏t/no")
end;

function dait()
	Say2(PLEASE,6,1,"",
	"ßai h÷ Kim/seldai",
	"ßai h÷ MÈc/seldai",
	"ßai h÷ ThÒy/seldai",
	"ßai h÷ H·a/seldai",
	"ßai h÷ ThÊ /seldai",
	"Tho∏t/no")
end;

function nont()
	Say2(PLEASE,6,1,"",
	"MÚ h÷ Kim/selnon",
	"MÚ h÷ MÈc/selnon",
	"MÚ h÷ ThÒy/selnon",
	"MÚ h÷ H·a/selnon",
	"MÚ h÷ ThÊ /selnon",
	"Tho∏t/no")
end;

function baotayt()
	Say2(PLEASE,6,1,"",
	"Bao tay h÷ Kim/seltay",
	"Bao tay h÷ MÈc/seltay",
	"Bao tay h÷ ThÒy/seltay",
	"Bao tay h÷ H·a/seltay",
	"Bao tay h÷ ThÊ /seltay",
	"Tho∏t/no")
end;

function selvk(sel)
	local kind,genre,detail,parti,level,series = 0,0,0,0,0,0;
	local nIndex;
	local	type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
for i=0,5 do
	kind,genre,detail,parti,level,series = 0,0,0,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		121 , 30, 0,
		126 , 80, 0,
		140 , 150, 0,
		136 , 3, 0,
		101 , 20, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		125 , 30, 0,
		137 , 3, 0,
		144 , 30, 0,
		126 , 80, 0,
		103 , 25, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		123 , 50, 0,
		126 , 80, 0,
		141 , 150, 0,
		166 , 200, 0,
		102 , 20, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		137 , 3, 0,
		142 , 150, 0,
		115 , 30, 0,
		106 , 30, 0,
		85 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		166 , 200, 0,
		143 , 150, 0,
		136 , 3, 0,
		108 , 30, 0,
		58 , 1, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end

for i=0,2 do
	kind,genre,detail,parti,level,series = 0,0,1,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		121 , 30, 0,
		126 , 80, 0,
		140 , 150, 0,
		136 , 3, 0,
		101 , 20, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		125 , 30, 0,
		137 , 3, 0,
		144 , 30, 0,
		126 , 80, 0,
		103 , 25, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		115 , 30, 0,
		123 , 50, 0,
		126 , 80, 0,
		141 , 150, 0,
		166 , 200, 0,
		102 , 20, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		137 , 3, 0,
		142 , 150, 0,
		115 , 30, 0,
		106 , 30, 0,
		85 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		166 , 200, 0,
		143 , 150, 0,
		136 , 3, 0,
		108 , 30, 0,
		58 , 1, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end

end;

function selao(sel)
	local kind,genre,detail,parti,level,series = 0,0,0,0,0,0;
	local nIndex;
	local	type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
for i=0,13 do
	kind,genre,detail,parti,level,series = 0,0,2,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		113 , 30, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		113 , 30, 0,
		134 , 10, 0,
		117 , 10, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		99 , 15, 0,
		113 , 30, 0,
		110 , 30, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		113 , 30, 0,
		106 , 30, 0,
		117 , 10, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		113 , 30, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end
end;

function selgiay(sel)
	local kind,genre,detail,parti,level,series = 0,0,0,0,0,0;
	local nIndex;
	local	type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
for i=0,3 do
	kind,genre,detail,parti,level,series = 0,0,5,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		111 , 30, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		111 , 30, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		99 , 15, 0,
		111 , 30, 0,
		110 , 30, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		111 , 30, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		111 , 30, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end
end;

function seldai(sel)
	local kind,genre,detail,parti,level,series = 0,0,0,0,0,0;
	local nIndex;
	local	type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
for i=0,1 do
	kind,genre,detail,parti,level,series = 0,0,6,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		88 , 3, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		110 , 30, 0,
		85 , 120, 0,
		99 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end
end;

function selnon(sel)
	local kind,genre,detail,parti,level,series = 0,0,0,0,0,0;
	local nIndex;
	local	type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
for i=0,13 do
	kind,genre,detail,parti,level,series = 0,0,7,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		88 , 3, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		99 , 15, 0,
		85 , 120, 0,
		110 , 30, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end
end;

function seltay(sel)
	local kind,genre,detail,parti,level,series = 0,0,0,0,0,0;
	local nIndex;
	local	type1 , value1_1, value1_3,
				type2 , value2_1, value2_3,
				type3 , value3_1, value3_3,
				type4 , value4_1, value4_3,
				type5 , value5_1, value5_3,
				type6 , value6_1, value6_3,
				type7 , value7_1, value7_3,
				type8 , value8_1, value8_3;
for i=0,1 do
	kind,genre,detail,parti,level,series = 0,0,8,i,10,sel;
	nIndex = ItemSetAdd(kind,genre,detail,parti,level,series,0);
	if(sel == 0) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		101 , 20, 0,
		85 , 120, 0,
		134 , 10, 0,
		88 , 3, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 1) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		85 , 120, 0,
		103 , 25, 0,
		88 , 3, 0,
		134 , 10, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 2) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		89 , 120, 0,
		102 , 20, 0,
		88 , 3, 0,
		110 , 30, 0,
		85 , 120, 0,
		99 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	elseif(sel == 3) then
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		106 , 30, 0,
		89 , 120, 0,
		104 , 20, 0,
		85 , 120, 0,
		98 , 15, 0,
		0 , 0, 0,
		0 , 0, 0;
	else
		type1 , value1_1, value1_3,
		type2 , value2_1, value2_3,
		type3 , value3_1, value3_3,
		type4 , value4_1, value4_3,
		type5 , value5_1, value5_3,
		type6 , value6_1, value6_3,
		type7 , value7_1, value7_3,
		type8 , value8_1, value8_3
	=
		88 , 3, 0,
		105 , 20, 0,
		85 , 120, 0,
		108 , 30, 0,
		89 , 120, 0,
		0 , 0, 0,
		0 , 0, 0,
		0 , 0, 0;
	end
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
	AddItemID(nIndex);
end
end;

function khamtest()
	Say2(PLEASE,2,1,"",
	"Kho∏ng thπch/khoangt",
	"ThÒy tinh/thuytinht",
	"Tinh hÂng b∂o thπch/thbtt",
	"Tho∏t/no")
end;

function thuytinht()
	for i=1,12 do
	AddItem(0,3,random(13,15),0,0,5,0,0)
	end
end;

function thbtt()
	for i=1,6 do
	AddItem(0,3,20,0,0,5,0,0)
	end
end;

function khoangt()
	Say2(PLEASE,7,1,"",
	"ß∏ hi÷n 1/selkhoang",
	"ß∏ »n 1/selkhoang",
	"ß∏ hi÷n 2/selkhoang",
	"ß∏ »n 2/selkhoang",
	"ß∏ hi÷n 3/selkhoang",
	"ß∏ »n 3/selkhoang",
	"Tho∏t/no")
end;

function selkhoang(sel)
	local nSel = sel + 1;
	if(nSel == 1 or nSel == 3 or nSel == 5) then
	AddItem(0,3,nSel,0,0,5,10,0)--da hien
	else
		for i=0,4 do
		AddItem(0,3,nSel,0,0,i,10,0)--da an
		end
	end
end;

--Script Created by Ken Nguyen
--bach cau hoan 120
SKILLEXP_ARRAY=
{
	{"��i Th�a Nh� Lai Ch� ",709},
	{"��o H� Thi�n",708},
	{"B� Nguy�t Ph�t Tr�n",712},
	{"Ng� Tuy�t �n",713},
	{"M� �nh Tung",710},
	{"H�p Tinh Y�m",711},
	{"H�n Thi�n Kh� C�ng",714},
	{"Ma �m Ph� Ph�ch",715},
	{"Xu�t � B�t Nhi�m",716},
	{"L��ng Nghi Ch�n Kh� ",717}
};

function useitem(nItemIndex)
	if(luyen120() == 1) then
		RemoveItem(nItemIndex,1)
	end
end;

function luyen120()
	local lv;
	for i=1, getn(SKILLEXP_ARRAY) do
		lv = GetMagicLevel(SKILLEXP_ARRAY[i][2]);
		if(lv > 0) then
			if(lv >= 20) then
			return 2 end
			AddSkillExp(SKILLEXP_ARRAY[i][2],10000000)
		return  1 end
	end
	return 0
end

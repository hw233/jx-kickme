--Script Created by Ken Nguyen
--bi kip 120
SKILL120_ARRAY=
{
	{"��i Th�a Nh� Lai Ch� ",709},
	{"��o H� Thi�n",708},
	{"M� �nh Tung",710},
	{"H�p Tinh Y�m",711},
	{"B� Nguy�t Ph�t Tr�n",712},
	{"Ng� Tuy�t �n",713},
	{"H�n Thi�n Kh� C�ng",714},
	{"Ma �m Ph� Ph�ch",715},
	{"Xu�t � B�t Nhi�m",716},
	{"L��ng Nghi Ch�n Kh� ",717}
};

function useitem(nItemIndex)
	local lv;
	for i=1, getn(SKILL120_ARRAY) do
		lv = GetMagicLevel(SKILL120_ARRAY[i][2]);
		if(lv >= 0) then
			Msg2Player("B�n �� h�c tuy�t k� 120 tr��c ��y r�i!")
		return end
	end
	if(GetLevel() < 120) then
			Msg2Player("��ng c�p c�a b�n ch�a �� �� l�nh h�i tuy�t k�!")
	return end
	local nFac = GetFactionNo();
	if(nFac < 0 or nFac > 9) then
	return end;
	AddMagic(SKILL120_ARRAY[nFac+1][2],1);
	Msg2Player(format("B�n �� l�nh h�i ���c tuy�t k� %s",SKILL120_ARRAY[nFac+1][1]));
    RemoveItem(nItemIndex,1)
end;

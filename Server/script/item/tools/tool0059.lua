--Script Created by Ken Nguyen
--bi kip 120
SKILL120_ARRAY=
{
	{"§¹i Thõa Nh­ Lai Chó ",709},
	{"§¶o H­ Thiªn",708},
	{"Mª ¶nh Tung",710},
	{"HÊp Tinh YÓm",711},
	{"BÕ NguyÖt PhÊt TrÇn",712},
	{"Ngù TuyÕt Èn",713},
	{"Hçn Thiªn KhÝ C«ng",714},
	{"Ma ¢m PhÖ Ph¸ch",715},
	{"XuÊt ø BÊt NhiÔm",716},
	{"L­ìng Nghi Ch©n KhÝ ",717}
};

function useitem(nItemIndex)
	local lv;
	for i=1, getn(SKILL120_ARRAY) do
		lv = GetMagicLevel(SKILL120_ARRAY[i][2]);
		if(lv >= 0) then
			Msg2Player("B¹n ®· häc tuyÖt kü 120 tr­íc ®©y råi!")
		return end
	end
	if(GetLevel() < 120) then
			Msg2Player("§¼ng cÊp cña b¹n ch­a ®ñ ®Ó lÜnh héi tuyÖt kü!")
	return end
	local nFac = GetFactionNo();
	if(nFac < 0 or nFac > 9) then
	return end;
	AddMagic(SKILL120_ARRAY[nFac+1][2],1);
	Msg2Player(format("B¹n ®· lÜnh héi ®­îc tuyÖt kü %s",SKILL120_ARRAY[nFac+1][1]));
    RemoveItem(nItemIndex,1)
end;

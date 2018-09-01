--Script Created by Ken Nguyen
--bach cau hoan 120
SKILLEXP_ARRAY=
{
	{"§¹i Thõa Nh­ Lai Chó ",709},
	{"§¶o H­ Thiªn",708},
	{"BÕ NguyÖt PhÊt TrÇn",712},
	{"Ngù TuyÕt Èn",713},
	{"Mª ¶nh Tung",710},
	{"HÊp Tinh YÓm",711},
	{"Hçn Thiªn KhÝ C«ng",714},
	{"Ma ¢m PhÖ Ph¸ch",715},
	{"XuÊt ø BÊt NhiÔm",716},
	{"L­ìng Nghi Ch©n KhÝ ",717}
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

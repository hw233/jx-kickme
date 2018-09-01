
-- Script vat pham bi kip thuy yen
Include("\\Script\\library\\worldlibrary.lua");

function useitem(nItemIdx)
	if (GetFactionEx() ~= "CB") then
		Msg2Player("B¹n xem qua mËt tÞch nhiÒu lÇn nh­ng kh«ng hiÓu g×!")
	return end
	if(GetLevel() < 80) then
		Msg2Player("§¼ng cÊp ch­a ®¹t 80 kh«ng thÓ lÜnh héi!")
	return end
	if(GetMagicLevel(357) > 0) then
		Msg2Player("B¹n ®· tõng häc vâ c«ng nµy råi!")
	return end
	RemoveItem(nItemIdx, 1)
	AddMagic(357,1)
	Msg2Player("LÜnh héi ®­îc kü n¨ng Phi Long T¹i Thiªn!")
end;

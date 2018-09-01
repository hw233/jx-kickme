
function add505()
		CastSkill(505, 1 )	--È«ÌåÑ£ÔÎ
		Msg2Player("<#> B¹n sö dông 1<color=yellow> Tam Thanh Khİ, khiÕn kÎ ®Şch quanh b¹n bŞ cho¸ng.")	
end

function add506()
		CastSkill(506, 1 )	--È«Ìå±ù¶³
		Msg2Player("<#> B¹n sö dông 1<color=yellow> Tam Thanh Khİ, khiÕn kÎ ®Şch quanh b¹n bŞ ®ãng b¨ng.")	
end

function add507()
		CastSkill(507, 1 )	--È«ÌåÖĞ¶¾
		Msg2Player("<#> B¹n sö dông 1<color=yellow> Tam Thanh Khİ, khiÕn kÎ ®Şch quanh b¹n bŞ tróng ®éc.")	
end

function add508()
		CastSkill(508, 1 )	--È«Ìå¼õËÙ
		Msg2Player("<#> B¹n sö dông 1<color=yellow> Tam Thanh Khİ, khiÕn kÎ ®Şch quanh b¹n bŞ gi¶m tèc.")	
end

Tab={add505,add506,add507,add508}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

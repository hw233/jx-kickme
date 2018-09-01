
function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--Íæ¼Ò»ñµÃÊÜÉË¶¯×÷¼õÉÙ
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thä th­¬ng "..(level*10).."<#> %")	
end

function add467()
		local level = random(1,4);
		AddSkillState(467, level, 1080 )	--Íæ¼Ò»ñµÃÖĞ¶¾Ê±¼ä¼õÉÙ
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thêi gian tróng ®éc: "..(level*10).."<#> %")	
end

Tab={add466,add467}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

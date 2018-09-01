
function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--Íæ¼Ò»ñµÃÊÜÉË¶¯×÷¼õÉÙ
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thä th­¬ng "..(level*10).."<#> %")	
end

function add469()
		local level = random(1,4);
		AddSkillState(469, level, 1080 )	--Íæ¼Ò»ñµÃÑ£ÔÎÊ±¼ä¼õÉÙ
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thêi gian bŞ cho¸ng: "..(level*10).."<#> %")	
end

Tab={add466,add469}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end



function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(476, level, 1080 )	--Ôö¼ÓÍæ¼Ò»ğ·À
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> t¨ng phßng háa trong 1 phót "..(level*10).."<#> %")	
end

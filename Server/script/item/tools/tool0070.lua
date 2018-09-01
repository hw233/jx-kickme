
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(473, level, 1080 )	--Ôö¼ÓÍæ¼ÒÆÕ·À
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> t¨ng phßng phæ trong 1 phót "..(level*10).."<#> %")	
end


function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(477, level, 1080 )	--Ôö¼ÓÍæ¼ÒÀ×·À
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> t¨ng phßng l«i trong 1 phót "..(level*10).."<#> %")	
end

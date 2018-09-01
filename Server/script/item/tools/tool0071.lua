
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(475, level, 1080 )	--Ôö¼ÓÍæ¼Ò±ù·À
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> t¨ng phßng b¨ng trong 1 phót "..(level*10).."<#> %")	
end

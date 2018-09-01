
function useitem(nItemIndex)
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--Íæ¼Ò»ñµÃÊÜÉË¶¯×÷¼õÉÙ
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thä th­¬ng "..(level*10).."<#> %")
end

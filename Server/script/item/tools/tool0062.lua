
function useitem(nItemIndex)
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--玩家获得受伤动作减少
		Msg2Player("B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th� thng "..(level*10).."<#> %")	
end

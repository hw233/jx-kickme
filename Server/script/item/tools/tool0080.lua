
function useitem(nItemIndex)
		local level = random(10,20);
		AddSkillState(495, level, 1080 )	--玩家获得增加命中率
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g  t蕁 c玭g ch輓h x竎 trong 1 ph髏 "..(level*10).."<#> %")	
end

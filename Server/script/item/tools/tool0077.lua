
function useitem(nItemIndex)
		local level = random(1,3);
		AddSkillState(493, level, 1080 )	--玩家获得增加跑速
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g t鑓  di chuy觧 trong 1 ph髏 "..(level*10).."<#> %")	
end

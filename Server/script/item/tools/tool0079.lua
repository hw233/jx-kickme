
function useitem(nItemIndex)
		local level = random(1,2);
		AddSkillState(496, level, 1080 )	--玩家获得武功出招动作速度增加
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ng t竎 xu蕋 chi猽 trong 1 ph髏 "..(level*10).."<#> %")	
end

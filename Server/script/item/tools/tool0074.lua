
function add481()
		local level = random(10,20);
		AddSkillState(481, level, 1080 )	--增加玩家内冰伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> B╪g s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add486()
		local level = random(1,10);
		AddSkillState(486, level, 1080 )	--增加玩家外冰伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> B╪g s竧 ngo筰 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

Tab={add481,add486}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

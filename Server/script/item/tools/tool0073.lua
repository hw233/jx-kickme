function add480()
		local level = random(1,5);
		AddSkillState(480, level, 1080 )	--增加玩家内毒伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> чc s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add485()
		local level = random(1,5);
		AddSkillState(485, level, 1080 )	--增加玩家外毒伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> чc s竧 ngo筰 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

Tab={add480,add485}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

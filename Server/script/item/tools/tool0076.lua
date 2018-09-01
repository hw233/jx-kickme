
function add483()
		local level = random(10,20);
		AddSkillState(483, level, 1080 )	--增加玩家内雷伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> L玦 s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add499()
		local level = random(10,30);
		AddSkillState(499, level, 1080 )	--增加玩家外雷伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> L玦 s竧 ngo筰 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

Tab={add483,add499}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


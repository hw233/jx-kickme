
function add482()
		local level = random(10,20);
		AddSkillState(482, level, 1080 )	--增加玩家内火伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> H醓 s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add498()
		local level = random(10,30);
		AddSkillState(498, level, 1080 )	--增加玩家外火伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> H醓 s竧 ngo筰 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

Tab={add482,add498}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

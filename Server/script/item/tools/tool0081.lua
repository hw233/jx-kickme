
function add462()
		local level = random(2,10);
		AddSkillState(462, level, 12 )	--增加玩家血量
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> h錳 ph鬰 sinh l鵦 trong n鯽 gi﹜ "..(level*500).."<#> 甶觤")	
end


function add463()
		local level = random(2,10);
		AddSkillState(463, level, 12 )	--增加玩家内力
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> h錳 ph鬰 n閕 l鵦 trong n鯽 gi﹜ "..(level*500).."<#> 甶觤")	
end

function add464()
		local level = random(1,10);
		AddSkillState(464, level, 540 )	--增加玩家血量持续恢复
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 30 gi﹜ h錳 ph鬰 sinh l鵦, h錳 ph鬰 m鏸 n鯽 gi﹜ "..(level*100).."<#> 甶觤")	
end

function add465()
		local level = random(1,10);
		AddSkillState(465, level, 540 )	--增加玩家内力持续回复
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 30 gi﹜ h錳 ph鬰 n閕 l鵦, h錳 ph鬰 m鏸 n鯽 gi﹜ "..(level*100).."<#> 甶觤")	
end

function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th� thng "..(level*10).."<#> %")	
end

function add467()
		local level = random(1,4);
		AddSkillState(467, level, 1080 )	--玩家获得中毒时间减少
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th阨 gian tr髇g c: "..(level*10).."<#> %")	
end

function add468()
		local level = random(1,4);
		AddSkillState(468, level, 1080 )
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th阨 gian l祄 ch薽: "..(level*10).."<#> %")	
end

function add469()
		local level = random(1,4);
		AddSkillState(469, level, 1080 )	--玩家获得眩晕时间减少
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th阨 gian b� cho竛g: "..(level*10).."<#> %")	
end

function add471()
		local level = random(2,10);
		AddSkillState(471, level, 12 )	--增加玩家血量和内力
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> h錳 ph鬰 sinh l鵦 trong n鯽 gi﹜ "..(level*500).."<#> 甶觤 v� h錳 ph鬰 n閕 l鵦 trong n鯽 gi﹜"..(level*500).."<#> 甶觤")	
end

function add472()
		local level = random(1,10);
		AddSkillState(472, level, 540 )	--增加玩家血量和内力持续恢复
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 30 gi﹜ h錳 ph鬰 sinh l鵦, h錳 ph鬰 m鏸 n鯽 gi﹜ "..(level*100).."<#> 甶觤 v� 30 gi﹜ h錳 ph鬰 n閕 l鵦, h錳 ph鬰 m鏸 n鯽 gi﹜"..(level*100).."<#> 甶觤")	
end

function add473()
		local level = random(1,7);
		AddSkillState(473, level, 1080 )	--增加玩家普防
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ph遪g ph� trong 1 ph髏 "..(level*10).."<#> %")	
end

function add474()
		local level = random(1,7);
		AddSkillState(474, level, 1080 )	--增加玩家毒防
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ph遪g c trong 1 ph髏 "..(level*10).."<#> %")	
end

function add475()
		local level = random(1,7);
		AddSkillState(475, level, 1080 )	--增加玩家冰防
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ph遪g b╪g trong 1 ph髏 "..(level*10).."<#> %")	
end

function add476()
		local level = random(1,7);
		AddSkillState(476, level, 1080 )	--增加玩家火防
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ph遪g h醓 trong 1 ph髏 "..(level*10).."<#> %")	
end

function add477()
		local level = random(1,7);
		AddSkillState(477, level, 1080 )	--增加玩家雷防
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ph遪g l玦 trong 1 ph髏 "..(level*10).."<#> %")	
end

function add478()
		local level = random(1,4);
		AddSkillState(478, level, 1080 )	--增加玩家全抗
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g kh竛g t輓h trong 1 ph髏 "..(level*10).."<#> %")	
end

function add479()
		local level = random(10,20);
		AddSkillState(479, level, 1080 )	--增加玩家内普伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> s竧 thng v藅 l� n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add480()
		local level = random(1,5);
		AddSkillState(480, level, 1080 )	--增加玩家内毒伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> чc s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add481()
		local level = random(10,20);
		AddSkillState(481, level, 1080 )	--增加玩家内冰伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> B╪g s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add482()
		local level = random(10,20);
		AddSkillState(482, level, 1080 )	--增加玩家内火伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> Ho� s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add483()
		local level = random(10,20);
		AddSkillState(483, level, 1080 )	--增加玩家内雷伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> L玦 s竧 n閕 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add485()
		local level = random(1,5);
		AddSkillState(485, level, 1080 )	--增加玩家外毒伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> чc s竧 ngo筰 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add486()
		local level = random(1,4);
		AddSkillState(486, level, 1080 )	--增加玩家外冰伤害
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> B╪g s竧 ngo筰 c玭g trong 1 ph髏 t╪g: "..(level*10).."<#> 甶觤")	
end

function add487()
		local level = random(5,10);
		AddSkillState(487, level, 1080 )	--增加玩家外普伤害百分比
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> s竧 thng v藅 l� ngo筰 c玭g trong 1 ph髏 t╪g "..(level*10).."<#> %")	
end

function add488()
		local level = random(10,20);
		AddSkillState(488, level, 1080 )	--增加玩家血量上限
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow>m鴆 sinh l鵦 trong 1 ph髏 t╪g: "..(level*100).."<#> 甶觤")	
end

function add489()
		local level = random(10,20);
		AddSkillState(489, level, 1080 )	--增加玩家内力上限
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow>m鴆 n閕 l鵦 trong 1 ph髏 t╪g: "..(level*100).."<#> 甶觤")	
end

function add490()
		local level = random(10,20);
		AddSkillState(490, level, 540 )	--增加玩家血量和内力上限
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 30 gi﹜ m鴆 n閕 l鵦 t╪g: "..(level*100).."<#> 甶觤 v� trong 30 gi﹜ m鴆 n閕 l鵦 t╪g:"..(level*100).."<#> 甶觤")	
end

function add493()
		local level = random(1,3);
		AddSkillState(493, level, 1080 )	--玩家获得增加跑速
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g t鑓  di chuy觧 trong 1 ph髏 "..(level*10).."<#> %")	
end

function add495()
		local level = random(10,20);
		AddSkillState(495, level, 1080 )	--玩家获得增加跑速
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g  t蕁 c玭g ch輓h x竎 trong 1 ph髏 "..(level*10).."<#> %")	
end

function add496()
		local level = random(1,2);
		AddSkillState(496, level, 1080 )	--玩家获得增加跑速
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> t╪g ng t竎 xu蕋 chi猽 trong 1 ph髏 "..(level*10).."<#> %")	
end

Tab={add462,add463,add464,add465,add466,add467,add468,add469,add471,add472,add473,add474,add475,add476,add477,add478,add479,add480,add481,add482,add483,add485,add486,add487,add488,add489,add490,add493,add495,add496}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

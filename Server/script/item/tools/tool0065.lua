
function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thä th­¬ng "..(level*10).."<#> %")	
end

function add468()
		local level = random(1,4);
		AddSkillState(468, level, 1080 )
		Msg2Player("<#> B¹n nhËn ®­îc <color=yellow> 1 phót gi¶m thêi gian lµm chËm :"..(level*10).."<#> %")	
end
Tab={add466,add468}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end



function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th� th��ng "..(level*10).."<#> %")	
end

function add468()
		local level = random(1,4);
		AddSkillState(468, level, 1080 )
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th�i gian l�m ch�m :"..(level*10).."<#> %")	
end
Tab={add466,add468}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


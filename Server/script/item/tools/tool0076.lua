
function add483()
		local level = random(10,20);
		AddSkillState(483, level, 1080 )	--������������˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> L�i s�t n�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

function add499()
		local level = random(10,30);
		AddSkillState(499, level, 1080 )	--������������˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> L�i s�t ngo�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

Tab={add483,add499}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


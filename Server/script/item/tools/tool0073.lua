function add480()
		local level = random(1,5);
		AddSkillState(480, level, 1080 )	--��������ڶ��˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> ��c s�t n�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

function add485()
		local level = random(1,5);
		AddSkillState(485, level, 1080 )	--��������ⶾ�˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> ��c s�t ngo�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

Tab={add480,add485}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


function add481()
		local level = random(10,20);
		AddSkillState(481, level, 1080 )	--��������ڱ��˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> B�ng s�t n�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

function add486()
		local level = random(1,10);
		AddSkillState(486, level, 1080 )	--�����������˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> B�ng s�t ngo�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

Tab={add481,add486}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

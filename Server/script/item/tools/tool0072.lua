
function add479()
		local level = random(10,20);
		AddSkillState(479, level, 1080 )	--������������˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> s�t th��ng v�t l� n�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

function add487()
		local level = random(5,10);
		AddSkillState(487, level, 1080 )	--������������˺��ٷֱ�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> s�t th��ng v�t l� ngo�i c�ng trong 1 ph�t t�ng "..(level*10).."<#> %")	
end

Tab={add479,add487}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


function add482()
		local level = random(10,20);
		AddSkillState(482, level, 1080 )	--��������ڻ��˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> H�a s�t n�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

function add498()
		local level = random(10,30);
		AddSkillState(498, level, 1080 )	--�����������˺�
		Msg2Player("<#> B�n nh�n ���c <color=yellow> H�a s�t ngo�i c�ng trong 1 ph�t t�ng: "..(level*10).."<#> �i�m")	
end

Tab={add482,add498}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--��һ�����˶�������
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th� th��ng "..(level*10).."<#> %")	
end

function add469()
		local level = random(1,4);
		AddSkillState(469, level, 1080 )	--��һ��ѣ��ʱ�����
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th�i gian b� cho�ng: "..(level*10).."<#> %")	
end

Tab={add466,add469}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


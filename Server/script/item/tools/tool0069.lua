
function useitem(nItemIndex)
		local level = random(1,7);
		AddSkillState(476, level, 1080 )	--������һ��
		Msg2Player("<#> B�n nh�n ���c <color=yellow> t�ng ph�ng h�a trong 1 ph�t "..(level*10).."<#> %")	
end
